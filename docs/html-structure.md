# HTML Structure Reference

MicroPress generates semantic HTML with consistent class names using BEM methodology with an `mp-` prefix. This document covers all available elements and data attributes for theme targeting.

## Page Types

MicroPress generates different page types, identifiable via the `data-page-type` attribute on `<body>`:

| Page Type | Attribute Value | Description |
|-----------|-----------------|-------------|
| Home | `data-page-type="home"` | Main index/landing page |
| Page | `data-page-type="page"` | Static content pages |
| News List | `data-page-type="news-list"` | News/blog listing |
| News Article | `data-page-type="news-article"` | Individual news item |

### Targeting by Page Type
```css
/* Style only the home page */
body[data-page-type="home"] .mp-header {
  background: linear-gradient(to right, var(--mp-color-primary), var(--mp-color-accent));
}

/* Different styling for news articles */
body[data-page-type="news-article"] .mp-article__title {
  font-size: var(--mp-font-size-3xl);
}
```

---

## Document Structure

```html
<!DOCTYPE html>
<html lang="de" data-theme="theme-id">
<head>...</head>
<body class="mp-body" data-page-type="home">
  <!-- Skip Link (accessibility) -->
  <a href="#main-content" class="mp-skip-link">Skip to content</a>

  <!-- Header -->
  <header class="mp-header" role="banner" data-header-style="default">
    <div class="mp-header__container">
      <div class="mp-header__brand">
        <img class="mp-header__logo" src="..." alt="Logo">
        <span class="mp-header__title">Site Name</span>
      </div>
      <button class="mp-header__menu-toggle">...</button>
    </div>
  </header>

  <!-- Navigation -->
  <nav class="mp-nav" id="main-nav" data-nav-style="horizontal">
    <ul class="mp-nav__list">
      <li class="mp-nav__item">
        <a class="mp-nav__link" href="#">Link</a>
      </li>
    </ul>
  </nav>

  <!-- Main Content -->
  <main class="mp-main" id="main-content" role="main" aria-live="polite">
    <div class="mp-container" id="page-container">
      <!-- Dynamic content loaded here -->
    </div>
  </main>

  <!-- Footer -->
  <footer class="mp-footer" role="contentinfo">
    <div class="mp-footer__container">
      <p class="mp-footer__copyright">&copy; 2025 Site Name</p>
      <nav class="mp-footer__nav">
        <a class="mp-footer__link" href="#">Imprint</a>
      </nav>
    </div>
  </footer>
</body>
</html>
```

---

## Component Reference

### Layout

| Class | Element | Description |
|-------|---------|-------------|
| `.mp-body` | `<body>` | Body wrapper |
| `.mp-skip-link` | `<a>` | Accessibility skip link |
| `.mp-container` | `<div>` | Content container |
| `.mp-main` | `<main>` | Main content area |

### Header

```html
<header class="mp-header" data-header-style="default">
  <div class="mp-header__container">
    <div class="mp-header__brand">
      <img class="mp-header__logo" src="logo.png" alt="Site Logo">
      <span class="mp-header__title">Site Name</span>
    </div>
    <button class="mp-header__menu-toggle" aria-expanded="false">
      <span class="mp-header__menu-icon"></span>
    </button>
  </div>
</header>
```

| Class | Description |
|-------|-------------|
| `.mp-header` | Header container |
| `.mp-header__container` | Inner wrapper (max-width) |
| `.mp-header__brand` | Logo + title wrapper |
| `.mp-header__logo` | Logo image |
| `.mp-header__title` | Site title text |
| `.mp-header__menu-toggle` | Mobile menu button |
| `.mp-header__menu-toggle--open` | Open state modifier |
| `.mp-header__menu-icon` | Hamburger icon |

**Data Attributes:**
- `data-header-style="default"` - Header style variant (for theme targeting)

### Navigation

```html
<nav class="mp-nav" data-nav-style="horizontal">
  <ul class="mp-nav__list">
    <li class="mp-nav__item">
      <a class="mp-nav__link" href="#">Page</a>
    </li>
    <li class="mp-nav__item mp-nav__item--has-children">
      <a class="mp-nav__link" href="#">Parent</a>
      <button class="mp-nav__toggle" aria-expanded="false">
        <span class="mp-nav__toggle-icon"></span>
      </button>
      <ul class="mp-nav__submenu">
        <li class="mp-nav__item">
          <a class="mp-nav__link" href="#">Child</a>
        </li>
      </ul>
    </li>
  </ul>
</nav>
```

| Class | Description |
|-------|-------------|
| `.mp-nav` | Navigation container |
| `.mp-nav__list` | Navigation list |
| `.mp-nav__item` | Navigation item |
| `.mp-nav__item--has-children` | Parent item with submenu |
| `.mp-nav__item--open` | Mobile submenu open state |
| `.mp-nav__link` | Navigation link |
| `.mp-nav__toggle` | Mobile submenu toggle |
| `.mp-nav__toggle-icon` | Toggle arrow icon |
| `.mp-nav__submenu` | Dropdown submenu |
| `.mp-nav__chevron` | Desktop dropdown indicator |

**Data Attributes:**
- `data-nav-style="horizontal"` - Navigation layout style

**States:**
- `.mp-nav--open` - Mobile nav visible

### Article/Page Content

```html
<article class="mp-article" data-content-type="page">
  <header class="mp-article__header">
    <h1 class="mp-article__title">Page Title</h1>
    <div class="mp-article__meta">
      <time class="mp-article__date" datetime="2025-01-19">January 19, 2025</time>
      <span class="mp-article__author">Author Name</span>
    </div>
  </header>
  <div class="mp-article__content mp-prose">
    <!-- HTML content -->
  </div>
  <footer class="mp-article__footer">
    <a class="mp-article__back-link" href="#">&larr; Back</a>
  </footer>
</article>
```

| Class | Description |
|-------|-------------|
| `.mp-article` | Article container |
| `.mp-article--news` | News article modifier |
| `.mp-article__header` | Article header |
| `.mp-article__title` | Article title (h1) |
| `.mp-article__meta` | Metadata wrapper |
| `.mp-article__date` | Publication date |
| `.mp-article__author` | Author name |
| `.mp-article__content` | Content wrapper |
| `.mp-article__footer` | Article footer |
| `.mp-article__back-link` | Back navigation link |

**Data Attributes:**
- `data-content-type="page"` - Regular page
- `data-content-type="news-article"` - News article
- `data-content-type="news-list"` - News listing

### Prose (Content)

The `.mp-prose` class wraps all user content and provides typography styling:

```html
<div class="mp-prose">
  <h2>Heading</h2>
  <p>Paragraph with <a href="#">link</a> and <strong>bold</strong> text.</p>
  <ul>
    <li>List item</li>
  </ul>
  <blockquote>Quote</blockquote>
  <pre><code>Code block</code></pre>
  <img src="image.jpg" alt="Image">
</div>
```

Styled elements within `.mp-prose`:
- Headings (h1-h6)
- Paragraphs
- Links
- Strong/bold
- Lists (ul, ol)
- Blockquotes
- Code (inline and blocks)
- Images
- Tables
- Horizontal rules

### News List

```html
<section class="mp-news-list" data-content-type="news-list">
  <h1 class="mp-news-list__title">News</h1>
  <div class="mp-news-list__items">
    <article class="mp-news-card">
      <h2 class="mp-news-card__title">
        <a class="mp-news-card__link" href="#">Article Title</a>
      </h2>
      <time class="mp-news-card__date" datetime="2025-01-19">January 19, 2025</time>
      <p class="mp-news-card__excerpt">Short excerpt...</p>
    </article>
  </div>
</section>
```

| Class | Description |
|-------|-------------|
| `.mp-news-list` | News list container |
| `.mp-news-list__title` | List title |
| `.mp-news-list__items` | Items wrapper |
| `.mp-news-card` | Individual news card |
| `.mp-news-card__title` | Card title |
| `.mp-news-card__link` | Title link |
| `.mp-news-card__date` | Publication date |
| `.mp-news-card__excerpt` | Preview text |

### Footer

```html
<footer class="mp-footer">
  <div class="mp-footer__container">
    <p class="mp-footer__copyright">&copy; 2025 Site Name</p>
    <span class="mp-footer__separator">|</span>
    <nav class="mp-footer__nav">
      <a class="mp-footer__link" href="#">Imprint</a>
      <a class="mp-footer__link" href="#">Privacy</a>
    </nav>
  </div>
</footer>
```

| Class | Description |
|-------|-------------|
| `.mp-footer` | Footer container |
| `.mp-footer__container` | Inner wrapper |
| `.mp-footer__copyright` | Copyright text |
| `.mp-footer__separator` | Visual separator |
| `.mp-footer__nav` | Footer navigation |
| `.mp-footer__link` | Footer link |

---

## Data Attributes Summary

| Attribute | Element | Values |
|-----------|---------|--------|
| `data-theme` | `<html>` | Theme ID string |
| `data-page-type` | `<body>` | `home`, `page`, `news-list`, `news-article` |
| `data-header-style` | `.mp-header` | `default` (extensible) |
| `data-nav-style` | `.mp-nav` | `horizontal` (extensible) |
| `data-content-type` | `.mp-article`, `.mp-news-list` | `page`, `news-article`, `news-list` |

---

## ARIA & Accessibility

MicroPress includes built-in accessibility features:

- **Skip link**: `.mp-skip-link` for keyboard navigation
- **Landmarks**: `role="banner"`, `role="navigation"`, `role="main"`, `role="contentinfo"`
- **Live regions**: `aria-live="polite"` on main content for HTMX updates
- **Expandable controls**: `aria-expanded` on menu toggles
- **Focus states**: `:focus-visible` styling for keyboard users
- **Reduced motion**: Automatic support for `prefers-reduced-motion`

---

## Responsive Breakpoints

Default breakpoints used in base styles:

| Breakpoint | Width | Usage |
|------------|-------|-------|
| Mobile | < 768px | Single column, hamburger menu |
| Tablet | 769px - 1024px | Transitional layouts |
| Desktop | > 1024px | Full layout |

```css
/* Example: Target mobile only */
@media (max-width: 768px) {
  .mp-nav {
    /* Mobile styles */
  }
}
```

---

## Styling Tips

### Target specific page types
```css
body[data-page-type="home"] .mp-main {
  padding-top: 0;
}
```

### Target specific content types
```css
.mp-article[data-content-type="news-article"] {
  max-width: 800px;
}
```

### Combine with BEM modifiers
```css
.mp-nav__item--has-children > .mp-nav__link {
  padding-right: 2rem;
}
```

### Style HTMX transitions
```css
.mp-container {
  transition: opacity var(--mp-transition-base);
}

.htmx-request .mp-container {
  opacity: 0.5;
}
```
