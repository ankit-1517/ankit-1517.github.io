# ankit-1517.github.io

Personal site & tech blog for **Ankit Kumar**, built with [Jekyll](https://jekyllrb.com/) and the
[Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) theme. Hosted free on GitHub Pages and
built/deployed automatically via GitHub Actions.

Live: <https://ankit-1517.github.io/>

## Structure

- `_config.yml` — site config (title, social links, analytics).
- `_tabs/about.md` — portfolio: experience, education, skills, publications, honors.
- `_tabs/projects.md` — curated projects.
- `_posts/` — blog posts (one Markdown file per post).
- `assets/` — images (`assets/img/avatar.jpg`) and `assets/resume.pdf`.
- `.github/workflows/pages-deploy.yml` — builds and deploys on every push.

## Write a new blog post

1. Create `_posts/YYYY-MM-DD-my-title.md` (copy an existing post as a template).
2. Add front matter:
   ```yaml
   ---
   title: "My title"
   date: 2026-07-20 12:00:00 +0530
   categories: [Topic, Subtopic]
   tags: [tag-one, tag-two]   # lowercase
   ---
   ```
3. Write Markdown; drop images in `assets/`.
4. `git add -A && git commit -m "post: my title" && git push` — Actions rebuilds and publishes in a
   couple of minutes.

## Page-view counts

Per-post view counts come from [GoatCounter](https://www.goatcounter.com/) (free for personal use),
configured under `analytics.goatcounter` and `pageviews.provider` in `_config.yml`.

> **Setup:** sign up at goatcounter.com and set your site code as `analytics.goatcounter.id`
> (currently `ankit-1517`, i.e. `ankit-1517.goatcounter.com`). Counts render on each post once live.

## Local preview (optional)

Needs Ruby 3.x + Bundler:

```bash
bundle install
bundle exec jekyll serve   # http://localhost:4000
```

(View counts only appear on the deployed site, not locally.)
