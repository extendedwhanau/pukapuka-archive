# Contributing to Pukapuka Archive

## Shared archive (preferred)

With Supabase configured on the live site, edits save for **everyone** automatically.

1. Open https://extendedwhanau.github.io/pukapuka-archive/
2. Edit books, tags, and covers as usual.
3. Wait for the status **Saved for everyone**.
4. Optionally download **↓** as your own backup.

You do **not** need to commit HTML to publish ordinary book edits once Supabase is live.

## First-time Supabase setup

1. Create a Supabase project.
2. Run [`supabase/schema.sql`](supabase/schema.sql) in the SQL editor (creates `books`, open RLS, and the public `covers` bucket).
3. Set `SUPABASE_URL` and `SUPABASE_ANON_KEY` in `index.html` / `Pohewa-Pahewa.html`.
4. Push to `main`. The first load migrates the embedded collection into Supabase.

The anon key is public by design. Policies allow anyone with the link to read and write. If that becomes a problem, switch to authenticated editors later.

## Without Supabase (browser-only)

Each browser keeps its own copy. To publish for everyone the old way:

1. Edit locally or on the live page.
2. Download **↓** and **Save HTML copy**.
3. Merge into the repo files (prefer **Merge** on JSON import), then push `main`.

## Do not

- Clear site data without a backup if you still rely on browser-only saves.
- Import a JSON backup with **Replace** when you only meant to add books — choose **Merge**.
- Commit a much smaller collection over the live HTML unless that is intentional.

## Recovery

- **Restore** brings back an earlier browser save.
- Re-import a JSON backup or open a saved HTML copy.
- If Supabase has good data but your browser looks wrong, hard-refresh; the shared archive wins on load when configured.
