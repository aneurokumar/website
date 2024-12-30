---
public: true
title: 
tags:
  - molbio
  - sequencing
  - primers
  - pcr
created: 19-05-2023
last-modified: 27-12-2024
---
**Related**: Restriction Cloning, ICM - Assistante Ingénieur

---
# Designing PCR Primers

Things to consider when designing primers
* length of primer
* annealing + melting temperatures
* GC content of primer
* the secondary structure of the primer
#### length of primer
* 18-24 base pairs
	* if too short: can produce more nonspecific DNA amplification -> it could produce dna that's not what you want just because of the point where it stops accounting for unique base pairs -> some of the dna products are not what you were trying to amplify
	* if too long: can result in slower hybridization rates
#### anneling/melting
* annealing: annealing temp allows the primer to base pair with the DNA
* melting: melting temps where half of the primers will dissociate from the DNA
* want annealing temp to be 5 degrees below the melting
	* ANNEAL = MELT - 5 degrees
	* lowering the temperature even more risks nonspecific binding
* the two primers (Forward/Reverse) ideally have similar melting temps
	* online calculators/tools for this (thermofisher etc.)
	* manually: +4 for every G or C, and +2 for every A or T
		* example primer: GCAGT AGCAT GTCAC ATATG
		* calculation: 4+4+4+2+4+2+2+4+4+2+2+4+2+4+2+4+2+2+2+2+4
		* it's melting temp: 58 degree Celcius
#### GC content ~40%-60%
* idea GC content of primers are between 40-60%
* GC clamp at 3' end of primer: include 2-3 G's/C's if possible
* GC bps are useful because they have 3H bons (vs 2H bonds for AT)
	* GC pairs provide stronger binding to the template dna
#### secondary structure




---
# References
https://www.youtube.com/watch?v=mcOwlFVEino
[How to design primers for PCR | INTEGRA (integra-biosciences.com)](https://www.integra-biosciences.com/global/en/blog/article/how-design-primers-pcr)