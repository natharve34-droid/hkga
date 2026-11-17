# hkga — Christmas Golf

A phone-friendly web app for organising a Christmas golf tournament among friends:
players, dates & availability, format recommendations, teams, tee times, scores,
side competitions and the money/prize pool.

- **Use it:** open the GitHub Pages site for this repo (or open `index.html` locally).
- **Single file:** everything lives in `index.html` — plain HTML/CSS/JS, no build step.
- **Saving:** data is kept in the browser (localStorage) until you go online.
- **Live online mode:** the site is connected to this repo's Supabase project
  (`BUILTIN_CLOUD` in `index.html`; run `supabase-setup.sql` once in its SQL Editor).
  Go to Overview → Play online → **Put this tournament online**, then share the link
  it gives you; players need no accounts. The publishable key is public by design.
- **Hosting:** served by GitHub Pages from the `gh-pages` branch (`.nojekyll` disables Jekyll).
