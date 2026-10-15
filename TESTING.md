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
