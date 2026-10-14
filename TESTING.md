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
