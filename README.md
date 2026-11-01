# Pukapuka Archive

Exhibition archive of Māori book covers.

**Live site:** https://extendedwhanau.github.io/pukapuka-archive/

## Shared editing (Supabase)

When Supabase is configured, everyone on the live link loads and saves the **same** collection.

1. Create a free [Supabase](https://supabase.com) project.
2. In the SQL editor, run [`supabase/schema.sql`](supabase/schema.sql).
3. In Project Settings → API, copy the **Project URL** and **anon public** key.
4. Paste them into `index.html` (and `Pohewa-Pahewa.html`) as `SUPABASE_URL` and `SUPABASE_ANON_KEY`.
5. Commit and push. The first visit with keys set will publish the embedded collection (covers upload to Storage).

Anyone with the link can edit. Keep **↓** / **Save HTML copy** for backups if something goes wrong.

If the keys are empty, the app still works with **this browser only** (previous behaviour).

## Backups

- **↓** — JSON backup  
- **Save HTML copy** — full portable page  
- JSON import supports **merge** to combine collections  

See [CONTRIBUTING.md](CONTRIBUTING.md).

Open `index.html` or `Pohewa-Pahewa.html` locally if you prefer.
