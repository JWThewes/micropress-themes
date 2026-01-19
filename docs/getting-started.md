# Getting Started with MicroPress Themes

This guide will walk you through creating your first MicroPress theme, from setup to submission.

## Prerequisites

- Basic understanding of CSS
- Familiarity with CSS custom properties (variables)
- A MicroPress site for testing (or use the preview feature)

---

## Quick Start

### 1. Create Your Theme Directory

```
my-awesome-theme/
├── manifest.json    # Theme metadata (required)
├── theme.css        # Your styles (required)
└── preview.png      # Preview image (optional, 400x300px)
```

### 2. Create manifest.json

```json
{
  "id": "my-awesome-theme",
  "name": "My Awesome Theme",
  "version": "1.0.0",
  "description": "A beautiful theme with custom colors and typography",
  "author": "Your Name",
  "homepage": "https://github.com/yourusername/my-awesome-theme",
  "customizable": {
    "colorPrimary": {
      "type": "color",
      "label": "Primary Color",
      "default": "#6366f1"
    }
  }
}
```

### 3. Create theme.css

```css
/* My Awesome Theme for MicroPress */

:root {
  /* Override the default primary color */
  --mp-color-primary: #6366f1;
  --mp-color-primary-hover: #4f46e5;
  --mp-color-primary-subtle: rgba(99, 102, 241, 0.08);

  /* Custom typography */
  --mp-font-family-base: 'Georgia', serif;
}

/* Custom header styling */
.mp-header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-bottom: none;
}

.mp-header__title {
  color: white;
}

/* Custom navigation */
.mp-nav__link:hover {
  color: var(--mp-color-primary);
}
```

### 4. Package Your Theme

Create a ZIP file containing your theme files:

```bash
cd my-awesome-theme
zip -r ../my-awesome-theme.zip .
```

### 5. Test Your Theme

1. Open your MicroPress admin panel
2. Go to **Themes**
3. Click **Upload Theme.zip**
4. Select your ZIP file
5. Click **Activate**
6. Publish your site and preview the changes

---

## Understanding the Theme System

### How Themes Work

MicroPress loads styles in this order:
1. `base.css` - Core structural styles (don't override this)
2. `theme.css` - Your theme's styles (override CSS variables here)
3. Site customizations - User-defined colors from admin panel

Your theme only needs to override what you want to change. Everything else inherits from the base styles.

### CSS Variables

The foundation of theming is CSS custom properties. Override these in your `:root` selector:

```css
:root {
  --mp-color-primary: #your-color;
  --mp-font-family-base: 'Your Font', sans-serif;
}
```

See the [CSS Variables Reference](./css-variables.md) for all available variables.

### Component Styling

After setting variables, you can style specific components:

```css
/* Target specific components */
.mp-header {
  /* Header styles */
}

.mp-nav__link {
  /* Navigation link styles */
}

.mp-article__title {
  /* Article title styles */
}

.mp-news-card {
  /* News card styles */
}
```

See the [HTML Structure Reference](./html-structure.md) for all available classes.

---

## Theme Customization Options

Make your theme customizable through the admin panel by defining fields in `manifest.json`:

### Color Fields

```json
{
  "customizable": {
    "colorPrimary": {
      "type": "color",
      "label": "Primary Color",
      "default": "#6366f1"
    },
    "colorBackground": {
      "type": "color",
      "label": "Background Color",
      "default": "#ffffff"
    }
  }
}
```

### Select Fields

```json
{
  "customizable": {
    "fontFamily": {
      "type": "select",
      "label": "Font Family",
      "default": "Inter",
      "options": ["Inter", "Georgia", "Helvetica", "system-ui"]
    }
  }
}
```

### Size Fields

```json
{
  "customizable": {
    "containerWidth": {
      "type": "size",
      "label": "Container Width",
      "default": "1140px"
    }
  }
}
```

### How Customizations Work

When users customize your theme, the values are converted to CSS variables:

| Field Name | CSS Variable |
|------------|--------------|
| `colorPrimary` | `--mp-color-primary` |
| `fontFamily` | `--mp-font-family` |
| `containerWidth` | `--mp-container-width` |

The naming follows kebab-case conversion: `colorPrimary` → `--mp-color-primary`

---

## Best Practices

### 1. Start with Variables

Always begin by setting your color palette and typography through CSS variables:

```css
:root {
  /* Colors first */
  --mp-color-primary: #your-primary;
  --mp-color-bg: #your-background;
  --mp-color-text: #your-text;

  /* Then typography */
  --mp-font-family-base: 'Your Font', sans-serif;
}
```

### 2. Use Semantic Variables

Don't hardcode colors in component styles. Use the variables:

```css
/* Good */
.mp-header {
  background: var(--mp-color-primary);
}

/* Avoid */
.mp-header {
  background: #6366f1;
}
```

### 3. Maintain Accessibility

- Ensure text contrast ratio is at least 4.5:1 (WCAG 2.1 AA)
- Test with different color schemes
- Don't remove focus indicators

```css
/* Keep focus visible */
:focus-visible {
  outline: 2px solid var(--mp-color-primary);
  outline-offset: 2px;
}
```

### 4. Test Responsively

Always test on multiple screen sizes:

```css
@media (max-width: 768px) {
  /* Mobile adjustments */
  .mp-article__title {
    font-size: var(--mp-font-size-2xl);
  }
}
```

### 5. Support Dark Mode (Optional)

If you want to support automatic dark mode:

```css
@media (prefers-color-scheme: dark) {
  :root {
    --mp-color-bg: #1a1a2e;
    --mp-color-bg-canvas: #0f0f1a;
    --mp-color-text: #e2e8f0;
    --mp-color-text-muted: #94a3b8;
  }
}
```

---

## Testing Checklist

Before submitting your theme, verify:

- [ ] All pages render correctly (home, pages, news list, news articles)
- [ ] Navigation works on both desktop and mobile
- [ ] Dropdown menus function properly
- [ ] Text is readable against all backgrounds
- [ ] Links are clearly identifiable
- [ ] Focus states are visible for keyboard users
- [ ] Theme looks good on mobile (< 768px)
- [ ] Theme looks good on tablet (768px - 1024px)
- [ ] Theme looks good on desktop (> 1024px)
- [ ] Print styles don't break layout (if applicable)
- [ ] Customizable options work as expected

---

## Submitting Your Theme

Ready to share your theme with the community?

1. **Fork the repository**: [micropress-themes](https://github.com/JWThewes/micropress-themes)

2. **Add your theme**: Place your theme folder in `themes/`

3. **Update registry**: Add your theme to `registry.json`

4. **Create a pull request**: Include a description and screenshots

See [CONTRIBUTING.md](../CONTRIBUTING.md) for detailed submission guidelines.

---

## Resources

- [CSS Variables Reference](./css-variables.md) - All available CSS variables
- [HTML Structure Reference](./html-structure.md) - Available classes and structure
- [Dark Theme Example](./examples/dark-theme.md) - Step-by-step dark theme tutorial
- [Clean Minimal Theme](../themes/clean-minimal/) - Example theme to study

---

## Getting Help

- **Issues**: [Report bugs or request features](https://github.com/JWThewes/micropress-themes/issues)
- **Discussions**: Ask questions and share ideas
- **MicroPress Docs**: [Main documentation](https://github.com/JWThewes/homepage-ost)
