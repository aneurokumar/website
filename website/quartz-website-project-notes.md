---
public: true
title: Quartz Build and Changelog
tags:
  - git
  - website
created: 2024-11-19
last-modified: 2025-01-01
---
**Related:** Obsidian MOC, [[./Programming MOC|Programming MOC]], Career Development & Business MOC

---
 I've been wanting to have an actual hosted website for so long, and since I got into Obsidian/Second Brain, I've wanted to share this as well. Thanks to Jacky Zhao for this amazing free alternative and the Quartz Discord community!
# Build V2.0
**Services/Platforms**
- Obsidian Sync (paid) - worry-free syncing of my vault across all my devices
- Github Pages - hosts the site
**Community Plugins**
- Enveloppe
	- pushes notes and changes to my Github repo
	- great for Dataview conversation to markdown
- Linter - to automatically update YAML
**Custom Github Actions**
* organize-notes.yml
	* copies all notes from `website` folder into `content` folder
	* moves notes inside `content` folder to subfolders `Articles`, `Book Notes`, or `Second Brain` based on `article` or `book` present in YAML frontmatter, and remaining notes into `Second Brain`

# Ideas and To-Do's
sorted from (what I think is) decreasing levels of diffculty

- [ ] Notion skills and projects visual database replica in quartz (via [Clever Cloud](https://www.clever-cloud.com/pricing/)?)
	- [ ] make it viewable in profile readme file
- [ ] Add Headers on top for different "categories" or different landing pages
- [ ] Recent notes - find out how I want to incorporate recent notes added

# Changelog
Inspired by Eilleen's changelog! Turns out that GLPs are pretty similar to good coding practices.
### Deploy and Build Quartz manual trigger option
on `.github/workflows/deploy.yml`
* `deploy.yml` runs whenever my `organize-notes.yml` workflow finished
* `deploy.yml` can now be manually triggered in the Github Actions UI

```yaml
name: Deploy Quartz site to GitHub Pages
 
on:
  workflow_dispatch:
  workflow_run:
    workflows: ["Move and Organize Content"]
    types:
      - completed
    branches:
      - v4
```
### Automatically organize notes via YAML frontmatter
on `organize-notes.yml`
* Organizes notes into a custom structure different than my local vault based on YAML frontmatter. 
* Launches the Deploy Quartz workflow at the end

```yaml

      - name: Setup content structure
        run: |
          mkdir -p content/{Articles,"Book Notes","Second Brain"}
          find content/Articles -type f ! -name "index.md" -delete || true
          find content/"Book Notes" -type f ! -name "index.md" -delete || true
          find content/"Second Brain" -type f ! -name "index.md" -delete || true

      - name: Copy files from website to content
        run: cp -r website/* content/

      - name: Create and run organization script
        run: |
          echo '#!/bin/bash
          
          process_file() {
              local file="$1"
              
              if [[ "$(basename "$file")" == "index.md" ]] || [[ ! "$file" =~ \.md$ ]]; then
                  return
              fi
              
              yaml_content=$(sed -n "/^---$/,/^---$/p" "$file")
              echo "Processing file: $file"
              
              if echo "$yaml_content" | grep -q "^[[:space:]]*- book$"; then
                  mv "$file" "content/Book Notes/$(basename "$file")"
                  echo "Moved $(basename "$file") to Book Notes"
              elif echo "$yaml_content" | grep -q "^[[:space:]]*- article$"; then
                  mv "$file" "content/Articles/$(basename "$file")"
                  echo "Moving $(basename "$file") to Articles"
              else
                  mv "$file" "content/Second Brain/$(basename "$file")"
                  echo "Moving $(basename "$file") to Second Brain"
              fi
          }

          find content -type f -name "*.md" | while read -r file; do
              process_file "$file"
          done

          echo "=== Organization Summary ==="
          echo "Articles: $(find content/Articles -type f ! -name "index.md" | wc -l) files"
          echo "Book Notes: $(find content/Book Notes -type f ! -name "index.md" | wc -l) files"
          echo "Second Brain: $(find content/Second Brain -type f ! -name "index.md" | wc -l) files"
          ' > organize-notes.sh

          chmod +x organize-notes.sh
          ./organize-notes.sh

      - name: Commit and push changes
        run: |
          git add -A content/
          git status
          if git diff --staged --quiet; then
            echo "No changes to commit"
          else
            git commit -m "Move and organize content files" || true
            git pull --rebase origin v4
            git push origin v4
          fi

      - name: Deploy with Quartz
        run: npx quartz sync

```

### Plugin: Linter for updating YAML frontmatter

### Plugin: Enveloppe for Github sync

Github Config
* Github Action name: organize-notes.yml
	* triggers the organize-notes.yml workflow after it's finished updating all the notes!
File Paths
* Root folder: `aneurokumar/website/website`
	* was having trouble defining the `aneurokumar/website` path as free notes, so I might name this as `import` or something
Content
* Internal Links: Enabled
* Unlink unshared files: Enabled
* Dataview: Enabled
Attachments & embeds
* Send Linked files: Enabled
* Forced updatesL Enabled
* Transfer attachments: Enabled
Plugin settings
* Sharekey: `public`
### V2 Workflow
1. Github Publish workflow
2. Github Actions workflow (Move Files to Content)
### V1 Workflow (Archived)
These are no longer used, but here so I can see where I started from!
#### automatically move files to content folder v1
I wanted to automatically copy the files to the content folder, and try to organize them. This script wasn't great, but it's how I discovered Github Actions. It was also when I first started learning Shell

```yaml
name: Move Files to Content Folder

on:
  push:
    paths:
      - 'website/**' # Trigger only if files in this folder are updated
  workflow_dispatch:  # Allow manual trigger via GitHub UI

jobs:
  move-files:
    runs-on: ubuntu-latest

    steps:
      # Step 1: Checkout repository
      - name: Checkout repository
        uses: actions/checkout@v4

     #compatible node.js
      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '20'  # Specify a compatible Node.js version
          cache: 'npm'
      #node dependencies just in case
      - name: Install dependencies
        run: npm install

      # Step 2: Create content directory if it doesn't exist
      - name: Ensure content folder exists
        run: mkdir -p website/content

      # Step 3: Clean up content folder
      - name: Clean up content folder
        run: rm -rf website/content/*

      # Step 4: move files from website subfolder to content subfolder
      - name: Move files to website/content
        run: |
          cp -r website/* content/
      ## WIP: reorganize folders 
      - name: Reorganize folders for navigation
	    run: |
		  mkdir -p Articles "Book Notes" "Second Brain"
		  grep -l '#article' content/*.md | xargs -I{} mv "{}" content/Articles/
		  grep -l '#book' content/*.md | xargs -I{} mv "{}" content/"Book Notes"/
		  find content -maxdepth 1 -type f -name '*.md' ! -name 'cv-portfolio.md' -exec mv {} content/"Second Brain"/ \;
		  mv content/cv-portfolio.md content/
  
      # Step 5: commit and push changes
      - name: Commit and push changes
        run: |
          git config user.name "aneurokumar"
          git config user.email "aneurokumar@gmail.com"
          git add . -A website/content/
          git commit -m "Move updated files to content folder" || true
          git push origin v4
        
      # Step 6: deploy with quartz 
      - name: Deploy with Quartz
        run: |
          npx quartz sync 

```

#### Manually syncing local second brain to github
First thing I did when I started with Quartz! The goal was just to get it running
1. push full second brain to a private github repo as backup
 2. sync local second brain to local quartz folder via script
 3. navigate to quartz folder and execute `npx quartz sync` to sync quartz to public github repo
### High Impact To do's
- [x] Write the Welcome page
- [x] Create "About Second Brain" page
- [ ] Input CV as raw text
- [ ] create education links
	- [ ] UTK
	- [ ] CNAM
- [ ] create job links
	- [ ] ICM
	- [ ] Scipio
	- [ ] Biolabs
- [ ] create volunteer and Project links
	- [ ] volunteer
		- [ ] WICE
		- [ ] Pardesi
		- [ ] AWOL
		- [ ] Bits n Bio
	- [ ] Projects
		- [ ] Newsletter
		- [ ] Figure 1 Labs
		- [ ] Website
