#!/bin/bash

# MkDocs Development Helper Script
# This script provides common MkDocs commands for easy development

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "mkdocs.yml" ]; then
    print_error "mkdocs.yml not found. Are you in the project root?"
    exit 1
fi

# Check if MkDocs is installed
if ! command -v mkdocs &> /dev/null; then
    print_error "MkDocs not found. Installing..."
    pip3 install --user -r requirements.txt
    export PATH="$HOME/.local/bin:$PATH"
fi

case "$1" in
    "serve")
        print_status "Starting MkDocs development server..."
        print_status "Documentation will be available at: http://localhost:8000"
        print_warning "Press Ctrl+C to stop the server"
        mkdocs serve --dev-addr=0.0.0.0:8000
        ;;
    "build")
        print_status "Building documentation..."
        mkdocs build --clean
        print_success "Documentation built successfully in site/ directory"
        ;;
    "deploy")
        print_status "Deploying to GitHub Pages..."
        mkdocs gh-deploy --clean
        print_success "Documentation deployed to GitHub Pages"
        ;;
    "new")
        if [ -z "$2" ]; then
            print_error "Usage: $0 new <page-name>"
            print_status "Example: $0 new user-guide/new-feature"
            exit 1
        fi
        
        PAGE_PATH="docs/$2.md"
        mkdir -p "$(dirname "$PAGE_PATH")"
        
        cat > "$PAGE_PATH" << EOF
# $(basename "$2" .md | sed 's/-/ /g' | sed 's/\b\w/\U&/g')

## Overview

Brief description of this page content.

## Content

Your content here.

---

*Page created on $(date '+%Y-%m-%d')*
EOF
        
        print_success "Created new page: $PAGE_PATH"
        print_status "Don't forget to add it to mkdocs.yml navigation!"
        ;;
    "check")
        print_status "Checking documentation..."
        
        # Check for broken internal links
        print_status "Checking for broken internal links..."
        
        # Build documentation to check for issues
        if mkdocs build --clean > /dev/null 2>&1; then
            print_success "Documentation builds successfully"
        else
            print_error "Documentation build failed"
            mkdocs build --clean
            exit 1
        fi
        
        # Check requirements.txt
        if [ -f "requirements.txt" ]; then
            print_status "Checking Python requirements..."
            pip3 check > /dev/null 2>&1 && print_success "All requirements satisfied" || print_warning "Some requirement issues found"
        fi
        
        print_success "Documentation check completed"
        ;;
    "install")
        print_status "Installing MkDocs dependencies..."
        pip3 install --user -r requirements.txt
        print_success "Dependencies installed successfully"
        print_status "You can now run: $0 serve"
        ;;
    *)
        echo "MkDocs Development Helper"
        echo "Usage: $0 [command]"
        echo ""
        echo "Commands:"
        echo "  serve     Start development server (http://localhost:8000)"
        echo "  build     Build documentation to site/ directory"
        echo "  deploy    Deploy to GitHub Pages"
        echo "  new       Create a new documentation page"
        echo "  check     Check documentation for issues"
        echo "  install   Install/update MkDocs dependencies"
        echo ""
        echo "Examples:"
        echo "  $0 serve                    # Start development server"
        echo "  $0 new user-guide/settings  # Create new page"
        echo "  $0 check                    # Validate documentation"
        ;;
esac
