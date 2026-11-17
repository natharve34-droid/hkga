-- Christmas Golf: run this once in Supabase → SQL Editor → New query → Run.
-- One table holds every tournament. Each tournament has a long random id that
-- only appears in the link you share, so players need no accounts.

create table if not exists public.docs (
  t          text not null check (length(t) between 10 and 40),  -- tournament id from the link
  path       text not null,                                       -- e.g. main/players, scores/<id>
  data       jsonb,                                               -- {"v": "<json>"}, null = deleted
  updated_at timestamptz not null default now(),
  primary key (t, path)
);

alter table public.docs enable row level security;

-- The app uses the public (publishable/anon) key, so allow read, add and update.
-- No delete policy: rows are never removed, only blanked, so nobody can wipe the table.
drop policy if exists "read docs"   on public.docs;
drop policy if exists "add docs"    on public.docs;
drop policy if exists "update docs" on public.docs;
create policy "read docs"   on public.docs for select to anon, authenticated using (true);
create policy "add docs"    on public.docs for insert to anon, authenticated with check (true);
create policy "update docs" on public.docs for update to anon, authenticated using (true) with check (true);

grant select, insert, update on public.docs to anon, authenticated;

-- Turn on live updates for this table.
do $$ begin
  alter publication supabase_realtime add table public.docs;
exception when duplicate_object then null; end $$;
