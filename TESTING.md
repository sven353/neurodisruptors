# Verification report

Automated runs on 14 October 2026 with headless Chromium (Playwright), axe-core 4, html-validate and csstree-validator.

## Phase 2: hero, proof bar, dual-track

```
[1 Copy]
  PASS  375px: headline 38px over 5 lines, lead 18px, line-height 1.55
  PASS  375px: lead measure 19em (readable, under 45em)
  PASS  375px: nothing in hero, proof or tracks overflows; page width 375px
  PASS  375px: CTA buttons 52px tall (touch target 44px+)
  PASS  375px: spiky profile figure hidden to keep the fold focused
  PASS  768px: headline 38px over 2 lines, lead 18px, line-height 1.55
  PASS  768px: lead measure 33em (readable, under 45em)
  PASS  768px: nothing in hero, proof or tracks overflows; page width 768px
  PASS  768px: CTA buttons 52px tall (touch target 44px+)
  PASS  768px: spiky profile figure hidden to keep the fold focused
  PASS  Eyebrow reads STRATEGIC SPARRING & COGNITIVE ARCHITECTURE (rendered uppercase)
  PASS  Headline text matches brief
  PASS  Sub-headline matches brief (UK comma style)
  PASS  CTA labels: 'Book Private Sparring' + 'Enterprise & Board Engagements'
  PASS  Primary is solid, secondary is outline
  PASS  Proof bar carries the 3 statements, directly after the hero
  PASS  Dual-track titles and action links
  PASS  1280px: tracks sit side by side in two columns
  PASS  Track A light, Track B dark (contrast pairing)
  PASS  No stock imagery in hero, proof bar or tracks (typography + SVG only)
  PASS  1280px: headline 64px over 4 lines, lead 20px, line-height 1.55
  PASS  1280px: lead measure 29em (readable, under 45em)
  PASS  1280px: nothing in hero, proof or tracks overflows; page width 1280px
  PASS  1280px: CTA buttons 52px tall (touch target 44px+)
  PASS  1280px: both CTAs above the fold (bottom at 712px of 800)
  PASS  1280px: spiky profile figure shown
  PASS  1440px: headline 66px over 4 lines, lead 21px, line-height 1.55
  PASS  1440px: lead measure 28em (readable, under 45em)
  PASS  1440px: nothing in hero, proof or tracks overflows; page width 1440px
  PASS  1440px: CTA buttons 52px tall (touch target 44px+)
  PASS  1440px: both CTAs above the fold (bottom at 720px of 900)
  PASS  1440px: spiky profile figure shown

[2 CTA]
  PASS  html uses scroll-behavior: smooth (falls back to instant with prefers-reduced-motion)
  PASS  'Book Private Sparring' smooth-scrolls to #connect (14 intermediate frames, lands 88px below viewport top, form preset to 'sparring')
  PASS  'Enterprise & Board Engagements' smooth-scrolls to #workshops (14 intermediate frames, lands 88px below viewport top)
  PASS  'Explore 1:1 Sparring' smooth-scrolls to #sparring (9 intermediate frames, lands 88px below viewport top)
  PASS  'Explore Enterprise Programmes' smooth-scrolls to #workshops (15 intermediate frames, lands 88px below viewport top)
  PASS  Reduced motion: scroll becomes instant
  PASS  375px: 'Enterprise & Board Engagements' lands on #workshops (88px)

[3 Assets]
  PASS  CLS 0.001 at 375px with fonts served instantly (Good is under 0.1)
  PASS  CLS 0.023 at 1280px with fonts served instantly (Good is under 0.1)
  PASS  Fonts loaded: Instrument Serif italic, Instrument Serif normal, Inter normal
  PASS  No 4xx/5xx or failed requests
  PASS  CLS 0.001 at 375px with throttled 'Slow 4G' network (fonts arrive after first paint) (Good is under 0.1)
  PASS  CLS 0.023 at 1280px with throttled 'Slow 4G' network (fonts arrive after first paint) (Good is under 0.1)
  PASS  CSS validates (csstree-validator, 0 errors)
  PASS  HTML validates on all 17 pages (html-validate recommended ruleset)

[4 ZIP]
  PASS  Archive passes CRC test
  PASS  Zip contains exactly the working tree (38 files)
  PASS  Every file in the zip is byte-identical to the tested source
  PASS  Entry point, CSS, JS, fonts and deploy files present in zip

51/51 passed
```

## Phase 1 regression

```

[1 Links]
  PASS  No duplicate ids in 404.html
  PASS  No duplicate ids in index.html
  PASS  No duplicate ids in registration/index.html
  PASS  No duplicate ids in team/index.html
  PASS  No duplicate ids in research/index.html
  PASS  No duplicate ids in speaking-workshops/index.html
  PASS  No duplicate ids in adhd-resources/index.html
  PASS  No duplicate ids in the-non-linear-operating-system/index.html
  PASS  No duplicate ids in thanks/index.html
  PASS  No duplicate ids in executive-coaching/index.html
  PASS  No duplicate ids in free-webinars/index.html
  PASS  No duplicate ids in cookie-policy/index.html
  PASS  No duplicate ids in concepts/index.html
  PASS  No duplicate ids in privacy-policy/index.html
  PASS  No duplicate ids in legal-notice/index.html
  PASS  No duplicate ids in gallery/index.html
  PASS  No duplicate ids in about/index.html
  PASS  All internal hrefs/srcs/anchors resolve across 17 HTML files
  PASS  All font files referenced in CSS exist
  PASS  Primary nav has exactly the 4 required links, in order
  PASS  Header CTA reads 'Request a Conversation' and targets #connect
  PASS  Mobile drawer has the same 4 links plus the CTA
  PASS  No links to pruned pages (gallery, webinars, ADHD resources, concepts, registration)
  PASS  Footer columns carry the specified links
  PASS  Footer value proposition text

[3 A11y/DOM]
  PASS  Zero console errors/warnings and page errors on 5 pages

[4 Git]
  PASS  Zero failed or 4xx/5xx asset requests
  PASS  No third-party requests on load (self-contained)
  PASS  Self-hosted fonts load (Inter, Instrument Serif)

[1 Links]
  PASS  Legacy /executive-coaching/ redirects to #sparring
  PASS  Legacy /the-non-linear-operating-system/ redirects to #book
  PASS  Legacy /gallery/ redirects to /

[2 Responsive]
  PASS  375px: hamburger shown, inline nav hidden
  PASS  375px: no horizontal overflow
  PASS  375px: buttons meet 44px touch target
  PASS  375px: drawer closed initially (hidden, aria-expanded=false)
  PASS  375px: toggle opens drawer, label flips, focus moves in, scroll locked
  PASS  375px: drawer shows 5 links (4 nav + CTA)

[3 A11y/DOM]
  PASS  375px: Tab is trapped inside open drawer
  PASS  375px: Esc closes drawer and returns focus to toggle

[2 Responsive]
  PASS  375px: drawer link closes drawer and lands on #framework below header
  PASS  375px to 1280px: open drawer closes on resize to desktop
  PASS  768px: hamburger shown, inline nav hidden
  PASS  768px: no horizontal overflow
  PASS  768px: buttons meet 44px touch target
  PASS  768px: drawer closed initially (hidden, aria-expanded=false)
  PASS  768px: toggle opens drawer, label flips, focus moves in, scroll locked
  PASS  768px: drawer shows 5 links (4 nav + CTA)

[3 A11y/DOM]
  PASS  768px: Tab is trapped inside open drawer
  PASS  768px: Esc closes drawer and returns focus to toggle

[2 Responsive]
  PASS  768px: drawer link closes drawer and lands on #framework below header
  PASS  768px to 1280px: open drawer closes on resize to desktop
  PASS  1280px: inline nav + CTA shown, hamburger hidden
  PASS  1280px: no horizontal overflow
  PASS  1280px: buttons meet 44px touch target

[1 Links]
  PASS  1280px: nav '#sparring' scrolls section to just below sticky header and sets aria-current
  PASS  1280px: nav '#workshops' scrolls section to just below sticky header and sets aria-current
  PASS  1280px: nav '#framework' scrolls section to just below sticky header and sets aria-current
  PASS  1280px: nav '#about' scrolls section to just below sticky header and sets aria-current
  PASS  1280px: CTA lands on #connect
  PASS  'Request an advance copy' preselects 'book' in the form

[3 A11y/DOM]
  PASS  Keyboard Tab order: skip link, brand, 4 nav links, CTA
  PASS  Skip link moves focus to <main>
  PASS  Visible focus ring on keyboard focus
  PASS  ARIA: toggle aria-controls/aria-label, drawer role=dialog aria-modal, labelled nav, single h1
  PASS  axe-core WCAG 2.1 AA + best practice: 0 violations (home, privacy, legal at 1280 and 375)

[4 Git]
  PASS  Entry point and deploy files present
  PASS  No absolute machine paths in source

[Style]
  PASS  No em or en dashes in any file

[4 Git]
  PASS  Repo weight 369 KB, largest file under 1 MB
  PASS  Clean git init, add and commit (38 tracked files)

71/71 passed
```

## Phase 3: offer refinement, friction removal, conversion sections

Run on 15 October 2026 with headless Chromium (Playwright), axe-core 4 and BeautifulSoup. Phase 1 and Phase 2 suites re-run against the Phase 3 build: Phase 1 71/71 passed, Phase 2 51/51 passed.

```
[0 Brief]
  PASS  Third-party booking slug removed from every file in the repo
  PASS  'Not medical advice' gone from homepage and shared footer
  PASS  Medical notice kept inside legal-notice/
  PASS  Passive phrase removed: 'We look at what happens'
  PASS  Passive phrase removed: 'A short assessment and a structured conversation'
  PASS  Passive phrase removed: 'A short first call'
  PASS  Headline #sparring-title
  PASS  Headline #workshops-title
  PASS  Sparring: 4 executive cards with the brief's titles
  PASS  Workshops: 3 signature offerings
  PASS  Framework: Flat Corporate Baseline vs Spiky Profile panels
  PASS  Framework: 4 milestones 01 Map, 02 Stress-Test, 03 Scaffold, 04 Translate
  PASS  Dropdown carries the 5 brief options
  PASS  Context placeholder set
  PASS  Connect subhead matches brief
  PASS  No em or en dashes in page text
  PASS  No serial comma before 'and' in visible copy

[1 Preselect]
  PASS  'Request Sparring Intake' smooth-scrolls to #connect (18 frames, lands 88px) and selects 'Private Sparring (Founder / CEO)'
  PASS  'Request a Speaking / Workshop Proposal' smooth-scrolls to #connect (18 frames, lands 88px) and selects 'Board / Executive Workshop'
  PASS  'Request an advance copy' smooth-scrolls to #connect (16 frames, lands 88px) and selects 'Advance Copy: The Non-Linear Operating System'
  PASS  'Book Private Sparring (hero)' smooth-scrolls to #connect (19 frames, lands 88px) and selects 'Private Sparring (Founder / CEO)'
  PASS  Deep link ?interest=keynote#connect preselects 'Keynote Speaking'
  PASS  Keyboard: after a CTA jump, Tab continues into the form area
  PASS  Zero console errors or warnings during CTA tests

[2 Links]
  PASS  #sparring exists exactly once
  PASS  #workshops exists exactly once
  PASS  #framework exists exactly once
  PASS  #about exists exactly once
  PASS  #connect exists exactly once
  PASS  #book exists exactly once
  PASS  #research exists exactly once
  PASS  All 11 in-page anchor hrefs on the homepage resolve
  PASS  Every '/#anchor' link on subpages and footers resolves on the homepage
  PASS  Footer link /#research from a subpage lands on the target (88px)
  PASS  Footer link /#book from a subpage lands on the target (88px)

[3 Layout]
  PASS  375px: columns cards/offers/contrast/milestones = (1, 1, 1, 1)
  PASS  375px: hierarchy h2 34px > card title 26px > body 17px
  PASS  375px: section padding 80px (generous whitespace, 80px+)
  PASS  375px: dropdown shows longest option in full (214px text in 286px)
  PASS  375px: no element overflows the viewport (page 375px)
  PASS  375px: axe-core WCAG 2.1 AA, colour contrast included: 0 violations
  PASS  768px: columns cards/offers/contrast/milestones = (2, 1, 2, 2)
  PASS  768px: hierarchy h2 35px > card title 26px > body 17px
  PASS  768px: section padding 84px (generous whitespace, 80px+)
  PASS  768px: dropdown shows longest option in full (379px text in 650px)
  PASS  768px: no element overflows the viewport (page 768px)
  PASS  768px: axe-core WCAG 2.1 AA, colour contrast included: 0 violations
  PASS  1280px: columns cards/offers/contrast/milestones = (2, 3, 2, 4)
  PASS  1280px: hierarchy h2 58px > card title 31px > body 17px
  PASS  1280px: section padding 141px (generous whitespace, 80px+)
  PASS  1280px: dropdown shows longest option in full (379px text in 502px)
  PASS  1280px: no element overflows the viewport (page 1280px)
  PASS  1280px: axe-core WCAG 2.1 AA, colour contrast included: 0 violations
  PASS  1440px: columns cards/offers/contrast/milestones = (2, 3, 2, 4)
  PASS  1440px: hierarchy h2 58px > card title 32px > body 17px
  PASS  1440px: section padding 144px (generous whitespace, 80px+)
  PASS  1440px: dropdown shows longest option in full (379px text in 502px)
  PASS  1440px: no element overflows the viewport (page 1440px)
  PASS  1440px: axe-core WCAG 2.1 AA, colour contrast included: 0 violations
  PASS  375px: book option shows 'Advance Copy: The Book' (value still 'book'), full label returns at 1280px
  PASS  Key text contrast 4.5:1 or better: card body 9.81, card number 6.16, offer body 11.18, offer audience 7.76, baseline caption 9.81, spiky caption 12.76, milestone 17.04, form label 11.18, connect list 11.18

[4 Netlify/Git]
  PASS  Exactly one form on the page
  PASS  data-netlify="true" and method POST
  PASS  Hidden form-name input matches form name 'conversation'
  PASS  Honeypot 'company_website' field exists, is off-screen and skipped by keyboard
  PASS  Success redirect '/thanks/' exists
  PASS  All 7 fields carry a name (Netlify only stores named fields)
  PASS  Dropdown values unique and stable for CRM mapping: sparring, workshop, keynote, book, other
  PASS  Required fields: consent, email, name
  PASS  Every visible field has a <label for>
  PASS  Zip passes CRC test
  PASS  Zip matches the tested working tree (38 files)
  PASS  Every file in the zip is byte-identical to the tested source

73/73 passed
```

## Phase 4: pre-launch finalisation

Run on 15 October 2026 with headless Chromium (Playwright), axe-core 4, html-validate, csstree-validator and BeautifulSoup. The form submission runs against a local server that stands in for Netlify Forms: it records the POST and redirects to the form action, as Netlify does. Live Netlify capture is confirmed by one real test submission after deploy.

Regression against the Phase 4 build: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed.

```
[1 Booking link removal]
  PASS  Zero case-insensitive occurrences of the removed booking tool's name across all 38 project files (text and binary)
  PASS  No booking or scheduling links left on the homepage
  PASS  Secondary path reads 'Prefer direct contact?' + 'Message Sven directly on LinkedIn →'
  PASS  Primary path is the intake form: name, email, interest, organisation, message plus consent

[2 Form]
  PASS  data-netlify="true", method POST, name="conversation"
  PASS  Hidden form-name = conversation
  PASS  Honeypot 'company_website' present, tabindex -1, wrapped aria-hidden and off-screen
  PASS  action="/thanks/" points at an existing page
  PASS  Empty submit is blocked by required fields (no POST sent, still on homepage)
  PASS  Submit POSTs to /thanks/ and lands on /thanks/ (/thanks/)
  PASS  Payload: form-name, name, email, interest=workshop, organisation, message, consent=yes
  PASS  Honeypot submitted empty by a human visitor
  PASS  Confirmation shows 'Enquiry received.'
  PASS  Confirmation body: personal review, 24 to 48 hours
  PASS  Secondary links: 'Connect on LinkedIn' + 'Return to Neurodisruptors'
  PASS  'Return to Neurodisruptors' goes back to the homepage
  PASS  /thanks/ is noindex (kept out of search results)

[3 LinkedIn]
  PASS  #connect direct link href = https://www.linkedin.com/in/svenmulfinger
  PASS  /thanks/ 'Connect on LinkedIn' href = https://www.linkedin.com/in/svenmulfinger
  PASS  Every LinkedIn link on the site uses the same profile URL
  PASS  Clicking the #connect link navigates to the LinkedIn profile (request intercepted in test)

[4 DOM]
  PASS  Zero console errors or warnings on 5 pages
  PASS  No broken internal links or anchors on any page
  PASS  No placeholder text or draft markers in any page or stylesheet
  PASS  Draft highlight style (.todo, #fff3c4) removed from CSS
  PASS  Legal notice owner block: Owner Sven Mulfinger; NIF ES4339734W; Address Impact Hub Barcelona, Carrer de Pujades 94-96, 08005 Barcelona, Spain; Email info@stralea.com; Website www.neurodisruptors.com
  PASS  axe-core WCAG 2.1 AA and no horizontal overflow: home, thanks, legal, privacy at 375 and 1280px

[5 Metadata]
  PASS  index.html <title> and meta description match the brief
  PASS  404.html: Open Graph and Twitter tags identical to index.html
  PASS  thanks/index.html: Open Graph and Twitter tags identical to index.html
  PASS  privacy-policy/index.html: Open Graph and Twitter tags identical to index.html
  PASS  legal-notice/index.html: Open Graph and Twitter tags identical to index.html
  PASS  OG and Twitter title/description equal the brief's title and description
  PASS  twitter:card summary_large_image, og:locale en_GB, og:type website
  PASS  OG image exists locally and is 1200x630
  PASS  No serial comma in the meta description (UK style)

[4 DOM]
  PASS  CSS validates (csstree-validator)
  PASS  HTML validates on all 17 pages (html-validate recommended; title length rule relaxed for the brief's 84-character title)

[6 ZIP]
  PASS  Zip passes CRC test
  PASS  Zip contains exactly the tested tree (38 files, dotfiles included)
  PASS  Every file byte-identical to the tested source
  PASS  Zero occurrences of the removed booking tool's name inside the zip itself

42/42 passed
```

## Phase 5: Generative Engine Optimisation (GEO)

Run on 15 October 2026. JSON-LD is parsed as strict JSON, then every type and property is checked against the official schema.org vocabulary (release 29.3, schemaorg-current-https.jsonld from the schemaorg GitHub repository), with class inheritance and value ranges resolved offline. Page checks use headless Chromium (Playwright) and axe-core 4.

Result: zero JSON-LD syntax errors and zero vocabulary errors. Regression against the Phase 5 build: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed.

After deploy, run the live URL through validator.schema.org and Google Rich Results Test as a final external check. Google currently shows FAQ rich results mainly for government and health sites, so the FAQ markup works mainly for AI answer engines and for understanding, rather than for snippets in Google.

```
[1 JSON-LD syntax]
  PASS  All 1 JSON-LD block(s) across the site parse as strict JSON
  PASS  index.html uses @context https://schema.org with an @graph
  PASS  Graph nodes: WebSite, FAQPage, Organization, Person, Service, Service, Book
  PASS  No '</' sequence inside the JSON-LD that could close the script tag early

[2 schema.org vocabulary]
  PASS  Every type and all 122 properties exist in schema.org 29.3 and are valid for their type (inheritance resolved)
  PASS  Every nested object's type falls within the property's declared range
  PASS  No superseded types or properties
  PASS  Info: properties schema.org still tags as 'pending' (adoption phase, not deprecated): creativeWorkStatus, credentialCategory, hasCredential, jobTitle, knowsAbout, knowsLanguage, provider

[3 Graph integrity]
  PASS  7 @id nodes, all unique
  PASS  All 15 @id references resolve inside the graph
  PASS  Person and Organization point at each other (founder / worksFor)
  PASS  Both Services and the Book link to the graph (provider / author)
  PASS  Person: Dr. prefix, PhD credential, IESE affiliation, languages en/es/de/fr, LinkedIn sameAs
  PASS  Organization: Barcelona address, areaServed Europe plus 5 cities, knowsAbout covers ADHD in the C-suite and the Spiky Profile Framework
  PASS  All 14 own-domain URLs in the schema point at real files or page anchors
  PASS  Organization logo is a dedicated square image (512x512), not the social banner

[4 FAQ]
  PASS  4 visible Q&A pairs, each identical to the FAQPage schema (question and answer text)
  PASS  Covers the 4 intents: sparring vs coaching, Spiky Profile, board/HR formats, geography and languages
  PASS  #faq sits directly above #connect (section order: hero, hero, tracks, sparring, workshops, framework, about, faq, connect)
  PASS  Heading outline in #faq: one h2 then four h3

[5 Entities]
  PASS  City 'Barcelona' in visible body text (5x)
  PASS  City 'London' in visible body text (2x)
  PASS  City 'Berlin' in visible body text (2x)
  PASS  City 'Paris' in visible body text (2x)
  PASS  City 'Zurich' in visible body text (2x)
  PASS  Language 'English' in visible body text (4x)
  PASS  Language 'Spanish' in visible body text (4x)
  PASS  Language 'German' in visible body text (4x)
  PASS  Language 'French' in visible body text (4x)
  PASS  Languages named in the sparring and workshop sections themselves (where buyers decide)
  PASS  Key entities co-occur in body text: IESE Business School 4x, Dr. Sven Mulfinger 5x, Spiky Profile 6x
  PASS  llms.txt present with 10 site links, all resolving
  PASS  robots.txt allows all crawlers, AI search bots included (no Disallow rules)

[6 Page]
  PASS  375px: FAQ in 1 column(s), no overflow, 0 axe violations, 0 console errors, browser parses 7 graph nodes
  PASS  768px: FAQ in 1 column(s), no overflow, 0 axe violations, 0 console errors, browser parses 7 graph nodes
  PASS  1280px: FAQ in 2 column(s), no overflow, 0 axe violations, 0 console errors, browser parses 7 graph nodes
  PASS  No em or en dashes in page, schema or llms.txt
  PASS  No serial comma before 'and' in page copy, schema or llms.txt
  PASS  UK spelling in new copy (specialising, organisation)

39/39 passed
```

## Phase 6: scan-and-expand FAQ

Run on 15 October 2026 with headless Chromium (Playwright), axe-core 4 and the schema.org 29.3 vocabulary. Regression against the Phase 6 build: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 (GEO schema, updated for six items) 40/40 passed.

```
[1 Markup]
  PASS  6 FAQ items, each: h3 > button, preview paragraph, detail region
  PASS  No heading nested inside a button (the proposed markup's validity bug)
  PASS  Detail regions use the native <section> element (no role=region on a div)
  PASS  aria-controls and aria-labelledby wire each button to its own region
  PASS  Shipped HTML is fully open: aria-expanded=true and no hidden attribute (crawlers and no-JS readers get every answer)
  PASS  Every preview is one complete sentence that answers the question on its own
  PASS  Entity binding in the FAQ: Sven, IESE, the book, Spiky Profile, ADHD, giftedness, dyslexia, Barcelona, four languages
  PASS  House style in FAQ copy: no em/en dashes, no serial comma, no 'not X; it is Y'

[2 Behaviour]
  PASS  After JS: all 6 collapsed (aria-expanded=false, detail hidden='until-found'), previews still visible
  PASS  Click opens item 1 (aria-expanded=true, region 132px tall)
  PASS  Second click closes it again
  PASS  Keyboard: Enter opens, Space closes (native button semantics)
  PASS  Items open independently (several can stay open for comparison)
  PASS  Keyboard Tab lands on the next toggle with a visible focus ring (faq-q4 solid)
  PASS  Find-in-page: collapsed detail uses hidden='until-found' and opens on beforematch
  PASS  Scan hierarchy: question 28px > preview 17px >= detail 16px
  PASS  Zero console errors or warnings

[3 No-JS]
  PASS  JavaScript disabled: all 6 detail paragraphs render visibly

[4 Layout]
  PASS  375px: collapsed FAQ 2124px, all open 3645px (42% less to scan), no overflow, toggles 45px tall, 0 axe violations with all open
  PASS  768px: collapsed FAQ 1581px, all open 2415px (35% less to scan), no overflow, toggles 45px tall, 0 axe violations with all open
  PASS  1280px: collapsed FAQ 1676px, all open 2458px (32% less to scan), no overflow, toggles 45px tall, 0 axe violations with all open

21/21 passed
```

## Repository cleanup

Run on 15 October 2026 against a fresh clone of github.com/sven353/neurodisruptors (commit 12b32fa). The apply procedure in the README was replayed on a copy of that clone to confirm exactly which files git deletes, adds and changes. All site suites were re-run on the clean tree: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, Phase 6 21/21 passed.

```
[1 Removed]
  PASS  No .DS_Store anywhere
  PASS  scripts/ gone
  PASS  assets/img/gallery/ (41 photos) and assets/img/leaders/ (16 photos) gone
  PASS  V1 stylesheet assets/css/style.css gone
  PASS  30 unused V1 top-level images removed (team photos of others, V1 logos, illustrations)

[2 Kept]
  PASS  20 core production files byte-identical to the live repo (untouched), llms.txt included
  PASS  Images used by V2 unchanged: favicon, touch icon, OG image, schema logo
  PASS  Kept for later, byte-identical to originals: portrait, book cover, 2026 square logo (renamed without spaces)
  PASS  Font licence files kept (OFL requires them alongside the fonts)
  PASS  .gitignore contains .DS_Store, Thumbs.db, *.log, node_modules/ (.DS_Store, Thumbs.db, *.log, node_modules/, .netlify/)

[3 Redirects]
  PASS  _redirects has a 301! rule for all 12 legacy paths, with and without trailing slash (24 rules)
  PASS  Every rule is a forced 301
  PASS  Every redirect target exists (homepage anchors and /privacy-policy/#cookies)
  PASS  12 stub folders kept (hosting not confirmed) and each points at the same target as its Netlify rule

[4 References]
  PASS  All 132 local references in HTML, CSS and JS resolve inside the clean tree
  PASS  No reference to any removed V1 file

[5 Apply simulation]
  PASS  git sees 92 deletions, exactly the obsolete V1 files
  PASS  git sees additions/renames only for .gitignore, .nojekyll and the renamed logo: ['.gitignore', '.nojekyll', 'assets/img/Neurodisruptors logo square transparent 2026.png -> assets/img/logo-square-2026.png']
  PASS  Modified files: ['README.md'] (README.md only, plus TESTING.md once the report is appended)
  PASS  After apply, the working tree equals the release tree file for file
  PASS  Commit succeeds
  PASS  Working tree shrinks from 40.8 MB to 6.1 MB (133 to 43 files)

[6 ZIP]
  PASS  Zip passes CRC test
  PASS  Zip equals the clean tree (43 files, dotfiles included)
  PASS  No .DS_Store, __MACOSX or Thumbs.db inside the zip
  PASS  Every file byte-identical to the tested tree

26/26 passed
```

## Form confirmation route (/thanks/)

Run on 15 October 2026. _redirects is evaluated with Netlify semantics (top to bottom, first match wins, ! forces). The POST runs against a local stand-in for Netlify Forms. Regression: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, Phase 6 21/21 passed.

```
[1 _redirects audit]
  PASS  24 rules in _redirects, none in netlify.toml ([[redirects]] absent)
  PASS  No splat (*) or placeholder (:name) rules that could catch unrelated paths
  PASS  No rule matches /thanks, /thanks/, /privacy-policy/, /legal-notice/, /404.html or /
  PASS  No rule targets the root or a 404 stub for any thanks path
  PASS  All 12 legacy paths still 301 to their V2 targets (with and without trailing slash)
  PASS  Forced (!) rules only apply to legacy paths, never to real V2 directories

[2 /thanks/ page]
  PASS  thanks/index.html exists at the exact path the form action points to (action="/thanks/")
  PASS  <meta name="robots" content="noindex">
  PASS  Self-hosted font preloads: instrument-serif-latin-400.woff2, inter-latin-var.woff2
  PASS  main.css and main.js referenced and present
  PASS  Site header (4-link nav, CTA, mobile drawer) and footer included
  PASS  Status: 'Inquiry received.'
  PASS  Lead message matches brief
  PASS  Buttons: [('Return to Homepage', '/'), ('Connect on LinkedIn', 'https://www.linkedin.com/in/svenmulfinger')]

[3 POST flow]
  PASS  1280px: POST /thanks/ with form-name=conversation then lands on /thanks/ showing 'Inquiry received.'
  PASS  1280px: confirmation page renders with site fonts, no overflow, 0 axe violations, 0 console errors
  PASS  1280px: 'Return to Homepage' goes to /
  PASS  375px: POST /thanks/ with form-name=conversation then lands on /thanks/ showing 'Inquiry received.'
  PASS  375px: confirmation page renders with site fonts, no overflow, 0 axe violations, 0 console errors
  PASS  375px: 'Return to Homepage' goes to /

[4 Live vs repo (diagnosis)]
  PASS  Repo HEAD /thanks/ heading is 'Enquiry received.' while the live site still serves 'Thank you.' (Phase 3 build): Netlify is not publishing current pushes

21/21 passed
```

## Form delivery and notifications

Run on 15 October 2026. The honeypot exposure check serves the live repo (commit b971805) and the new build side by side in headless Chromium. Regression: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, Phase 6 21/21 passed, /thanks/ suite 21/21 passed.

```
[1 Form audit]
  PASS  Exactly one form: name="conversation", method="POST", action="/thanks/", data-netlify="true"
  PASS  <input type="hidden" name="form-name" value="conversation"> is the first field
  PASS  netlify-honeypot="bot-field" matches exactly one input with that name
  PASS  Every field carries a name: form-name, subject, bot-field, name, email, interest, organisation, message, consent
  PASS  Field name="email" (type=email) present, so Netlify sets Reply-to to the sender
  PASS  Custom notification subject: "New inquiry from neurodisruptors.com (%{submissionId})" with data-remove-prefix
  PASS  Honeypot name "bot-field" contains no word browser autofill associates with a profile field

[2 Honeypot exposure]
  PASS  Live repo honeypot "company_website": rendered in layout=True, focusable=True (off-screen, so reachable by autofill)
  PASS  New honeypot "bot-field": rendered=False, display=none, focusable=False (autofill and keyboard cannot reach it)
  PASS  Keyboard Tab order through the form never lands on the honeypot

[3 Submission]
  PASS  POST /thanks/ lands on /thanks/ with form-name=conversation
  PASS  Payload carries subject "New inquiry from neurodisruptors.com (%{submissionId})", all six named fields and an empty honeypot

[4 Validity]
  PASS  index.html validates with the new hidden fields (html-validate)
  PASS  No other page carries a form Netlify could mistake for a second form

14/14 passed
```

## Editorial update (16 October 2026)

Copy, CTA, dropdown, research and footer changes from the positioning audit. Expectations in the older suites were updated to the new copy (hero lead, CTA labels, track links now preselecting the form, board-workshop value, renamed formats, IE affiliation). Results on the final build:

```
Phase 1 71/71 passed
Phase 2 51/51 passed
Phase 3 70/70 passed
Phase 4 38/38 passed
Phase 5 (GEO schema) 40/40 passed
Phase 6 (FAQ) 21/21 passed
/thanks/ and redirects 21/21 passed
Form delivery 14/14 passed
```

## Spiky Profile map, contrast table and native FAQ (16 October 2026)

The Phase 6 accordion suite is retired: its markup no longer exists. Its checks are replaced by the suite below, which covers the native details/summary FAQ. Phase 3 and Phase 5 expectations were pointed at the new structure. Results on the final build: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, /thanks/ 21/21 passed, form delivery 14/14 passed.

```
[1 Map]
  PASS  Labelled radar sits inside #framework .framework__visual
  PASS  10 axis labels in the SVG, 5 spikes and 5 valleys, names exactly as briefed
  PASS  Real-text legend groups the same 10 dimensions (screen readers and mobile)
  PASS  SVG has role=img with title and a description naming every dimension
  PASS  Dashed flat corporate baseline drawn and explained in the key

[2 Table and note]
  PASS  Real <table> with caption and 4 column headers: ['Cognitive Dimension', 'Natural Spike (High Leverage)', 'Operating Valley (Systemic Friction)', 'Executive Scaffolding Required']
  PASS  3 rows with row headers: Systemic Synthesis, Crisis Hyperfocus, Relational Intuition
  PASS  Cells carry the briefed content (spike, valley, scaffolding)
  PASS  Every cell has a data-label for the stacked mobile layout
  PASS  Scope note directly below the table: operational map, no assessment or diagnosis

[3 FAQ]
  PASS  6 native <details class="faq-item"> with <summary class="faq-summary">, no JavaScript accordion
  PASS  All closed by default; question and first sentence sit inside <summary> so they stay visible
  PASS  The 6 briefed questions, in order
  PASS  Each visible first sentence is one complete, self-contained answer (bottom line up front)
  PASS  Exactly one FAQPage in the page's JSON-LD (no duplicate block)
  PASS  Schema questions and full answers match the visible text word for word
  PASS  Research answer names IESE and IE Business School; no 'Carlos III', no 'hundreds of engagements'
  PASS  House style in new copy: no em dash, no serial comma, UK spelling

[4 Behaviour]
  PASS  1280px: 10 text labels on the radar at 13.1px, none clipped, no page overflow
  PASS  Click opens and closes a FAQ item (native details)
  PASS  Keyboard: Enter opens, Space closes
  PASS  Visible keyboard focus ring on the summary (solid faq-4)
  PASS  Closed state shows every question and first sentence, hides only the detail
  PASS  1280px: 0 axe violations with all FAQ items open, 0 console errors
  PASS  768px: 10 text labels on the radar at 15.6px, none clipped, no page overflow
  PASS  768px: 0 axe violations with all FAQ items open, 0 console errors
  PASS  375px: 10 numbered markers on the radar at 11.5px, none clipped, no page overflow
  PASS  375px: table rows stack as blocks (block) with visible column labels
  PASS  375px: 0 axe violations with all FAQ items open, 0 console errors

[5 Validity]
  PASS  index.html validates (heading inside summary is permitted)
  PASS  main.css validates; old .contrast and accordion rules removed

31/31 passed
```

## Social metadata and Open Graph (16 October 2026)

Scraper view: tags are read from the raw HTML without JavaScript, as LinkedIn, WhatsApp, Slack and X do. Regression on the final build: Phase 1 71/71 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, /thanks/ 21/21 passed, form delivery 14/14 passed, framework and FAQ 31/31 passed.

```
[1 index.html head]
  PASS  <title> as briefed
  PASS  Canonical is https://neurodisruptors.com/
  PASS  All 20 metadata tags present exactly once with the briefed values
  PASS  No duplicate meta tags
  PASS  Metadata sits before any script, so scrapers that read only the first KB still see it
  PASS  Info: meta description is 178 characters (Google shows about 155 to 160 on desktop)

[2 All pages]
  PASS  5 content pages carry the same Open Graph and Twitter set and an apex canonical
  PASS  No legacy or V1 preview references (www host, og-image.png, hero-share, V1 descriptions)
  PASS  Old og-image.png removed from the repo

[3 og-preview.png]
  PASS  File exists at the URL path, PNG, 1200x630 (1.91:1)
  PASS  87 KB: under WhatsApp's roughly 300 KB preview limit and LinkedIn's 5 MB
  PASS  Dark background as specified (corner pixel #111111)
  PASS  Wordmark area contains light text on the dark ground

[4 Absolute URLs]
  PASS  JSON-LD: 26 own URLs, all on the apex; image points to og-preview.png
  PASS  sitemap.xml: 3 URLs on the apex; robots.txt points to the apex sitemap
  PASS  llms.txt links use the apex
  PASS  CNAME (GitHub Pages fallback) names the apex
  PASS  HTML validates on every page

18/18 passed
```

## Self-reflection prompt page (21 October 2026)

Includes a real clipboard check: the copied text must equal the published prompt character for character. Regression on the final build: Phase 1 72/72 passed, Phase 2 51/51 passed, Phase 3 70/70 passed, Phase 4 38/38 passed, Phase 5 40/40 passed, /thanks/ 21/21 passed, form delivery 14/14 passed, framework and FAQ 31/31 passed, social metadata 18/18 passed.

```
[1 Notice]
  PASS  Notice titled 'Not a medical diagnosis' with role=note
  PASS  States it is not a formal medical, psychological or psychiatric assessment and diagnoses no condition
  PASS  Tells readers who feel unwell to see a doctor or qualified health professional
  PASS  Crisis line: local emergency number, 112 across the EU
  PASS  Clarifies the answers come from an AI system, not from Dr. Sven Mulfinger or a clinician
  PASS  Notice comes before the prompt in reading order (['notice', 'prompt'])

[2 Prompt]
  PASS  Published prompt equals the builder's canonical text exactly
  PASS  Prompt forbids estimating likelihood of any condition and forbids diagnosis
  PASS  Prompt tells the AI to pause and point to a doctor if the user mentions feeling unwell or unsafe
  PASS  Prompt defines the framework itself (spikes, valleys, energy triad) so no AI has to guess
  PASS  Prompt asks about a good day and a bad day before analysing
  PASS  No probability scorecard or PROBABLE / POSSIBLE ratings
  PASS  House style: no em dash, no serial comma, no sales pitch inside the prompt

[3 Wiring]
  PASS  Framework section links to /good-day-bad-day/ right after the scope note
  PASS  llms.txt and sitemap.xml list the page on the apex
  PASS  Indexable page with its own title, description and apex canonical
  PASS  Shared header, footer and footer disclaimer present
  PASS  Next step goes to the homepage form with sparring preselected

[4 Browser]
  PASS  Copy button puts the exact prompt on the clipboard (2463 characters)
  PASS  Button confirms 'Copied' and the live region announces it
  PASS  Button label resets after a moment
  PASS  CTA target preselects 'Private Executive Sparring' on the homepage form
  PASS  Zero console errors or warnings
  PASS  375px: no overflow, notice above the prompt, 0 axe violations
  PASS  768px: no overflow, notice above the prompt, 0 axe violations
  PASS  1280px: no overflow, notice above the prompt, 0 axe violations

[5 Validity]
  PASS  New page and homepage validate
  PASS  CSS validates

28/28 passed
```

## Design pass (21 October 2026)

Soft corners, gradient bands, icon set, scroll reveal, portrait and the cache fix. Earlier suites were re-run in full; five checks were rewritten on purpose because the brief changed them: the mobile hero now shows the radar (Phase 2), the FAQ shows only questions when closed (Phase 5 and the framework suite), layout is measured without the reveal offset and alpha backgrounds are composited in the contrast check (Phase 3), and asset URLs carry a release tag (thanks suite). All 412 checks across eleven suites pass.

```
[1 Cache]
  PASS  All 6 styled pages load main.css and main.js with a ?v= release tag
  PASS  One release tag across the site (20261021)
  PASS  netlify.toml: css and js revalidate on every visit; no /assets/* rule overlaps them
  PASS  Fonts stay immutable, images cached 7 days

[2 Markup]
  PASS  Icon sprite: 21 symbols, 23 icons placed, every reference resolves
  PASS  Every icon is decorative (aria-hidden, focusable=false)
  PASS  Icons on proof bar, tracks, sparring, formats, milestones, facts, research and connect {'proof': 3, 'tracks': 2, 'sparring': 4, 'formats': 3, 'milestones': 4, 'facts': 4, 'research': 1, 'connect': 2}
  PASS  Proof bar numerals replaced by icons; sparring numerals kept as muted anchors
  PASS  Portrait: webp 16 KB with jpg fallback 34 KB, alt text, width/height, lazy
  PASS  Research box sits under the bio, portrait and facts in the side column
  PASS  Index head carries one Primary metadata block (builder no longer stacks comments)

[3 Browser]
  PASS  JavaScript off: every block fully visible (reveal never hides content on its own)
  PASS  Reduced motion: reveal switched off, content shown at once
  PASS  Below the fold, 33 of 33 blocks wait hidden (opacity 0, offset 0px 14px)
  PASS  Stagger inside card groups: ['0ms', '70ms', '140ms', '210ms']
  PASS  Reveal is short: fades through 8 intermediate frames, fully shown after 447ms
  PASS  After one pass down the page every block is revealed
  PASS  Header slims from 72px to 60px once the page scrolls
  PASS  Card hover lift still animates after reveal (matrix(1, 0, 0, 1, 0, -3))
  PASS  Soft corners: {'track': 20, 'xcard': 20, 'format': 20, 'map': 20, 'table': 20, 'book': 20, 'faq': 20, 'form': 20, 'input': 12}
  PASS  Dark bands and the proof strip use gradients; accent words use gradient text
  PASS  FAQ opens with the first sentence leading the answer
  PASS  Zero console errors or warnings
  PASS  375px: no overflow, hero map 268px, dimension list shown (numbered map), 0 axe violations
  PASS  768px: no overflow, hero map 300px, dimension list hidden (labelled map), 0 axe violations
  PASS  1280px: no overflow, hero map 355px, dimension list hidden (labelled map), 0 axe violations

[4 Validity]
  PASS  All 18 HTML pages validate
  PASS  CSS validates
  PASS  No third-party requests added (no external URLs in CSS)

29/29 passed
```

Regression totals: site 72/72, Phase 2 51/51, Phase 3 70/70, Phase 4 38/38, Phase 5 40/40, thanks 21/21, forms 14/14, framework and FAQ 31/31, social 18/18, prompt page 28/28, design 29/29.

## Share this site (21 October 2026)

Two older checks were narrowed: the Phase 1 link checker now reads only meta refresh targets (it had picked up the url= parameter of the LinkedIn share link), and the Phase 4 LinkedIn consistency check skips the share endpoint. All 428 checks across twelve suites pass.

```
[1 Share links]
  PASS  Share block on all 6 full pages (404.html, good-day-bad-day/index.html, index.html, legal-notice/index.html, privacy-policy/index.html, thanks/index.html)
  PASS  WhatsApp: wa.me with a ready message that ends in the homepage URL
  PASS  LinkedIn: official share-offsite endpoint with the apex homepage
  PASS  Email: subject 'Thought you might find this useful' and a body carrying the URL
  PASS  External share links open in a new tab with rel=noopener
  PASS  Copy link and native Share are real buttons; native starts hidden
  PASS  House style in share copy: no em dash, no serial comma, UK spelling
  PASS  No third-party scripts, widgets or tracking pixels added

[2 Browser]
  PASS  Copy link puts https://neurodisruptors.com/ on the clipboard, button says 'Copied', status announced
  PASS  Copy button resets
  PASS  Native Share button shown only where the browser has a share sheet (navigator.share=False, shown=False)
  PASS  Share block works on subpages too (privacy policy)
  PASS  Zero console errors or warnings
  PASS  Without JavaScript the WhatsApp, LinkedIn and email links still show
  PASS  Phone with a share sheet: Share button visible and hands over title, text and URL
  PASS  375px: buttons in two columns, no overflow, 0 axe violations in the share block

16/16 passed
```

## About section rebuild (21 October 2026)

Photo-led About layout. The design suite now checks the photo set, metadata stripping, the new structure and the Person image. All 431 checks across twelve suites pass.

```
[2 Markup]
  PASS  Icon sprite: 21 symbols, 21 icons placed, every reference resolves
  PASS  Every icon is decorative (aria-hidden, focusable=false)
  PASS  Icons on proof bar, tracks, sparring, formats, milestones, About facts and connect {'proof': 3, 'tracks': 2, 'sparring': 4, 'formats': 3, 'milestones': 4, 'facts': 3, 'connect': 2}
  PASS  Proof bar numerals replaced by icons; sparring numerals kept as muted anchors
  PASS  About photo: responsive webp (800w, 1200w) with jpg fallback {'sven-session-800.webp': 25, 'sven-session-1200.webp': 42, 'sven-session.jpg': 90} KB, alt text, width/height, lazy
  PASS  Photo files carry no EXIF metadata (Picasa tags stripped)
  PASS  About: photo first, then bio with a three-item facts strip and a LinkedIn link; research row below with three named professors
  PASS  Kuma Partners sentence moved out of the bio into the facts strip (said once)
  PASS  Person schema carries the headshot as image, so search and AI answers can match face and name
  PASS  Index head carries one Primary metadata block (builder no longer stacks comments)

```

## Spiky profile explainer, seventh FAQ and print fix (21 October 2026)

FAQ suites now expect seven questions. The design suite adds explainer and print checks. All 439 checks across twelve suites pass.

```
[2b Explainer]
  PASS  Explainer opens #framework, after the section head and before the map (['section-head', 'spiky-intro', 'framework__visual'])
  PASS  Names the profiles as tags: ADHD, Autism, Giftedness, Dyslexia, Dyspraxia, Dyscalculia, Twice-exceptional (2e)
  PASS  Says neurodivergence is the umbrella term, with or without a label, and frames good day versus bad day
  PASS  Clinical line: diagnosis stays with doctors and psychologists; see a professional if unwell
  PASS  Links to the good day and bad day prompt
  PASS  House style: no em dash, no serial comma
  PASS  llms.txt names the profiles and links #spiky-profile; Organization knowsAbout adds autism, dyslexia, dyspraxia and 2e

[3b Print]
  PASS  Print and Save as PDF: every block visible, accent words in solid colour, backgrounds kept, header not repeated, share box hidden, photo loaded

```

## GEO release (21 October 2026)

New suite test_geo.py. Updated on purpose: FAQ suites expect twelve questions, the Person sameAs now lists three profiles, the footer carries the About link, /about/ left the legacy redirect list. All 469 checks across thirteen suites pass.

```
[1 Entity]
  PASS  Homepage Person: same person as LinkedIn, mulfinger.com and Kuma Partners; url and mainEntityOfPage point to /about/
  PASS  /about/ is a ProfilePage whose mainEntity is the same Person @id, with a full Person node (sameAs, image, affiliations)
  PASS  Visible rel=me links to LinkedIn and mulfinger.com on the homepage and /about/
  PASS  /about/ links to Kuma Partners, the book, sparring and the Spiky Profile
  PASS  /spiky-profile/: DefinedTerm 'Spiky Profile' in the Non-Linear Operating System term set; page authored by the Person
  PASS  Definition sentence on the page matches the DefinedTerm description and the first FAQ answer
  PASS  Ten dimensions listed as text on the definition page (5 spikes, 5 valleys)
  PASS  Explainer, tags and clinical line carried onto the definition page
  PASS  /about/: indexable, own title and description, apex canonical with trailing slash, dated
  PASS  /spiky-profile/: indexable, own title and description, apex canonical with trailing slash, dated
  PASS  dateModified on homepage, /about/ and /spiky-profile/ pages

[2 FAQ]
  PASS  12 questions, each opening with a complete sentence that names its subject (no 'It', 'This' or 'They' openers)
  PASS  10 of 12 first sentences carry a named entity an AI can attribute
  PASS  White-paper phrasing removed from the answers
  PASS  No pricing or retainer terms stated (kept general until confirmed)

[3 Files]
  PASS  robots.txt allows all and names the AI crawlers (GPTBot, OAI-SearchBot, ClaudeBot, PerplexityBot, Google-Extended)
  PASS  sitemap.xml lists 6 pages including /about/ and /spiky-profile/, all dated 2026-10-21
  PASS  llms.txt links /about/, /spiky-profile/, llms-full.txt and the three same-person profiles
  PASS  llms-full.txt carries all 12 FAQ answers word for word, the definition, the profile and the explainer
  PASS  llms-full.txt house style: no em dash, no HTML left
  PASS  _redirects no longer sends /about/ to the homepage; /team/ goes to /about/, /concepts/ to /spiky-profile/
  PASS  Footer links the two new pages on every full page

[4 Kuma Partners zip]
  PASS  2 Sven Person nodes in the zip, every one lists neurodisruptors.com/about/ in sameAs (JSON parses)
  PASS  Visible neurodisruptors.com link added on 4 pages, partners.html included

[5 Browser]
  PASS  /about/ at 375px: no overflow, 0 axe violations, no console errors
  PASS  /about/ at 1280px: no overflow, 0 axe violations, no console errors
  PASS  /spiky-profile/ at 375px: no overflow, 0 axe violations, no console errors
  PASS  /spiky-profile/ at 1280px: no overflow, 0 axe violations, no console errors
  PASS  Both new pages validate

29/29 passed
```
