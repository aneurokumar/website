---
public: true
title: 
tags:
  - labmanagement
  - inventory
created: 2025-01-16
last-modified: 2025-02-04
---
**Related:** Biolabs - Lab Ops Associate  
  
---  
  
  
> [!Summary] Summary  
> Used this to create a sequence of barcodes for asset management.  
  
  
This is a pain in the butt process, which I'm sure can be much easier, but using an [online barcode generator](https://barcode.tec-it.com/en/Code128), I created a custom sequence of text that was linked to a Code128 type barcode. What makes it inefficient is that it can only generate 10 codes at a time on the free version, so generate 100 barcodes at a time whenever you need it! (I started with generating 200 while listening to podcast)  
  
![[./encoding barcodes to show text-1.png|500]]  
  
![[./encoding barcodes to show text-2.png|500]]  
  
Fill in any prefixes or suffixes, the start value and end value and the increment it should use. The Mask as placeholders for 0's if you need them in your barcoding. Click Generate.  
  
On the right side, it should output the first barcode as an example. Download the zip, extract it, and organize it in your folder system.   
  
You can then use these barcodes to design more comprehensive things on Canva, and print them out on adhesive/label printer paper. :)  
  
**Optional: bulk downloading and renaming via script**  
The file names will output like `1_PAR-00001` `2_PAR-0002` etc, instead of just the name of the label. So I moved all the files I downloaded into one folder on my computer, and ran a `bash` script to bulk rename them, then re-uploaded them to the Biolabs Hôtel-Dieu Sharepoint for safekeeping.  
  
```bash  
for file in /path/to/folder/*_*; do mv "$file" "${file#*_}"; done  
```  
  
  
## references/links  
*   
