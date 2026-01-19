# MicroPress Themes

Official theme registry for MicroPress CMS. Browse, install, and create custom themes for your MicroPress site.

## Available Themes

### Clean Minimal
A clean, minimal theme with excellent readability and subtle typography. Perfect for blogs and content-focused sites.

- **Version:** 1.0.0
- **Author:** MicroPress
- **Features:** Customizable colors, typography-focused, responsive design
- [Download](https://github.com/JWThewes/micropress-themes/releases/download/clean-minimal-v1.0.0/clean-minimal.zip)
- [View Source](./themes/clean-minimal)

---

## Installing Themes

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

---

## Creating Your Own Theme

### Quick Start

1. **Use the template**: Copy the [`template/`](./template) folder
2. **Customize variables**: Edit `theme.css` to override CSS variables
3. **Style components**: Add custom styles for header, nav, content, etc.
4. **Test locally**: Upload ZIP to your MicroPress site
5. **Submit**: Create a PR to add to the registry

### Documentation

| Document | Description |
|----------|-------------|
| [Getting Started](./docs/getting-started.md) | Step-by-step guide to creating your first theme |
| [CSS Variables Reference](./docs/css-variables.md) | Complete list of all customizable CSS variables |
| [HTML Structure Reference](./docs/html-structure.md) | Available classes, elements, and data attributes |
| [Dark Theme Tutorial](./docs/examples/dark-theme.md) | Example: Creating a professional dark theme |

### Theme Structure

```
my-theme/
├── manifest.json    # Theme metadata (required)
├── theme.css        # Theme styles (required)
└── preview.png      # Preview image (optional, 400x300px)
```

### Example manifest.json

```json
{
  "id": "my-theme",
  "name": "My Theme",
  "version": "1.0.0",
  "description": "A beautiful theme for MicroPress",
  "author": "Your Name",
  "customizable": {
    "colorPrimary": {
      "type": "color",
      "label": "Primary Color",
      "default": "#007bff"
    }
  }
}
```

### Example theme.css

```css
:root {
  /* Override CSS variables */
  --mp-color-primary: #6366f1;
  --mp-color-primary-hover: #4f46e5;
  --mp-color-bg-canvas: #fafafa;
}

/* Customize components */
.mp-header {
  background: linear-gradient(to right, #667eea, #764ba2);
}

.mp-nav__link:hover {
  color: var(--mp-color-primary);
}
```

### Key Features for Theme Creators

- **CSS Variables**: 50+ customizable variables for colors, typography, spacing, and more
- **Component Variables**: Fine-grained control with `--mp-header-bg`, `--mp-nav-link-color`, etc.
- **Data Attributes**: Target specific pages with `data-page-type` and `data-content-type`
- **BEM Classes**: Consistent naming with `mp-` prefix for easy targeting
- **Responsive**: Built-in mobile support with hamburger menu
- **Accessibility**: Focus states, skip links, ARIA attributes, reduced motion support

---

## Best Practices

1. **Start with variables** - Override CSS variables before styling components
2. **Use semantic variables** - Don't hardcode colors, use `var(--mp-color-primary)`
3. **Maintain accessibility** - Ensure 4.5:1 contrast ratio for text
4. **Test responsively** - Check mobile (< 768px), tablet, and desktop
5. **Keep it simple** - Override only what you need to change

---

## Contributing

Want to submit your theme to the registry? See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

### Submission Checklist

- [ ] Theme has unique `id` in manifest.json
- [ ] All required files present (manifest.json, theme.css)
- [ ] Preview image included (400x300px recommended)
- [ ] Tested on all page types (home, pages, news list, news articles)
- [ ] Responsive design works on mobile
- [ ] Accessibility requirements met

---

## Resources

- [MicroPress Documentation](https://github.com/JWThewes/homepage-ost)
- [Theme Template](./template)
- [Example Themes](./themes)

---

## License

Themes in this registry are provided by their respective authors. Check individual theme licenses.

---

## Issues & Support

Found a bug or need help?
- [Report an issue](https://github.com/JWThewes/micropress-themes/issues)
- [MicroPress Documentation](https://github.com/JWThewes/homepage-ost)
