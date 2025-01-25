---
public: true
title: 
tags:
  - javascript
  - programming
  - 3xp
created: 01-01-2025
last-modified: 18-01-2025
---
**Related:** [[./quartz-website-project-notes|quartz-website-project-notes]]

---

> [!summary] 3XP Summary
> - Wanted to add "modified DD-MM-YYYY" for all my published notes
> - Discovered `lastmod.ts` used date formats incompatible with mine
> - Modified existing `coerceDate` to reformat, and added it next to "created" label

# Problem
My frontmatter structure isn't automatically compatible with the script that shows `created on 01 Jan 2022, modified on 01 Jan 2025` because the dates are in DD-MM-YYYY format.

I'd already gone through most of my notes to add YAML frontmatter, and did not want to do that again! Javascript is still new to me, but I knew it could do functions like Python. **Maybe there's a way to transform the dates I have into dates for Quartz to process?**

# Process
**Which file(s) control(s) dates?**
I'd already asked in the [Quartz discard](https://discord.com/invite/quartz-community-920278155510554675) how to find the file that hosts the 404 error text. I got some tips on how to navigate new-to-me repo's, so I went spelunking into the `plugins` folder with high hopes.

After comparing the documentation and [another digital garden](https://quartz.eilleeenz.com/book-club/House-of-Leaves-%F0%9F%8D%82), I discovered that whatever edit I needed to make was in the `lastmod.ts` file

**How are dates processed by default?**
* After importing relevant libraries/repos, it sets the default of where the date data can come from
* `coerceDate` is a function that parses the date strings as objects so JS can manipulate/handle them
* `CreatedModifiedDate` is a Quartz plugin (hosted in the `lastmod.ts` file) that takes the date information from my markdown files from different places (YAML frontmatter, git file tracking, etc). So now the code has my .md files' dates
* the files' dates are then changed via `coerceDate`, and this version of the notes are deployed to the website

> [!IMPORTANT] Next Steps
> - Write/modify a function(s) to detect DD-MM-YYYY format in my notes and transform them into YYYY-MM-DD (compatible with Quartz)
> - Modify the Linter plugin I use so all dates are automatically linted with the YYYY-MM-DD format
> - Modify my note templates to use the YYYY-MM-DD date format

**Modify `coerceDate`  in `lastmod.ts` to correct date formats**
I didn't need to change much:
* add an if/then statement that if it finds dates in DD-MM-YYYY format, then change it to YYYY-MM-DD and store *that* as the date object for downstream usage
* make sure the date reads like a string for file.date.data so the errors don't accidentally throw!

```javascript
function coerceDate(fp: string, d: any): Date { //nothing changed here
  
  if (typeof d === 'string' && /^\d{2}-\d{2}-\d{4}$/.test(d)) {
      // if notes are in xx-xx-xxxx pattern 
      const [day, month, year] = d.split('-');
      // treat it as day-month-year
      d = '${year}-${month}-${day}'
      // and reformat it as year-month-day in xxxx-xx-xx format
```

**Modify `fileData.dates` in `ContentMeta.tsx` to show correct dates and labels**

```javascript
if (fileData.dates) {
        segments.push("Neurogenesis on " + formatDate(fileData.dates.created))
        segments.push("Signal refined on " + formatDate(fileData.dates.modified))
      }

```
# Product

> [!Success] Success!
> 

Now all the pages have their dates updated!!

Example screenshot showing for the note [[./perform-at-80-percent-to-master-skills|perform-at-80-percent-to-master-skills]].

![[./updating date format for files in javascript2025-01_12.png|updating date format for files in javascript2025-01_12.png]]


