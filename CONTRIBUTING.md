# Contributing to Pukapuka Archive

This is a static site. Each browser keeps its own copy of the collection. GitHub Pages does not sync edits between people automatically.

## Safe workflow

1. Open the live site or your local `index.html`.
2. Make your edits. The archive saves into this browser as you go.
3. Before you stop, download **↓** (JSON backup) and **Save HTML copy**.
4. To publish for everyone:
   - Replace `index.html` and `Pohewa-Pahewa.html` in the repo with your saved HTML copy, **or**
   - Import your JSON backup into a fresh copy of the current live file using **Merge**, then Save HTML copy and commit that file.
5. Open a pull request / push to `main`.

## Do not

- Replace the live file with a smaller collection unless that is intentional.
- Clear site data in the browser without downloading a backup first.
- Import a JSON backup with **Replace** if you only meant to add books — choose **Merge**.

## Recovery

- **Restore** brings back an earlier save kept in this browser.
- If the page ever looks empty, try Restore, then Import a JSON backup, then open a saved HTML copy.
- The site refuses to wipe a large collection with a much smaller one on load; it merges instead.
