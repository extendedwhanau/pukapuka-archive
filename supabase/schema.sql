-- Pukapuka Archive — shared collection (open link editing)
-- Paste into the Supabase SQL editor, then create no extra steps beyond the covers bucket insert below.

create table if not exists public.books (
  id text primary key,
  title text not null default '',
  author text,
  year text,
  designer text,
  curatorial_notes text,
  verification text,
  image_source text,
  source_workbook text,
  source_sheet text,
  source_cell text,
  tags jsonb not null default '{}'::jsonb,
  reviewed boolean not null default false,
  image text,
  updated_at timestamptz not null default now()
);

create index if not exists books_updated_at_idx on public.books (updated_at desc);
create index if not exists books_title_idx on public.books (title);

alter table public.books enable row level security;

drop policy if exists "books_public_select" on public.books;
drop policy if exists "books_public_insert" on public.books;
drop policy if exists "books_public_update" on public.books;
drop policy if exists "books_public_delete" on public.books;

create policy "books_public_select" on public.books for select using (true);
create policy "books_public_insert" on public.books for insert with check (true);
create policy "books_public_update" on public.books for update using (true) with check (true);
create policy "books_public_delete" on public.books for delete using (true);

-- Public cover images (anyone with the site link can upload/replace/delete)
insert into storage.buckets (id, name, public)
values ('covers', 'covers', true)
on conflict (id) do update set public = excluded.public;

drop policy if exists "covers_public_select" on storage.objects;
drop policy if exists "covers_public_insert" on storage.objects;
drop policy if exists "covers_public_update" on storage.objects;
drop policy if exists "covers_public_delete" on storage.objects;

create policy "covers_public_select"
  on storage.objects for select
  using (bucket_id = 'covers');

create policy "covers_public_insert"
  on storage.objects for insert
  with check (bucket_id = 'covers');

create policy "covers_public_update"
  on storage.objects for update
  using (bucket_id = 'covers')
  with check (bucket_id = 'covers');

create policy "covers_public_delete"
  on storage.objects for delete
  using (bucket_id = 'covers');

-- Favourites
alter table public.books add column if not exists favourite boolean not null default false;
