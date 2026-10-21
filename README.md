# Neurodisruptors V2

Phase 1 rebuild of [neurodisruptors.com](https://neurodisruptors.com): information architecture, navigation and site skeleton for founders, CEOs, boards and HR buyers.

Plain HTML, CSS and vanilla JS. No build step, no dependencies, no third-party requests (fonts are self-hosted).

## Structure

```
index.html                 One-page site: hero, #sparring, #workshops, #framework (+ #book), #about (+ #research), #connect
privacy-policy/            Privacy policy (controller: Sven Mulfinger)
legal-notice/              LSSI legal notice
good-day-bad-day/          Self-reflection prompt page (prompt text lives in the page builder; edit both together)
thanks/                    Contact form confirmation (Netlify Forms redirect target)
404.html                   Not found page (Netlify and GitHub Pages both pick it up)
about/, executive-coaching/, speaking-workshops/, ...   Legacy V1 URLs, redirect stubs (12). Needed on GitHub Pages;
                           on Netlify the _redirects 301! rules win, so the stubs can be deleted once Netlify is confirmed
_redirects                 Netlify 301s for the legacy V1 URLs
netlify.toml               Security and cache headers
CNAME, .nojekyll           GitHub Pages
assets/css/main.css        All styles, tokens at the top; the design layer (corners, gradients, icons, reveal) sits at the end
assets/js/main.js          Mobile drawer, focus trap, Esc, section highlighting, form preselect, short dropdown labels on phones, scroll reveal
assets/fonts/              Inter (variable) and Instrument Serif, woff2, OFL licences included
assets/img/                Favicon, touch icon, Open Graph image, 512px logo (schema)
                           sven-session-800/1200.webp, sven-session.jpg: About photo. sven-mulfinger.webp/.jpg: headshot used in the Person schema
                           Source images kept for later, not yet used: team-sven-mulfinger.png (portrait source),
                           book-nonlinear-os.png (book cover), logo-square-2026.png (V1 brain logo; clashes with the
                           V2 no-brain-imagery direction). Compress before use, they are 1.4 to 2.6 MB each.
llms.txt                   Plain-language site summary for AI assistants and answer engines
```

## Releasing CSS or JS changes

main.css and main.js are loaded with a release tag (main.css?v=2026102103, bumped for each release). Change the tag on every release that touches either file, on all pages (ASSET_V in the page builder and design_build.py). netlify.toml also tells browsers to re-check both files on every visit, so a stale stylesheet can no longer survive a release.

## Editing the FAQ

The visible FAQ (#faq) and the FAQPage answers in the JSON-LD must match word for word. Closed, each item shows only its question. Each schema answer is the first paragraph of the opened answer (.faq__preview) followed by the detail paragraph, or search engines and AI answer engines treat the structured data as unreliable. If you change a question or answer in the HTML, make the same change in the JSON-LD block in the <head>.

## Netlify checklist (domain)

Domain management: set neurodisruptors.com as the primary domain. The www address (www dot neurodisruptors.com) should then answer with a 301 to https://neurodisruptors.com/. Every canonical and Open Graph URL on the site points at the apex, so the apex must be the address that serves the site directly.

## Netlify checklist (form submissions)

A 404 page after submitting the form, while GET /thanks/ works, means Netlify did not treat the POST as a form submission. Check in this order:

1. Site configuration, Build and deploy, Continuous deployment: the site is linked to github.com/sven353/neurodisruptors, branch main, publish directory `.` (the repo root), no build command. If the live site lags behind the repo, this link is missing or builds are failing or paused.
2. Forms: click Enable form detection if it is shown.
3. Deploys: Trigger deploy, Clear cache and deploy site. The deploy summary should list the form "conversation".
4. Send one test inquiry from the live site. It should land on /thanks/ and appear under Forms, Active forms, conversation. Then set up email notifications there.

## Form notifications: if an inquiry email does not arrive

1. Forms, conversation: open the form and look at Verified submissions. If the test is there, the form works and the problem is the email. If it is not there, switch to Spam submissions. If it is in neither list, the submission was rejected before storage (honeypot filled, or form detection not active on that deploy).
2. A submission in Spam never triggers a notification. Mark it as verified, and use realistic content for tests (Akismet flags "test", "asdf" and repeated identical messages).
3. Forms, Submission notifications: the email notification must point at this form (or "any form") and at the right address. Netlify sends from formresponses@netlify.com; replies go to the sender's email.
4. Google Workspace (kuma.partners mail runs on smtp.google.com): search All Mail and Spam for from:formresponses@netlify.com. If an admin quarantine is active, check admin.google.com, Reporting, Email log search. Add a Gmail filter for from:formresponses@netlify.com with "Never send it to Spam".
5. Redundancy: add a second email notification to an address on another domain, plus an outgoing webhook (Zapier, Make or n8n) that posts each inquiry to Slack or HubSpot. Netlify's own forum has open reports of verified submissions where no email was ever sent, so do not rely on email alone.

## Applying a release from a zip

Uploading a zip through GitHub's web interface adds and overwrites files but never deletes them. To make the repo match a release exactly, run this in your local clone:

```
git rm -r -q .
unzip -q ~/Downloads/neurodisruptors-v2.zip -d ../nd-release && cp -R ../nd-release/neurodisruptors-v2/. . && rm -rf ../nd-release
git add -A
git status            # review: deletions, additions, modifications
git commit -m "Release"
git push
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

- Spiky profile explainer and print fix (21 Oct 2026): "A spiky profile, whatever you call it." opens #framework (id spiky-profile): neurodivergence as the umbrella term, tags for ADHD, autism, giftedness, dyslexia, dyspraxia, dyscalculia and twice-exceptional (2e), good day and bad day framing, clinical line, link to the prompt page. New FAQ "Is this about ADHD?" (seven questions now, schema mirrored). llms.txt and Organization knowsAbout name the profiles. Print and Save as PDF now keep colours, show every block, print accent words in solid colour, load lazy images first and hide the share box. Built by intro_build.py.

- About rebuilt (21 Oct 2026): session photo (responsive webp 800/1200px with jpg fallback, metadata stripped) beside a shorter bio; the facts table became a three-line strip (location, languages, Kuma Partners) plus Connect on LinkedIn; academic collaborations now a quiet row of three named professors under the section. The headshot stays as the Person image in the structured data. Built by about_build.py.

- Share this site (21 Oct 2026): a share block at the top of the footer on every page ("Know a founder or colleague who would recognise this?") with WhatsApp, LinkedIn, email and Copy link, plus the phone's own share sheet where available. Plain links, no third-party scripts or tracking. The shared link always points to the homepage, so the card shows og-preview.png with the site title.

- Design pass (21 Oct 2026): soft 20px corners and light shadows on every card and panel; Apple-style gradient glows on the dark bands, the radar panel and the hero; gradient proof strip, book panel and accent words; 21 custom line icons (proof bar, tracks, sparring, formats, milestones, About facts, research, connect); short scroll reveal (fade and 14px rise, 70ms stagger, off for reduced motion and without JavaScript); slimmer header once scrolled; portrait in About; radar shown on phones under the CTAs; on desktop the radar labels replace the ten-item list; FAQ closed shows only the questions. Cache fix: versioned CSS and JS plus must-revalidate headers, because a 7-day cache had served the old stylesheet to returning visitors.

- Self-reflection prompt (21 Oct 2026): new page /good-day-bad-day/ with a non-clinical prompt for the reader's own AI assistant, a prominent "Not a medical diagnosis" notice (see a doctor if unwell, 112 in a crisis), a copy button and a sparring call to action. Linked from #framework, sitemap.xml and llms.txt. Subpage canonicals now end in a trailing slash.
- Social metadata (16 Oct 2026): every page shares one metadata block (title, meta title, description, canonical, full Open Graph and Twitter card set). New dark og-preview.png (1200x630) replaces og-image.png. All absolute URLs (canonical, OG, schema, sitemap, robots, llms.txt) now use the apex https://neurodisruptors.com; set it as the primary domain in Netlify so www redirects to it.
- Framework and FAQ (16 Oct 2026): #framework now shows a labelled Spiky Profile map (5 spikes, 5 valleys, dashed flat baseline; text labels on desktop, numbered markers plus legend on mobile), an operational contrast table and a scope note. FAQ rebuilt as six native details/summary items; question and first sentence always visible; the FAQPage schema mirrors the full answers. The JavaScript accordion was removed.
- Editorial update (16 Oct 2026): hero lead grounded in executive load; CTAs now "Apply for Private Sparring" and "Request Enterprise Proposal" (both preselect the form); Track A states the retainer model; formats renamed to Asymmetric Minds in the C-Suite and Bridging the Founder-Board Interface (cards, schema, llms.txt); new dropdown labels with value board-workshop; research now names IESE and IE Business School (Prof. Dr. Thomas Kluetter, Prof. Dr. Nicolas Deuschel); footer advisory disclaimer on every page.
- Form delivery (15 Oct 2026): honeypot renamed from company_website to bot-field and fully hidden (display none), because the old field sat off-screen where browser autofill could fill it, which makes Netlify silently drop the submission. Added a hidden subject field so notifications arrive as "New inquiry from neurodisruptors.com (id)" without the [Netlify] prefix.
- Form confirmation fix (15 Oct 2026): /thanks/ copy updated ("Inquiry received."), Return to Homepage and Connect on LinkedIn buttons, font preloads on every subpage. _redirects audited: no rule can catch /thanks/, /privacy-policy/ or /legal-notice/. Site wording switched from enquiry to inquiry. The live 404 after submit comes from Netlify settings, see the checklist below.
- Cleanup (15 Oct 2026): removed V1 clutter (.DS_Store files, scripts/, 41 gallery and 16 leaders photos, unused V1 team photos, logos, illustrations and style.css). Kept three source images for later phases. Added .gitignore. Legacy redirect stubs kept until hosting is confirmed.
- Phase 6 (15 Oct 2026): FAQ rebuilt as six book-grounded questions in a scan-and-expand pattern (question and one-sentence answer always visible, detail on demand). Accessible accordion: button inside the heading, aria-controls, keyboard support, find-in-page reaches collapsed text. The HTML ships fully open so crawlers and no-JS readers get every answer. FAQPage schema mirrors preview plus detail. Madrid added to the city list.
- Phase 5 (15 Oct 2026): GEO. JSON-LD knowledge graph (WebSite, FAQPage, Organization, Person, two Services, Book) replaces the single ProfessionalService block. New Strategic Context FAQ above #connect. Cities and languages named in the sparring and workshop copy. Added llms.txt and a square logo for the Organization schema.
- Phase 4 (15 Oct 2026): pre-launch. All enquiries now go through the intake form or LinkedIn. Legal notice and privacy policy carry the owner details (Sven Mulfinger, NIF). New /thanks/ confirmation page. One shared metadata block (title, description, Open Graph, Twitter) on every page, generated by the page builder.
- Phase 3 (15 Oct 2026): sparring rebuilt as four executive cards with "Request Sparring Intake"; three signature offers for boards and enterprises; framework now contrasts the flat corporate baseline with the spiky profile plus four milestones (Map, Stress-Test, Scaffold, Translate); intake form tightened with five engagement types. Third-party booking link and the footer medical disclaimer removed (the medical notice stays in the legal notice).
- Phase 2 (14 Oct 2026): new hero (headline, sub-headline, dual CTA), institutional proof bar, dual-track overview (#tracks) for founders and for boards. Spiky profile figure shows from 960px up.
- Phase 1 (14 Oct 2026): four-link navigation, mobile drawer, single-page skeleton, footer, legal pages, legacy redirects.

## Open items before go-live

- Contact form: confirm the hosting (Netlify Forms) or swap the endpoint. After the first deploy, send one test submission so Netlify registers the form, then switch on email notifications.
- Legal notice and privacy policy: confirm the NIF as published (ES4339734W) and that the Impact Hub address and info@stralea.com are still right now that you, not Stralea, are the owner. All three values live in one OWNER block in the page builder.
- Portrait for the About section: source file now in assets/img/team-sven-mulfinger.png.
- Proof bar claims: confirm the IE collaboration and the 100+ founders figure before launch.
