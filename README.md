# hkga — Christmas Golf

A phone-friendly web app for organising a Christmas golf tournament among friends:
players, dates & availability, format recommendations, teams, tee times, scores,
side competitions and the money/prize pool.

- **Use it:** open the GitHub Pages site for this repo (or open `index.html` locally).
- **Single file:** everything lives in `index.html` — plain HTML/CSS/JS, no build step.
- **Saving:** data is kept in the browser (localStorage) until you go online.
- **Live online mode:** connect a free Supabase project (Overview → Play online).
  Run `supabase-setup.sql` once in Supabase → SQL Editor, then paste the project URL
  and publishable key into the app and click **Put this tournament online**.
  Share the link it gives you; players need no accounts.
- **Hosting:** served by GitHub Pages from the `gh-pages` branch (`.nojekyll` disables Jekyll).
