# Static HTML + HTMX Template - Agent Guidelines

This document provides guidelines for AI agents working on projects built from this template.

---

## Project Overview

This is a simple static website template with HTMX for dynamic interactions. No build step, no frameworks, just HTML, CSS, and JavaScript.

## Technology Stack

- **HTML5** - Semantic markup
- **CSS3** - Modern styling with CSS variables
- **JavaScript** - Vanilla JS, no frameworks
- **HTMX** - Dynamic HTML interactions

## Project Structure

```
├── index.html          # Main page
├── css/style.css       # Stylesheet
├── js/main.js          # Custom JavaScript
├── lib/htmx.min.js     # HTMX library
└── partials/           # HTML fragments for HTMX
```

## HTMX Patterns

### Loading Content

```html
<button hx-get="/partials/content.html" 
        hx-target="#container" 
        hx-swap="innerHTML">
    Load
</button>
```

### Common Attributes

| Attribute | Purpose |
|-----------|---------|
| `hx-get` | GET request to URL |
| `hx-post` | POST request to URL |
| `hx-target` | Where to put the response |
| `hx-swap` | How to swap content (innerHTML, outerHTML, beforeend, etc.) |
| `hx-trigger` | What triggers the request (click, load, revealed, etc.) |

### Partials

Store HTML fragments in `/partials/` for HTMX to load. These are complete HTML snippets, not full pages.

## Development

### With justvibin (Recommended)

```bash
justvibin start    # Start server
justvibin open     # Open in browser
justvibin stop     # Stop server
justvibin tunnel   # Share publicly
```

Your site is at https://<project-name>.localhost

### Without justvibin

```bash
python3 -m http.server 8000
# Visit http://localhost:8000
```

## Adding Pages

1. Create new HTML files (e.g., `about.html`, `contact.html`)
2. Use the same structure as `index.html`
3. Update navigation links

### Adding Partials

1. Create HTML fragments in `/partials/`
2. Reference with `hx-get="/partials/filename.html"`
3. Only include the content, not `<html>`, `<head>`, `<body>`

## CSS Guidelines

- Use CSS variables from `:root` for consistency
- Mobile-first responsive design
- Keep specificity low

## JavaScript Guidelines

- Vanilla JS only (no jQuery, no frameworks)
- Use HTMX events for dynamic behavior
- Keep it minimal

## Critical Rules for AI Agents

1. **No build tools** - This is a static site, no webpack/vite/etc.
2. **No npm dependencies** - Everything is loaded via `<script>` tags
3. **Prefer HTMX** over custom JavaScript for interactions
4. **Keep it simple** - The goal is simplicity, not complexity
5. **Test locally** - Run `./serve.sh` to test changes

## Deployment

Static hosting only - no server-side processing needed:
- GitHub Pages
- Netlify
- Vercel
- Cloudflare Pages
- Any web server
