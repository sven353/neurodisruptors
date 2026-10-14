# Neurodisruptors V2

Phase 1 rebuild of [neurodisruptors.com](https://www.neurodisruptors.com): information architecture, navigation and site skeleton for founders, CEOs, boards and HR buyers.

Plain HTML, CSS and vanilla JS. No build step, no dependencies, no third-party requests (fonts are self-hosted).

## Structure

```
index.html                 One-page site: hero, #sparring, #workshops, #framework (+ #book), #about (+ #research), #connect
privacy-policy/            Privacy policy (ported from V1, updated)
legal-notice/              LSSI legal notice (complete the NIF and registry lines)
thanks/                    Contact form confirmation (Netlify Forms redirect target)
404.html                   Not found page (Netlify and GitHub Pages both pick it up)
about/, executive-coaching/, speaking-workshops/, ...   Legacy V1 URLs, redirect stubs
_redirects                 Netlify 301s for the legacy V1 URLs
netlify.toml               Security and cache headers
CNAME, .nojekyll           GitHub Pages
assets/css/main.css        All styles, tokens at the top
assets/js/main.js          Mobile drawer, focus trap, Esc, section highlighting, form preselect
assets/fonts/              Inter (variable) and Instrument Serif, woff2, OFL licences included
assets/img/                Favicon, touch icon, Open Graph image
```

## Run locally

```
python3 -m http.server 8080
```

Then open http://localhost:8080. Use a server rather than opening the file directly, because asset paths are root-relative.

## Deploy

Netlify: connect the repo, publish directory `.`, no build command. The contact form is picked up automatically by Netlify Forms (`name="conversation"`). Turn on email notifications under Site settings, Forms.

GitHub Pages: works as is, including the legacy redirects (via the stub pages). Netlify Forms does not run on GitHub Pages, so the form needs another endpoint there (Formspree or similar: change the form `action`).

## Changelog

- Phase 2 (14 Oct 2026): new hero (headline, sub-headline, dual CTA), institutional proof bar, dual-track overview (#tracks) for founders and for boards. Spiky profile figure shows from 960px up.
- Phase 1 (14 Oct 2026): four-link navigation, mobile drawer, single-page skeleton, footer, legal pages, legacy redirects.

## Open items before go-live

- Legal notice: add NIF/CIF and registry details (highlighted in yellow on the page).
- Contact form: confirm the hosting (Netlify Forms) or swap the endpoint.
- Calendly: the event slug still reads `free-15-minute-adhd-strategy-snapshot-call`.
- Portrait for the About section.
- Proof bar claims: confirm the IE collaboration and the 100+ founders figure before launch.
