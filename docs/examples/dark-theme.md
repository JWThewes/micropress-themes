# Creating a Dark Theme

This tutorial walks you through creating a professional dark theme for MicroPress, covering color theory, accessibility, and optional automatic dark mode support.

## Overview

A well-designed dark theme isn't just inverted colors. It requires careful consideration of:
- Contrast and readability
- Visual hierarchy
- Eye comfort in low-light environments
- Consistency across all components

---

## Step 1: Set Up Your Theme

Create the basic structure:

```
dark-mode-theme/
├── manifest.json
├── theme.css
└── preview.png
```

**manifest.json:**
```json
{
  "id": "dark-mode",
  "name": "Dark Mode",
  "version": "1.0.0",
  "description": "A sleek dark theme with excellent contrast and modern aesthetics",
  "author": "Your Name",
  "customizable": {
    "colorPrimary": {
      "type": "color",
      "label": "Accent Color",
      "default": "#818cf8"
    },
    "colorBackground": {
      "type": "color",
      "label": "Background",
      "default": "#0f172a"
    }
  }
}
```

---

## Step 2: Choose Your Color Palette

Dark themes work best with:
- **Deep, desaturated backgrounds** (not pure black)
- **Slightly muted text** (not pure white)
- **Vibrant accent colors** for interactive elements

### Recommended Dark Palette

```css
:root {
  /* Background layers - from darkest to lightest */
  --mp-color-bg-canvas: #0f172a;      /* Deepest - page background */
  --mp-color-bg: #1e293b;             /* Default surfaces */
  --mp-color-bg-alt: #334155;         /* Code blocks, quotes */
  --mp-color-bg-elevated: #1e293b;    /* Cards, elevated surfaces */

  /* Text colors - soft whites for comfort */
  --mp-color-text: #e2e8f0;           /* Primary text */
  --mp-color-text-muted: #94a3b8;     /* Secondary text */
  --mp-color-text-light: #64748b;     /* Tertiary/disabled text */

  /* Borders - subtle definition */
  --mp-color-border: #334155;
  --mp-color-border-light: #1e293b;

  /* Primary accent - bright enough to pop */
  --mp-color-primary: #818cf8;        /* Indigo - works well on dark */
  --mp-color-primary-hover: #a5b4fc;  /* Lighter on hover */
  --mp-color-primary-subtle: rgba(129, 140, 248, 0.15);
}
```

### Why Not Pure Black?

Pure black (`#000000`) creates too much contrast with white text, causing eye strain. A dark blue-gray like `#0f172a` is easier on the eyes and feels more sophisticated.

---

## Step 3: Apply to Components

### Header

```css
.mp-header {
  background: var(--mp-color-bg);
  border-bottom-color: var(--mp-color-border);
  /* Remove blur for solid dark header */
  backdrop-filter: none;
}

.mp-header__title {
  color: var(--mp-color-text);
}
```

### Navigation

```css
.mp-nav {
  background: var(--mp-color-bg-canvas);
  border-bottom-color: var(--mp-color-border);
}

.mp-nav__link {
  color: var(--mp-color-text-muted);
}

.mp-nav__link:hover,
.mp-nav__link:focus {
  color: var(--mp-color-primary);
}

/* Dropdown menus */
.mp-nav__submenu {
  background: var(--mp-color-bg-elevated);
  border-color: var(--mp-color-border);
}

.mp-nav__submenu .mp-nav__link:hover {
  background: var(--mp-color-primary-subtle);
  color: var(--mp-color-primary);
}
```

### Content

```css
.mp-article__title {
  color: var(--mp-color-text);
}

.mp-prose {
  color: var(--mp-color-text);
}

.mp-prose a {
  color: var(--mp-color-primary);
}

.mp-prose a:hover {
  color: var(--mp-color-primary-hover);
}

/* Blockquotes */
.mp-prose blockquote {
  background: var(--mp-color-bg-alt);
  border-left-color: var(--mp-color-primary);
  color: var(--mp-color-text-muted);
}

/* Code blocks */
.mp-prose code {
  background: var(--mp-color-bg-alt);
  color: var(--mp-color-text);
}

.mp-prose pre {
  background: var(--mp-color-bg-alt);
}
```

### News Cards

```css
.mp-news-card {
  background: var(--mp-color-bg-elevated);
  border-color: var(--mp-color-border);
}

.mp-news-card:hover {
  border-color: var(--mp-color-primary);
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
}

.mp-news-card__link {
  color: var(--mp-color-text);
}

.mp-news-card__link:hover {
  color: var(--mp-color-primary);
}

.mp-news-card__excerpt {
  color: var(--mp-color-text-muted);
}
```

### Footer

```css
.mp-footer {
  background: var(--mp-color-bg);
  border-top-color: var(--mp-color-border);
}

.mp-footer__copyright {
  color: var(--mp-color-text-muted);
}

.mp-footer__link {
  color: var(--mp-color-text-muted);
}

.mp-footer__link:hover {
  color: var(--mp-color-primary);
}
```

---

## Step 4: Focus & Selection States

```css
/* Focus ring */
:focus-visible {
  outline: 2px solid var(--mp-color-primary);
  outline-offset: 2px;
}

/* Text selection */
::selection {
  background: var(--mp-color-primary);
  color: white;
}
```

---

## Step 5: Mobile Adjustments

```css
@media (max-width: 768px) {
  .mp-nav {
    background: var(--mp-color-bg-elevated);
  }

  .mp-nav__link {
    color: var(--mp-color-text);
  }

  /* Hamburger icon */
  .mp-header__menu-icon,
  .mp-header__menu-icon::before,
  .mp-header__menu-icon::after {
    background: var(--mp-color-text);
  }

  .mp-nav__submenu {
    background: transparent;
    border-color: var(--mp-color-border);
  }
}
```

---

## Step 6: Shadows for Depth

Dark themes need adjusted shadows - use darker, more spread shadows:

```css
:root {
  --mp-shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.3);
  --mp-shadow-md: 0 4px 6px rgba(0, 0, 0, 0.4);
  --mp-shadow-lg: 0 10px 25px rgba(0, 0, 0, 0.5);
}
```

---

## Complete Example

Here's the full `theme.css`:

```css
/* Dark Mode Theme for MicroPress */

:root {
  /* Backgrounds */
  --mp-color-bg-canvas: #0f172a;
  --mp-color-bg: #1e293b;
  --mp-color-bg-alt: #334155;
  --mp-color-bg-elevated: #1e293b;

  /* Text */
  --mp-color-text: #e2e8f0;
  --mp-color-text-muted: #94a3b8;
  --mp-color-text-light: #64748b;

  /* Borders */
  --mp-color-border: #334155;
  --mp-color-border-light: #1e293b;

  /* Primary */
  --mp-color-primary: #818cf8;
  --mp-color-primary-hover: #a5b4fc;
  --mp-color-primary-subtle: rgba(129, 140, 248, 0.15);

  /* Links */
  --mp-color-link: var(--mp-color-primary);
  --mp-color-link-hover: var(--mp-color-primary-hover);

  /* Component-specific */
  --mp-header-bg: var(--mp-color-bg);
  --mp-header-border-color: var(--mp-color-border);
  --mp-nav-bg: var(--mp-color-bg-canvas);
  --mp-nav-link-color: var(--mp-color-text-muted);
  --mp-nav-link-hover-color: var(--mp-color-primary);
  --mp-footer-bg: var(--mp-color-bg);
  --mp-card-bg: var(--mp-color-bg-elevated);
  --mp-card-border-color: var(--mp-color-border);
  --mp-card-hover-border-color: var(--mp-color-primary);

  /* Shadows */
  --mp-shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.3);
  --mp-shadow-md: 0 4px 6px rgba(0, 0, 0, 0.4);
  --mp-shadow-lg: 0 10px 25px rgba(0, 0, 0, 0.5);
}

/* Header */
.mp-header {
  backdrop-filter: none;
}

/* Navigation dropdowns */
.mp-nav__submenu {
  background: var(--mp-color-bg-elevated);
  border-color: var(--mp-color-border);
}

.mp-nav__submenu .mp-nav__link:hover,
.mp-nav__submenu .mp-nav__link:focus {
  background: var(--mp-color-primary-subtle);
  color: var(--mp-color-primary);
}

/* News cards */
.mp-news-card:hover {
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
}

/* Focus & selection */
:focus-visible {
  outline-color: var(--mp-color-primary);
}

::selection {
  background: var(--mp-color-primary);
  color: white;
}

/* Mobile */
@media (max-width: 768px) {
  .mp-header__menu-icon,
  .mp-header__menu-icon::before,
  .mp-header__menu-icon::after {
    background: var(--mp-color-text);
  }

  .mp-nav {
    background: var(--mp-color-bg-elevated);
  }

  .mp-nav__link {
    color: var(--mp-color-text);
  }
}
```

---

## Automatic Dark Mode (Optional)

Want your theme to automatically switch based on user preference? Use `prefers-color-scheme`:

```css
/* Default: Light mode */
:root {
  --mp-color-bg-canvas: #fafbfc;
  --mp-color-bg: #ffffff;
  --mp-color-text: #1a1a2e;
  /* ... light colors */
}

/* Auto-switch to dark when user prefers */
@media (prefers-color-scheme: dark) {
  :root {
    --mp-color-bg-canvas: #0f172a;
    --mp-color-bg: #1e293b;
    --mp-color-text: #e2e8f0;
    /* ... dark colors */
  }
}
```

---

## Accessibility Checklist

- [ ] Text contrast ratio ≥ 4.5:1 (use [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/))
- [ ] Large text (18px+) contrast ratio ≥ 3:1
- [ ] Links distinguishable from regular text
- [ ] Focus indicators visible
- [ ] Interactive elements clearly identifiable

### Recommended Contrast Ratios for Dark Themes

| Element | Background | Text | Ratio |
|---------|------------|------|-------|
| Body text | `#0f172a` | `#e2e8f0` | 11.5:1 |
| Muted text | `#0f172a` | `#94a3b8` | 6.5:1 |
| Primary link | `#0f172a` | `#818cf8` | 5.8:1 |

---

## Tips for Great Dark Themes

1. **Avoid pure black** - Use dark grays with slight color tints
2. **Reduce white intensity** - Use off-whites for body text
3. **Brighten accent colors** - Colors need more saturation to pop on dark
4. **Increase shadow opacity** - Shadows need to be darker to be visible
5. **Test in low light** - Actually use your theme in a dark room
6. **Consider OLED screens** - True black (`#000`) saves battery on OLED

---

## Next Steps

- Test your theme across all page types
- Verify mobile responsiveness
- Check accessibility with browser dev tools
- Submit to the [theme registry](../CONTRIBUTING.md)
