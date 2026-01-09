# MicroPress Themes

Official theme registry for MicroPress CMS. Browse, install, and create custom themes for your MicroPress site.

## 🎨 Available Themes

### Clean Minimal
A clean, minimal theme with excellent readability and subtle typography. Perfect for blogs and content-focused sites.

- **Version:** 1.0.0
- **Author:** MicroPress
- **Features:** Customizable colors, typography-focused, responsive design
- [Download](https://github.com/JWThewes/micropress-themes/releases/download/clean-minimal-v1.0.0/clean-minimal.zip)
- [View Source](./themes/clean-minimal)

## 📦 Installing Themes

### Via Registry (Recommended)
1. Open your MicroPress admin panel
2. Navigate to **Themes**
3. Browse available themes
4. Click **Install** on your desired theme
5. Click **Activate** to make it live
6. Publish your site to see the changes

### Via ZIP Upload
1. Download a theme ZIP file
2. Go to **Themes** in admin panel
3. Click **Upload Theme.zip**
4. Select your downloaded ZIP
5. Activate and publish

## 🛠 Creating Your Own Theme

### Quick Start

1. **Create theme directory structure:**
```
my-theme/
├── manifest.json    # Theme metadata (required)
├── theme.css        # Theme styles (required)
├── variables.css    # Optional: CSS variable overrides
└── preview.png      # Optional: Preview image (400x300px)
```

2. **Create manifest.json:**
```json
{
  "id": "my-theme",
  "name": "My Theme",
  "version": "1.0.0",
  "description": "A beautiful theme for MicroPress",
  "author": "Your Name",
  "homepage": "https://your-website.com",
  "breakpoints": {
    "sm": "576px",
    "md": "768px",
    "lg": "992px"
  },
  "customizable": {
    "colorPrimary": {
      "type": "color",
      "label": "Primary Color",
      "default": "#007bff"
    }
  }
}
```

3. **Create theme.css:**
```css
/* Override MicroPress base CSS variables */
:root {
  --mp-color-primary: #007bff;
  --mp-color-bg: #ffffff;
  --mp-font-family-base: system-ui, sans-serif;
}

/* Customize components */
.mp-header {
  background: var(--mp-color-primary);
  color: white;
}
```

4. **Test locally:**
- ZIP your theme folder
- Upload via admin panel
- Test on different screen sizes
- Verify all pages render correctly

5. **Publish to registry:**
- See [CONTRIBUTING.md](./CONTRIBUTING.md) for submission guidelines

## 📚 Theme Development Guide

### Available CSS Classes

MicroPress uses BEM naming convention with `mp-` prefix:

#### Layout
- `.mp-body` - Body element
- `.mp-skip-link` - Skip to content link (accessibility)
- `.mp-container` - Main content container
- `.mp-main` - Main content area

#### Header
- `.mp-header` - Header container
- `.mp-header__container` - Inner header wrapper
- `.mp-header__brand` - Brand/logo area
- `.mp-header__logo` - Logo image
- `.mp-header__title` - Site title

#### Navigation
- `.mp-nav` - Navigation container
- `.mp-nav__list` - Navigation list
- `.mp-nav__item` - Navigation item
- `.mp-nav__link` - Navigation link

#### Article/Page
- `.mp-article` - Article container
- `.mp-article__header` - Article header
- `.mp-article__title` - Article title
- `.mp-article__meta` - Metadata (date, author)
- `.mp-article__date` - Publication date
- `.mp-article__author` - Author name
- `.mp-article__content` - Article content
- `.mp-article__footer` - Article footer
- `.mp-article__back-link` - Back to list link
- `.mp-article--news` - Modifier for news articles

#### Content/Prose
- `.mp-prose` - Content typography wrapper

#### News List
- `.mp-news-list` - News list container
- `.mp-news-list__title` - News list title
- `.mp-news-list__items` - News items wrapper
- `.mp-news-card` - Individual news card
- `.mp-news-card__title` - News card title
- `.mp-news-card__link` - News card link
- `.mp-news-card__date` - News card date
- `.mp-news-card__excerpt` - News card excerpt

#### Footer
- `.mp-footer` - Footer container
- `.mp-footer__container` - Inner footer wrapper
- `.mp-footer__copyright` - Copyright text

### CSS Variables

Override these in your `theme.css`:

```css
:root {
  /* Colors */
  --mp-color-primary: #007bff;
  --mp-color-primary-hover: #0056b3;
  --mp-color-bg: #ffffff;
  --mp-color-bg-alt: #f8f9fa;
  --mp-color-text: #1f2937;
  --mp-color-text-muted: #6b7280;
  --mp-color-border: #e5e7eb;
  --mp-color-link: var(--mp-color-primary);
  --mp-color-link-hover: var(--mp-color-primary-hover);

  /* Typography */
  --mp-font-family-base: system-ui, sans-serif;
  --mp-font-family-heading: var(--mp-font-family-base);
  --mp-font-size-base: 1rem;
  --mp-font-size-sm: 0.875rem;
  --mp-font-size-lg: 1.125rem;
  --mp-font-size-xl: 1.25rem;
  --mp-font-size-2xl: 1.5rem;
  --mp-font-size-3xl: 1.875rem;
  --mp-line-height-base: 1.6;
  --mp-line-height-tight: 1.25;

  /* Spacing */
  --mp-spacing-xs: 0.25rem;
  --mp-spacing-sm: 0.5rem;
  --mp-spacing-md: 1rem;
  --mp-spacing-lg: 1.5rem;
  --mp-spacing-xl: 2rem;
  --mp-spacing-2xl: 3rem;

  /* Layout */
  --mp-container-max-width: 1200px;
  --mp-container-padding: var(--mp-spacing-md);

  /* Borders & Shadows */
  --mp-border-radius-sm: 0.25rem;
  --mp-border-radius-md: 0.5rem;
  --mp-border-radius-lg: 1rem;
  --mp-shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.05);
  --mp-shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);
  --mp-shadow-lg: 0 10px 15px rgba(0, 0, 0, 0.1);

  /* Transitions */
  --mp-transition-fast: 150ms ease;
  --mp-transition-base: 200ms ease;
}
```

### Customizable Fields

Make your theme customizable by adding fields to `manifest.json`:

```json
{
  "customizable": {
    "colorPrimary": {
      "type": "color",        // color, font, size, select
      "label": "Primary Color",
      "default": "#007bff"
    },
    "fontFamily": {
      "type": "select",
      "label": "Font Family",
      "default": "system-ui",
      "options": ["system-ui", "Georgia", "Helvetica"]
    },
    "containerWidth": {
      "type": "size",
      "label": "Container Width",
      "default": "1200px"
    }
  }
}
```

Customizations are applied as CSS variables with `--mp-` prefix and kebab-case:
- `colorPrimary` → `--mp-color-primary`
- `fontFamily` → `--mp-font-family`

### Best Practices

1. **Always test responsive design** - Use provided breakpoints
2. **Maintain accessibility** - Ensure sufficient color contrast
3. **Keep it simple** - Override only what's necessary
4. **Use CSS variables** - For easy customization
5. **Test with real content** - Use different content lengths
6. **Document customizations** - Explain available options

## 🤝 Contributing

Want to submit your theme to the registry? See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

## 📄 License

Themes in this registry are provided by their respective authors. Check individual theme licenses.

## 🐛 Issues & Support

Found a bug or need help?
- [Report an issue](https://github.com/JWThewes/micropress-themes/issues)
- [MicroPress Documentation](https://github.com/JWThewes/homepage-ost)
