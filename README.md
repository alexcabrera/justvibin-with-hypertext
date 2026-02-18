# Static HTML + HTMX Starter

A simple, fast static website template with HTMX for dynamic interactions. No build step required.

## Quick Start

### Using justvibin (Recommended)

```bash
# Install justvibin via Homebrew
brew tap alexcabrera/tap
brew install justvibin

# Create a new project
justvibin new mysite --template hypertext

# Start a local server
cd mysite
justvibin start
```

### Manual Setup

```bash
# Clone the template
git clone https://github.com/alexcabrera/justvibin-with-hypertext.git mysite
cd mysite

# Start any static file server
python3 -m http.server 8000
# or
npx serve
```

Then open http://localhost:8000 in your browser.

## Project Structure

```
├── index.html          # Main page
├── css/
│   └── style.css       # Stylesheet
├── js/
│   └── main.js         # Custom JavaScript
├── lib/
│   └── htmx.min.js     # HTMX library (v2.0.4)
└── partials/           # HTML fragments for HTMX
    ├── hello.html
    └── more.html
```

## Features

- **Zero Build Step** - Just HTML, CSS, and JavaScript
- **HTMX Included** - Dynamic interactions without a framework
- **Responsive** - Mobile-friendly out of the box
- **Fast** - No heavy frameworks or dependencies
- **Easy Deployment** - Deploy to any static hosting

## HTMX Usage

HTMX lets you add dynamic behavior using HTML attributes:

```html
<!-- Load content on click -->
<button hx-get="/partials/content.html" 
        hx-target="#container">
    Load Content
</button>

<!-- Submit form without page refresh -->
<form hx-post="/api/submit" hx-swap="outerHTML">
    <input name="email" type="email">
    <button type="submit">Subscribe</button>
</form>

<!-- Load content on page load -->
<div hx-get="/partials/sidebar.html" 
     hx-trigger="load">
</div>
```

See [htmx.org](https://htmx.org) for full documentation.

## Deployment

This is a static site that can be deployed anywhere:

- **GitHub Pages** - Push to a `gh-pages` branch
- **Netlify** - Drag and drop the folder
- **Vercel** - Connect your repository
- **Cloudflare Pages** - Connect your repository
- **Any web server** - Just copy the files

## License

MIT
