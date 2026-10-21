/* Neurodisruptors V2 . navigation and small enhancements. No dependencies. */
(function () {
  "use strict";

  var header = document.querySelector(".site-header");
  var toggle = document.querySelector(".nav-toggle");
  var drawer = document.getElementById("mobile-drawer");
  var desktopQuery = window.matchMedia("(min-width: 960px)");
  var reduceMotion = window.matchMedia("(prefers-reduced-motion: reduce)");
  var lastFocus = null;
  var closeTimer = null;

  /* ---------- Mobile drawer ---------- */
  function focusables() {
    return Array.prototype.slice.call(
      drawer.querySelectorAll('a[href], button:not([disabled]), [tabindex]:not([tabindex="-1"])')
    );
  }

  function isOpen() {
    return toggle && toggle.getAttribute("aria-expanded") === "true";
  }

  function openDrawer() {
    if (!drawer || isOpen()) return;
    clearTimeout(closeTimer);
    lastFocus = document.activeElement;
    drawer.hidden = false;
    // force reflow so the transition runs
    void drawer.offsetWidth;
    drawer.classList.add("is-open");
    toggle.setAttribute("aria-expanded", "true");
    toggle.setAttribute("aria-label", "Close menu");
    document.body.classList.add("is-locked");
    var first = focusables()[0];
    if (first) first.focus({ preventScroll: true });
  }

  function closeDrawer(opts) {
    if (!drawer || !isOpen()) return;
    var restoreFocus = !opts || opts.restoreFocus !== false;
    drawer.classList.remove("is-open");
    toggle.setAttribute("aria-expanded", "false");
    toggle.setAttribute("aria-label", "Open menu");
    document.body.classList.remove("is-locked");
    var hide = function () { drawer.hidden = true; };
    if (reduceMotion.matches) hide(); else closeTimer = setTimeout(hide, 260);
    if (restoreFocus && lastFocus && typeof lastFocus.focus === "function") lastFocus.focus({ preventScroll: true });
  }

  if (toggle && drawer) {
    toggle.addEventListener("click", function () {
      isOpen() ? closeDrawer() : openDrawer();
    });

    // Close on link tap, let the anchor navigate normally.
    drawer.addEventListener("click", function (e) {
      if (e.target.closest("a")) closeDrawer({ restoreFocus: false });
    });

    document.addEventListener("keydown", function (e) {
      if (!isOpen()) return;
      if (e.key === "Escape" || e.key === "Esc") {
        e.preventDefault();
        closeDrawer();
        return;
      }
      if (e.key === "Tab") {
        // Focus trap: drawer items plus the toggle (which sits in the header above it).
        var items = [toggle].concat(focusables());
        var i = items.indexOf(document.activeElement);
        if (e.shiftKey && (i <= 0)) { e.preventDefault(); items[items.length - 1].focus(); }
        else if (!e.shiftKey && i === items.length - 1) { e.preventDefault(); items[0].focus(); }
        else if (i === -1) { e.preventDefault(); items[0].focus(); }
      }
    });

    var onBreakpoint = function (mq) { if (mq.matches) closeDrawer({ restoreFocus: false }); };
    if (desktopQuery.addEventListener) desktopQuery.addEventListener("change", onBreakpoint);
    else if (desktopQuery.addListener) desktopQuery.addListener(onBreakpoint);
  }

  /* ---------- Header border on scroll ---------- */
  if (header) {
    var onScroll = function () { header.classList.toggle("is-scrolled", window.scrollY > 8); };
    window.addEventListener("scroll", onScroll, { passive: true });
    onScroll();
  }

  /* ---------- Current-section highlighting ---------- */
  var navLinks = Array.prototype.slice.call(document.querySelectorAll("a[data-nav]"));
  if ("IntersectionObserver" in window && navLinks.length) {
    var sections = navLinks
      .map(function (a) { return document.querySelector(a.getAttribute("href")); })
      .filter(function (el, idx, arr) { return el && arr.indexOf(el) === idx; });

    var setCurrent = function (id) {
      navLinks.forEach(function (a) {
        if (id && a.getAttribute("href") === "#" + id) a.setAttribute("aria-current", "location");
        else a.removeAttribute("aria-current");
      });
    };

    var visible = {};
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) { visible[en.target.id] = en.isIntersecting; });
      var current = null;
      sections.forEach(function (s) { if (visible[s.id]) current = current || s.id; });
      setCurrent(current);
    }, { rootMargin: "-45% 0px -50% 0px", threshold: 0 });
    sections.forEach(function (s) { io.observe(s); });
  }

  /* ---------- Preselect form interest ---------- */
  var interest = document.getElementById("f-interest");
  function selectInterest(value) {
    if (!interest || !value) return;
    for (var i = 0; i < interest.options.length; i++) {
      if (interest.options[i].value === value) { interest.selectedIndex = i; break; }
    }
  }
  document.addEventListener("click", function (e) {
    var a = e.target.closest("[data-interest]");
    if (a) selectInterest(a.getAttribute("data-interest"));
  });
  try {
    var q = new URLSearchParams(window.location.search).get("interest");
    if (q) selectInterest(q);
  } catch (err) { /* URLSearchParams unsupported: ignore */ }

  /* ---------- Short option labels on narrow screens ----------
     The submitted value never changes, only the visible label, so the closed
     dropdown never clips on a phone. */
  if (interest) {
    var narrow = window.matchMedia("(max-width: 479px)");
    var applyLabels = function () {
      for (var i = 0; i < interest.options.length; i++) {
        var o = interest.options[i];
        if (!o.hasAttribute("data-full")) o.setAttribute("data-full", o.textContent);
        var short = o.getAttribute("data-short");
        o.textContent = narrow.matches && short ? short : o.getAttribute("data-full");
      }
    };
    applyLabels();
    if (narrow.addEventListener) narrow.addEventListener("change", applyLabels);
    else if (narrow.addListener) narrow.addListener(applyLabels);
  }

  /* ---------- Copy-to-clipboard (self-reflection prompt) ---------- */
  Array.prototype.forEach.call(document.querySelectorAll("[data-copy-target]"), function (btn) {
    var src = document.getElementById(btn.getAttribute("data-copy-target"));
    var status = btn.closest(".prompt") && btn.closest(".prompt").querySelector(".prompt__status");
    if (!src) return;
    var label = btn.textContent;
    var done = function (ok) {
      btn.textContent = ok ? "Copied" : label;
      btn.classList.toggle("is-copied", ok);
      if (status) status.textContent = ok ? "Prompt copied. Paste it into a new chat in your AI assistant." : "Copy did not work here. Select the text and copy it manually.";
      if (ok) setTimeout(function () { btn.textContent = label; btn.classList.remove("is-copied"); }, 2500);
    };
    var fallback = function () {
      try {
        var r = document.createRange(); r.selectNodeContents(src);
        var sel = window.getSelection(); sel.removeAllRanges(); sel.addRange(r);
        done(document.execCommand("copy"));
      } catch (e) { done(false); }
    };
    btn.addEventListener("click", function () {
      var text = src.textContent;
      if (navigator.clipboard && window.isSecureContext) navigator.clipboard.writeText(text).then(function () { done(true); }, fallback);
      else fallback();
    });
  });

  /* ---------- Scroll reveal ----------
     Blocks fade and rise 14px as they enter the viewport, once each, with a short stagger
     inside card groups. Skipped entirely for reduced motion or without IntersectionObserver,
     and the hidden state only exists once html.js-rv is set here, so no content depends on it. */
  var RV = ".section-head, .proof__list, .track, .xcard, .format, .section-foot, .framework__map, .framework__key, " +
           ".framework__contrast-wrap, .framework__note, .framework__try, .milestone, .book, .about__body, " +
           ".about__photo, .research, .faq, .connect > div, .form, .tool__intro, .tool__main";
  if ("IntersectionObserver" in window && !reduceMotion.matches) {
    var targets = Array.prototype.slice.call(document.querySelectorAll(RV));
    if (targets.length) {
      document.documentElement.classList.add("js-rv");
      var groupIndex = new Map();
      targets.forEach(function (el) {
        var n = groupIndex.get(el.parentNode) || 0;
        groupIndex.set(el.parentNode, n + 1);
        el.style.setProperty("--rv-d", Math.min(n, 4) * 70 + "ms");
        el.classList.add("rv");
      });
      var rvo = new IntersectionObserver(function (entries) {
        entries.forEach(function (en) {
          if (en.isIntersecting) { en.target.classList.add("rv-in"); rvo.unobserve(en.target); }
        });
      }, { rootMargin: "0px 0px -6% 0px", threshold: 0.08 });
      targets.forEach(function (el) { rvo.observe(el); });
    }
  }

  /* ---------- Share this site ----------
     The WhatsApp, LinkedIn and email links work without JavaScript. Here we add Copy link
     and, where the device offers one, its own share sheet. */
  Array.prototype.forEach.call(document.querySelectorAll(".share__list"), function (list) {
    var url = list.getAttribute("data-share-url");
    var text = list.getAttribute("data-share-text");
    var status = list.parentNode.querySelector(".share__status");
    var say = function (msg) { if (status) { status.textContent = msg; setTimeout(function () { status.textContent = ""; }, 3000); } };
    var nativeBtn = list.querySelector("[data-share-native]");
    if (nativeBtn && navigator.share) {
      nativeBtn.parentNode.hidden = false;
      nativeBtn.addEventListener("click", function () {
        navigator.share({ title: "Neurodisruptors", text: text, url: url }).catch(function () { /* closed by the user */ });
      });
    }
    var copyBtn = list.querySelector("[data-share-copy]");
    if (copyBtn) {
      var label = copyBtn.querySelector("span");
      var copied = function () {
        label.textContent = "Copied"; copyBtn.classList.add("is-copied"); say("Link copied: " + url);
        setTimeout(function () { label.textContent = "Copy link"; copyBtn.classList.remove("is-copied"); }, 2500);
      };
      copyBtn.addEventListener("click", function () {
        if (navigator.clipboard && window.isSecureContext) {
          navigator.clipboard.writeText(url).then(copied, function () { say("Copy did not work here. The address is " + url); });
        } else { say("Copy the address: " + url); }
      });
    }
  });

  /* ---------- Footer year ---------- */
  var y = document.querySelector("[data-year]");
  if (y) y.textContent = String(new Date().getFullYear());
})();
