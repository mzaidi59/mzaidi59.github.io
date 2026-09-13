# mzaidi59.github.io

Single-file homepage, replacing the old jemdoc site. No build step, no JS framework — just `index.html` with the CSS inlined in the `<head>`. Fonts (Source Serif 4, IBM Plex Sans, IBM Plex Mono) load from Google Fonts.

## Adding images

Drop images into `images/` using these filenames — the page already links to them and will just start showing them once the files exist. Nothing else to edit.

Featured papers (larger, ~700px wide is plenty; PNG or JPG):
- `images/sparse-logit-sampling.png`
- `images/transformers-get-stable.png`

Publication list thumbnails (square-ish, ~200x200px source is plenty since they're displayed at 84x84):
- `images/sparse-logit-sampling-thumb.png`
- `images/transformers-get-stable-thumb.png`
- `images/fie-thumb.png`
- `images/cross-modal-thumb.png`
- `images/monotonic-attention-thumb.png`
- `images/multi-task-thumb.png`
- `images/re-translation-thumb.png`
- `images/iwslt-e2e-thumb.png`
- `images/iwslt-offline-thumb.png`
- `images/tvsd-thumb.png`

If a file is missing, that image (or thumbnail slot) just disappears — the layout doesn't break, so you can add these gradually.

## CV

Put your CV PDF at `docs/resume.pdf` (the "CV" link in the header points there, same path as the old site).

## Editing content

Everything is plain text in `index.html`:
- Header tagline and links: `<header class="hero">`
- About paragraph: `<section class="about">`
- The two featured papers: `<section class="research">` — each is one `<article class="paper">` block
- The "Currently:" line: `<p class="current-focus">`
- Full publication list: `<section class="publications">` — each entry is one `<li class="pub">`

## Deploying on GitHub Pages

If this repo is already `mzaidi59.github.io`, just commit `index.html` (and `images/`, `docs/`) to the default branch — GitHub Pages will serve it automatically at the same URL, no settings changes needed.
