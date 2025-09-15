# Gayane Chilingaryan - Personal Website

A Hugo-based personal website using the Paige theme, featuring research publications, CV, and contact information.

## Prerequisites

This project requires the following software to be installed on your macOS system:

- **Hugo** (Extended version)
- **Go** (version 1.25.1 or later)
- **Sass** (for CSS preprocessing)
- **Git** (for version control)

## Setup Instructions

### 1. Install Required Software

```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Hugo Extended, Go, and Sass
brew install hugo
brew install go
brew install sass/sass/sass
```

### 2. Clone and Setup the Project

```bash
# Navigate to your desired directory
cd /path/to/your/projects

# Clone the repository (replace with your actual repository URL)
git clone <your-repository-url> gayane-paige-2
cd gayane-paige-2

# Install Go modules (this will download the Paige theme)
go mod tidy
```

## Running the Project

### Include drafts

For development with live reload and draft content:

```bash
# Start development server with drafts enabled
hugo server -D
```

**What the `-D` flag does:**
- Includes draft content (pages with `draft: true` in front matter)
- Shows future-dated content
- Enables live reload when files change
- Perfect for development and content creation

### Without drafts

For production-like preview (without drafts):

```bash
# Start server without drafts
hugo server

# Or with specific port
hugo server --port=8080
```

### Build Static Site

To generate the static site files:

```bash
# Build the site (outputs to ./public/)
hugo

# Build with drafts included
hugo -D

# Build with verbose output
hugo -v
```

## Project Structure

```
gayane-paige/
├── content/           # Site content (markdown files)
│   ├── research/      # Research publications
│   ├── cv/           # CV/Resume content
│   └── contact/      # Contact information
├── layouts/          # Custom Hugo templates
├── assets/           # CSS, JS, and other assets
├── static/           # Static files (images, etc.)
├── data/             # Data files (YAML/JSON)
├── hugo.toml         # Hugo configuration
├── go.mod            # Go module dependencies
└── public/           # Generated static site (after build)
```

## Configuration

The site is configured via `hugo.toml`:
- **Theme:** Paige (github.com/willfaught/paige)
- **Base URL:** Configured for production deployment
- **Custom CSS:** Located in `assets/css/custom.css`

## CV

CV contents are in the `data/cv.yaml` file.

## Troubleshooting

**Common Issues:**

- **Public folder issues:** Sometimes the `public/` folder needs to be cleaned: `rm -rf public/ && hugo`
- **Go modules not downloading:** `go clean -modcache && go mod tidy`
- **Theme not loading:** `hugo mod clean && hugo mod get`
- **Port already in use:** `hugo server --port=8080`

## Deployment

After building with `hugo`, the static files in the `public/` directory can be deployed to any web server or static hosting service like:
- GitHub Pages
- Netlify
- Vercel
- AWS S3
- Any web server

## Support

For Hugo-specific issues, refer to the [Hugo documentation](https://gohugo.io/documentation/).
For the Paige theme, check the [Paige theme documentation](https://github.com/willfaught/paige).
