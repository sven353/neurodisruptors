# Neurodisruptors — static site

Plain HTML/CSS/JS rebuild of neurodisruptors.com, off Wix. No build step, no framework — every page is a plain `.html` file you can open and edit directly.

## What's here

```
index.html                        Home (includes former "Spiky Profile" content)
about/                             Dr. Sven Mulfinger — bio, credentials, Person schema
executive-coaching/                Coaching offer + discovery-call CTA
speaking-workshops/                Keynotes/workshops offer + inquiry form
concepts/                          Framework glossary + FAQ (FAQPage schema)
the-non-linear-operating-system/   Book landing page + early-copy signup, Book schema
registration/                      Registration form
free-webinars/                     Free Webinars
adhd-resources/                    ADHD Resources (includes former "Not Just Me" page)
gallery/                           Non-Linear Thinking Gallery
research/                          Research & PhD
team/                              Team
privacy-policy/                    Privacy Policy
cookie-policy/                     Cookie Policy
404.html                           Custom not-found page
robots.txt                         Explicitly allows AI crawlers (GPTBot, ClaudeBot, etc.)
llms.txt                           Plain-English site summary for AI systems
sitemap.xml                        Full page list for Search Console / Bing Webmaster
assets/css/style.css               Shared stylesheet
assets/js/main.js                  Mobile nav toggle
assets/img/                        Images (see step 1 below — you need to populate this)
scripts/download-assets.sh         One-time script to pull images from Wix's CDN
_redirects                         Netlify redirect rules for the old Wix URLs
```

Two pages from the old site were folded into others rather than kept standalone (per your call to trim): **Spiky Profile** → merged into Home, **Not Just Me** → merged into ADHD Resources. The `_redirects` file sends any old links to those URLs to the right new place, so nothing 404s.

### New: five pages built from your book

Following the AI-discoverability strategy doc, five new pages went in: `/about/`, `/executive-coaching/`, `/speaking-workshops/`, `/concepts/`, and `/the-non-linear-operating-system/`. They carry Person, Service, Book, and FAQPage structured data (JSON-LD) so AI systems and search engines have an unambiguous signal linking your name to the frameworks in your book. Content is adapted from the clean, readable sections of the manuscript (a chunk of the PDF has a broken font encoding that scrambles copy-pasted text — most of the book read fine, some chapter-opener pages didn't).

**Update:** the bio on `/about/` has since been rewritten against your actual site, mulfinger.com (the initial draft was based only on the book manuscript, which had some unreliable text encoding). It now reflects your real timeline — engineering degree, PhD in Biotech Engineering, five exited startups, Kuma Partners, Stralea, Vistage Chair, ADHD diagnosis at 50 — and the Person schema lists mulfinger.com and kuma.partners under `sameAs` so search engines and AI systems tie both sites to the same person. The page also explains the relationship between the two sites: mulfinger.com for general executive coaching and Vistage groups, Neurodisruptors for the neurodivergence-specific work.

**Still worth checking:**
- Coaching/workshop pricing isn't listed anywhere on purpose — add it if you want it public, or leave it for the discovery call.
- The book page has no advance-praise quotes yet — the manuscript's endorsement page didn't decode cleanly enough for me to be confident about exact names and titles. Drop in real quotes once you have final text.
- A **4th Formspree form** is now needed for `speaking-workshops/`, on top of the 3 from before, and a **5th** for the book's early-copy signup on `the-non-linear-operating-system/` — same YOUR_FORM_ID swap as below.
- I couldn't fetch your LinkedIn profile directly (it needs a login to render), so nothing from it made it into the copy — worth a manual read-through to see if anything there should be reflected too.

## 1. Download the images (do this first, on your own computer)

This site's images still live on Wix's media CDN (`static.wixstatic.com`). That CDN was unreachable from the sandbox this was built in, so the images couldn't be downloaded automatically — but it's a normal public CDN and will work fine from your own machine.

Open Terminal, `cd` into this folder, and run:

```bash
bash scripts/download-assets.sh
```

This pulls every image the site references into `assets/img/`. Do this **before Wix's plan expires on Sept 15** — once the account is fully down, there's a real chance these URLs stop resolving.

One thing worth knowing: the Gallery page includes photos of public figures (actors, athletes, historical figures) that were already on the live Wix site. Rehosting them doesn't change the legal picture from what's already live today, but it's worth being aware of if you ever want to tighten that up — swapping in your own illustrations or removing the photo grid is a clean option later.

## 2. Wire up the five forms (Formspree)

Registration, ADHD Resources ("share a resource"), Research & PhD, Speaking & Workshops, and the book's early-copy signup each have a form. They now point at placeholder Formspree URLs that need real IDs:

1. Go to [formspree.io](https://formspree.io) and create a free account.
2. Create a new form for each page (or share one form across the community-facing ones and keep Speaking & Workshops separate — that's the one worth routing to a distinct inbox, since it's business inquiries, not community signups).
3. Formspree gives you a URL like `https://formspree.io/f/abc12345`.
4. In each of these 5 files, replace `YOUR_FORM_ID` in the `<form action="...">` line with your real ID:
   - `registration/index.html`
   - `adhd-resources/index.html`
   - `research/index.html`
   - `speaking-workshops/index.html`
   - `the-non-linear-operating-system/index.html`

Submissions land in your email by default; Formspree's dashboard also lets you export or connect integrations.

## 3. Push this to GitHub

Your repo is already created and empty: `github.com/sven353/neurodisruptors`.

Put the **contents of this folder** (not the folder itself) at the root of that repo. Easiest paths:

- **GitHub Desktop:** clone `sven353/neurodisruptors`, copy all files from this folder into the cloned folder, commit, push.
- **GitHub web UI:** on the repo page, use "uploading an existing file" and drag every file/folder in.

Either way, `index.html` should end up directly at the repo root, not inside a `site/` subfolder.

## 4. Deploy (Netlify, recommended)

1. Sign up at [netlify.com](https://netlify.com) with your GitHub account.
2. "Add new site" → "Import an existing project" → pick `sven353/neurodisruptors`.
3. Build command: leave blank. Publish directory: leave as `/` (repo root).
4. Deploy. You'll get a temporary `*.netlify.app` URL to test everything first.

Vercel or GitHub Pages work the same way for a static site like this if you'd rather use one of those.

## 5. Point your domain at it

1. In Netlify: Site settings → Domain management → Add custom domain → `neurodisruptors.com` (and `www.neurodisruptors.com`).
2. Netlify will show you the DNS records to set (usually an A record for the apex domain and a CNAME for `www`).
3. Go to wherever your domain's DNS is actually managed — check whether that's Wix Domains or an external registrar, since that determines where you make this change — and update those records.
4. DNS changes can take a few hours to propagate. Netlify auto-issues an HTTPS certificate once it sees the domain pointing at it.

## 6. Once the new site is confirmed live

Test every page and form on the live domain, then in your Wix dashboard you can safely cancel/let the plan expire on Sept 15 — the domain itself keeps working since DNS now points to Netlify, not Wix's servers.

## Making future edits

Every page is plain HTML with a shared stylesheet — no build step. Edit a file, commit, push to GitHub, and Netlify redeploys automatically within a minute or two. To add a new page: copy an existing folder (e.g. `team/`), rename it, edit the content, and add a link to it in the `<nav>` block on every other page.
