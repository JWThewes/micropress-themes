# Contributing to MicroPress Themes

Thank you for your interest in contributing a theme to the MicroPress theme registry! This guide will walk you through the submission process.

## 📋 Requirements

Before submitting your theme, ensure it meets these requirements:

### Required Files
- ✅ `manifest.json` - Valid theme metadata
- ✅ `theme.css` - Theme styles
- ✅ Theme must be packaged as a ZIP file

### Optional Files
- `variables.css` - Additional CSS variable overrides
- `preview.png` - Theme preview image (400x300px recommended)
- `README.md` - Theme documentation
- `assets/` - Fonts, images, or other assets

### Quality Standards
- ✅ Works on all screen sizes (mobile, tablet, desktop)
- ✅ Maintains accessibility (WCAG AA contrast ratios)
- ✅ Uses semantic HTML structure
- ✅ No JavaScript required
- ✅ Clean, maintainable CSS
- ✅ Respects MicroPress CSS class conventions

## 🎨 Theme Checklist

Before submitting, verify your theme:

### Technical
- [ ] Valid `manifest.json` with all required fields
- [ ] `id` uses lowercase and hyphens only (`my-theme`, not `MyTheme`)
- [ ] Semantic versioning (e.g., `1.0.0`)
- [ ] All CSS is valid and error-free
- [ ] No hardcoded colors in CSS (use CSS variables)
- [ ] Responsive at all breakpoints
- [ ] No console errors

### Content
- [ ] Works with short and long content
- [ ] Images scale properly
- [ ] Lists render correctly
- [ ] Blockquotes are styled
- [ ] Code blocks are readable
- [ ] Links are distinguishable
- [ ] Navigation is usable

### Accessibility
- [ ] Color contrast meets WCAG AA (4.5:1 for text)
- [ ] Focus states are visible
- [ ] Skip link works
- [ ] Semantic HTML maintained
- [ ] Works with screen readers

### Polish
- [ ] Consistent spacing
- [ ] Professional typography
- [ ] Smooth transitions
- [ ] Preview image included
- [ ] Clear description

## 📦 Submission Process

### 1. Prepare Your Theme

Create a folder with your theme files:
```
my-awesome-theme/
├── manifest.json
├── theme.css
├── preview.png (optional)
└── README.md (optional)
```

### 2. Create a GitHub Release

1. **Fork this repository**
2. **Add your theme to `themes/` directory:**
   ```bash
   mkdir themes/my-awesome-theme
   cp -r /path/to/your/theme/* themes/my-awesome-theme/
   ```

3. **Create a ZIP file:**
   ```bash
   cd themes/my-awesome-theme
   zip -r ../../releases/my-awesome-theme-v1.0.0.zip .
   ```

4. **Test the ZIP:**
   - Upload to a MicroPress instance
   - Verify it installs correctly
   - Test all features

### 3. Update Registry

Edit `registry.json` and add your theme:

```json
{
  "themes": [
    {
      "id": "my-awesome-theme",
      "name": "My Awesome Theme",
      "description": "A brief, compelling description of your theme",
      "latestVersion": "1.0.0",
      "author": "Your Name",
      "githubRepo": "JWThewes/micropress-themes",
      "releaseUrl": "https://github.com/JWThewes/micropress-themes/releases/download/my-awesome-theme-v1.0.0/my-awesome-theme.zip",
      "previewUrl": "https://raw.githubusercontent.com/JWThewes/micropress-themes/main/themes/my-awesome-theme/preview.png"
    }
  ]
}
```

### 4. Create Pull Request

1. **Commit your changes:**
   ```bash
   git add themes/my-awesome-theme registry.json
   git commit -m "Add My Awesome Theme v1.0.0"
   git push origin main
   ```

2. **Create Pull Request** with:
   - Clear title: "Add [Theme Name] v[Version]"
   - Description including:
     - What makes your theme unique
     - Screenshots
     - Browser compatibility notes
     - Any special features

3. **Create GitHub Release:**
   - Tag: `my-awesome-theme-v1.0.0`
   - Title: "My Awesome Theme v1.0.0"
   - Upload your theme ZIP file
   - Add release notes

### 5. Review Process

We'll review your submission for:
- Code quality
- Accessibility
- Browser compatibility
- Design consistency
- Documentation clarity

You may receive feedback for improvements before merging.

## 🔄 Updating Your Theme

To release an update:

1. **Update version in `manifest.json`**
2. **Update theme files**
3. **Create new ZIP with new version number**
4. **Create new GitHub release**
5. **Update `registry.json` with new version and release URL**
6. **Submit PR with changes**

## 📝 Manifest.json Schema

Complete schema with all options:

```json
{
  "id": "theme-id",                    // Required: Lowercase with hyphens
  "name": "Theme Name",                // Required: Display name
  "version": "1.0.0",                  // Required: Semantic versioning
  "description": "Theme description",  // Required: Short description
  "author": "Author Name",             // Required: Your name
  "homepage": "https://...",           // Optional: Your website
  "breakpoints": {                     // Optional: Custom breakpoints
    "sm": "576px",
    "md": "768px",
    "lg": "992px",
    "xl": "1200px"
  },
  "customizable": {                    // Optional: Customizable fields
    "colorPrimary": {
      "type": "color",                 // color, font, size, select
      "label": "Primary Color",        // User-facing label
      "default": "#007bff"             // Default value
    },
    "fontFamily": {
      "type": "select",
      "label": "Font Family",
      "default": "system-ui",
      "options": ["system-ui", "Georgia", "Arial"]
    }
  }
}
```

### Field Types

- **color**: Color picker (hex values)
- **font**: Text input for font family
- **size**: Text input for CSS size values (px, rem, em, %)
- **select**: Dropdown with predefined options

## 🎯 Theme Ideas

Need inspiration? Here are some theme ideas:

- **Magazine** - Bold headlines, multi-column layouts
- **Portfolio** - Image-focused, minimal text
- **Corporate** - Professional, trustworthy design
- **Blog** - Reading-focused, excellent typography
- **Dark Mode** - Dark color scheme
- **Colorful** - Vibrant, playful design
- **Vintage** - Classic, serif fonts
- **Tech** - Modern, futuristic look
- **Minimalist** - Ultra-clean, lots of whitespace

## 🐛 Reporting Issues

Found a bug in an existing theme?
1. Check if it's already reported
2. Create an issue with:
   - Theme name and version
   - Steps to reproduce
   - Expected vs actual behavior
   - Screenshots if applicable
   - Browser and device info

## 💡 Best Practices

### Performance
- Minimize CSS file size
- Optimize images (WebP recommended)
- Avoid expensive CSS properties (shadows on large elements)
- Use system fonts when possible

### Maintainability
- Comment complex CSS
- Use meaningful variable names
- Follow BEM methodology
- Keep selectors simple

### Design
- Consistent spacing scale
- Limited color palette (3-5 colors)
- Clear visual hierarchy
- Sufficient white space
- Readable line lengths (45-75 characters)

### Typography
- Font size: 16px minimum for body text
- Line height: 1.5-1.75 for body text
- Headings: Clear size hierarchy
- Limit font families (1-2 families)

## 📞 Questions?

- Open a [GitHub Discussion](https://github.com/JWThewes/micropress-themes/discussions)
- Check existing themes for examples
- Review MicroPress documentation

Thank you for contributing to the MicroPress ecosystem! 🎉
