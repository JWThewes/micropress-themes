# CSS Variables Reference

Complete reference of all CSS variables available for theming MicroPress sites. Override these in your `theme.css` to customize the appearance.

## Colors

### Primary Colors
```css
--mp-color-primary: #007bff;           /* Main brand color */
--mp-color-primary-hover: #0056b3;     /* Hover state for primary */
--mp-color-primary-subtle: rgba(0, 123, 255, 0.08);  /* Subtle background tint */
```

### Background Colors
```css
--mp-color-bg: #ffffff;                /* Default background */
--mp-color-bg-canvas: #fafbfc;         /* Page canvas/body background */
--mp-color-bg-alt: #f8f9fa;            /* Alternative background (code, quotes) */
--mp-color-bg-elevated: #ffffff;       /* Elevated surfaces (cards, modals) */
```

### Text Colors
```css
--mp-color-text: #1a1a2e;              /* Primary text */
--mp-color-text-muted: #64748b;        /* Secondary/muted text */
--mp-color-text-light: #94a3b8;        /* Tertiary/light text */
```

### Border Colors
```css
--mp-color-border: #e2e8f0;            /* Default border */
--mp-color-border-light: #f1f5f9;      /* Light/subtle border */
```

### Link Colors
```css
--mp-color-link: var(--mp-color-primary);        /* Link color */
--mp-color-link-hover: var(--mp-color-primary-hover);  /* Link hover */
```

### Accent Colors
```css
--mp-color-accent: var(--mp-color-primary);       /* Secondary accent */
--mp-color-accent-hover: var(--mp-color-primary-hover);
```

### State Colors
```css
--mp-color-success: #22c55e;           /* Success state */
--mp-color-warning: #f59e0b;           /* Warning state */
--mp-color-error: #ef4444;             /* Error state */
```

---

## Typography

### Font Families
```css
--mp-font-family-base: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
--mp-font-family-heading: var(--mp-font-family-base);
--mp-font-family-mono: 'SF Mono', ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
```

### Font Sizes
```css
--mp-font-size-base: 1rem;             /* 16px - Base size */
--mp-font-size-xs: 0.75rem;            /* 12px */
--mp-font-size-sm: 0.875rem;           /* 14px */
--mp-font-size-lg: 1.125rem;           /* 18px */
--mp-font-size-xl: 1.25rem;            /* 20px */
--mp-font-size-2xl: 1.5rem;            /* 24px */
--mp-font-size-3xl: 2rem;              /* 32px */
--mp-font-size-4xl: 2.5rem;            /* 40px */
```

### Font Weights
```css
--mp-font-weight-normal: 400;
--mp-font-weight-medium: 500;
--mp-font-weight-semibold: 600;
--mp-font-weight-bold: 700;
```

### Line Heights
```css
--mp-line-height-base: 1.7;            /* Default line height */
--mp-line-height-tight: 1.3;           /* Headings */
--mp-line-height-relaxed: 1.8;         /* Long-form content */
```

### Letter Spacing
```css
--mp-letter-spacing-tight: -0.025em;   /* Headings */
--mp-letter-spacing-normal: 0;
--mp-letter-spacing-wide: 0.025em;     /* Small caps, labels */
```

---

## Spacing

MicroPress uses a consistent spacing scale:

```css
--mp-spacing-xs: 0.25rem;              /* 4px */
--mp-spacing-sm: 0.5rem;               /* 8px */
--mp-spacing-md: 1rem;                 /* 16px */
--mp-spacing-lg: 1.5rem;               /* 24px */
--mp-spacing-xl: 2rem;                 /* 32px */
--mp-spacing-2xl: 3rem;                /* 48px */
--mp-spacing-3xl: 4rem;                /* 64px */
--mp-spacing-4xl: 6rem;                /* 96px */
```

---

## Layout

### Container
```css
--mp-container-max-width: 1140px;      /* Maximum container width */
--mp-container-padding: clamp(1rem, 5vw, 2rem);  /* Responsive padding */
--mp-content-max-width: 720px;         /* Content/article width */
```

### Header & Navigation
```css
--mp-header-height: 4rem;              /* Header height */
--mp-nav-height: 3rem;                 /* Navigation bar height */
```

---

## Component-Specific Variables

These variables allow fine-grained control over specific components:

### Header
```css
--mp-header-bg: var(--mp-color-bg-elevated);
--mp-header-border-color: var(--mp-color-border-light);
```

### Navigation
```css
--mp-nav-bg: var(--mp-color-bg);
--mp-nav-link-color: var(--mp-color-text-muted);
--mp-nav-link-hover-color: var(--mp-color-text);
```

### Footer
```css
--mp-footer-bg: var(--mp-color-bg);
```

### Cards (News, etc.)
```css
--mp-card-bg: var(--mp-color-bg-elevated);
--mp-card-border-color: var(--mp-color-border-light);
--mp-card-hover-border-color: var(--mp-color-border);
```

---

## Layout Variables

These variables allow themes to fundamentally change the layout of components.

### Navigation Layout
```css
--mp-nav-display: flex;              /* flex | grid | block */
--mp-nav-justify: flex-start;        /* flex-start | center | flex-end | space-between */
--mp-nav-gap: 0.25rem;               /* Gap between nav items */
```

**Example: Centered navigation**
```css
:root {
  --mp-nav-justify: center;
  --mp-nav-gap: 2rem;
}
```

### News List Layout
```css
--mp-news-list-display: flex;        /* flex | grid */
--mp-news-list-direction: column;    /* column | row (for flex) */
--mp-news-list-columns: 1;           /* Number of columns (for grid) */
--mp-news-list-gap: 1rem;            /* Gap between items */
```

**Example: 2-column grid layout**
```css
:root {
  --mp-news-list-display: grid;
  --mp-news-list-columns: 2;
  --mp-news-list-gap: 1.5rem;
}

/* Responsive: single column on mobile */
@media (max-width: 768px) {
  :root {
    --mp-news-list-columns: 1;
  }
}
```

**Example: 3-column masonry-style**
```css
:root {
  --mp-news-list-display: grid;
  --mp-news-list-columns: 3;
  --mp-news-list-gap: 2rem;
}

@media (max-width: 1024px) {
  :root { --mp-news-list-columns: 2; }
}

@media (max-width: 640px) {
  :root { --mp-news-list-columns: 1; }
}
```

---

## Borders & Shadows

### Border Radius
```css
--mp-border-radius-sm: 0.375rem;       /* 6px - Small elements */
--mp-border-radius-md: 0.5rem;         /* 8px - Default */
--mp-border-radius-lg: 0.75rem;        /* 12px - Cards */
--mp-border-radius-xl: 1rem;           /* 16px - Large elements */
--mp-border-radius-full: 9999px;       /* Circular */
```

### Shadows
```css
--mp-shadow-xs: 0 1px 2px rgba(0, 0, 0, 0.04);
--mp-shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.06), 0 1px 2px rgba(0, 0, 0, 0.04);
--mp-shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.08), 0 2px 4px -1px rgba(0, 0, 0, 0.04);
--mp-shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.08), 0 4px 6px -2px rgba(0, 0, 0, 0.04);
--mp-shadow-xl: 0 20px 25px -5px rgba(0, 0, 0, 0.08), 0 10px 10px -5px rgba(0, 0, 0, 0.03);
```

---

## Transitions

```css
--mp-transition-fast: 150ms cubic-bezier(0.4, 0, 0.2, 1);   /* Quick interactions */
--mp-transition-base: 200ms cubic-bezier(0.4, 0, 0.2, 1);  /* Default */
--mp-transition-slow: 300ms cubic-bezier(0.4, 0, 0.2, 1);  /* Emphasis */
```

---

## Usage Example

Here's how to override variables in your theme:

```css
/* my-theme/theme.css */
:root {
  /* Custom color scheme */
  --mp-color-primary: #8b5cf6;
  --mp-color-primary-hover: #7c3aed;
  --mp-color-primary-subtle: rgba(139, 92, 246, 0.08);

  /* Dark backgrounds */
  --mp-color-bg: #1a1a2e;
  --mp-color-bg-canvas: #0f0f1a;
  --mp-color-text: #e2e8f0;

  /* Component overrides */
  --mp-header-bg: #1a1a2e;
  --mp-card-bg: #252542;
}
```

---

## Best Practices

1. **Use semantic variables** - Override `--mp-color-primary` instead of hardcoding colors everywhere
2. **Maintain contrast** - Ensure text remains readable against backgrounds (WCAG 2.1 AA requires 4.5:1 for body text)
3. **Test dark mode** - If supporting `prefers-color-scheme: dark`, test all color combinations
4. **Use component variables** - For targeted changes, use component-specific variables like `--mp-header-bg`
5. **Respect motion preferences** - MicroPress includes `prefers-reduced-motion` support automatically
