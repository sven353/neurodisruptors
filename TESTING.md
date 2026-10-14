# Phase 1 verification report

Automated run on 14 October 2026 with headless Chromium (Playwright) and axe-core 4. Reproduce locally with any static server.

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
  PASS  Repo weight 358 KB, largest file under 1 MB
  PASS  Clean git init, add and commit (37 tracked files)

71/71 passed
```
