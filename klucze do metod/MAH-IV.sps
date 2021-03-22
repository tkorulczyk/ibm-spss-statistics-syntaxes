
 * MACH-IV
Pilch, I. (2008). Makiawelista wśród ludzi. Nowe badania. Psychologia Społeczna, 3(3 (8)), 231-242.


**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

RECODE MAH_3 MAH_6 MAH_10 MAH_16 MAH_7 MAH_9 MAH_11 MAH_14 MAH_17 MAH_4  (1=5) (2=4) (3=3) (4=2) (5=1) 
INTO MAH_11R MAH_14R MAH_17R MAH_4R MAH_3R MAH_6R MAH_10R MAH_16R MAH_7R MAH_9R.
EXECUTE.


******
* Formowanie skali
* Skala uśredniona

* Wynik Ogólny

COMPUTE MAH=mean(MAH_12, MAH_15, MAH_2, MAH_1, MAH_3R, MAH_6R, MAH_10R, MAH_16R, MAH_7R, 
MAH_5, MAH_8, MAH_18, MAH_13, MAH_20, MAH_11R, MAH_14R, MAH_17R, MAH_4R).
EXECUTE.

* Taktyki (jak sobie radzić z ludźmi)

COMPUTE MAHTak=mean(MAH_12, MAH_15, MAH_2, MAH_1, MAH_3R, MAH_6R, MAH_10R, MAH_16R, MAH_7R).
EXECUTE.


* Moralność

COMPUTE MAHMoral=mean(MAH_19, MAH_9R).
EXECUTE.


* Poglądy na naturę ludzką

COMPUTE MAHPogl=mean(MAH_19, MAH_9R, MAH_5, MAH_8, MAH_18, MAH_13, MAH_20, MAH_11R, MAH_14R, MAH_17R, MAH_4R).
EXECUTE.


******
* Skala zsumowana

* Wynik Ogólny

COMPUTE MAH=sum(MAH_12, MAH_15, MAH_2, MAH_1, MAH_3R, MAH_6R, MAH_10R, MAH_16R, MAH_7R, 
MAH_5, MAH_8, MAH_18, MAH_13, MAH_20, MAH_11R, MAH_14R, MAH_17R, MAH_4R).
EXECUTE.

* Taktyki (jak sobie radzić z ludźmi)

COMPUTE MAHTak=sum(MAH_12, MAH_15, MAH_2, MAH_1, MAH_3R, MAH_6R, MAH_10R, MAH_16R, MAH_7R).
EXECUTE.


* Moralność

COMPUTE MAHMoral=sum(MAH_19, MAH_9R).
EXECUTE.


* Poglądy na naturę ludzką

COMPUTE MAHPogl=sum(MAH_19, MAH_9R, MAH_5, MAH_8, MAH_18, MAH_13, MAH_20, MAH_11R, MAH_14R, MAH_17R, MAH_4R).
EXECUTE.

VARIABLE LABELS MAH 'Makiawelizm' MAHTak 'Taktyki' MAHMoral 'Moralność' MAHPogl 'Poglądy na naturę ludzką'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************

* Wynik Ogólny

RELIABILITY
  /VARIABLES=MAH_12 MAH_15 MAH_2 MAH_1 MAH_3R MAH_6R MAH_10R MAH_16R MAH_7R 
MAH_5 MAH_8 MAH_18 MAH_13 MAH_20 MAH_11R MAH_14R MAH_17R MAH_4R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Taktyki (jak sobie radzić z ludźmi)

RELIABILITY
  /VARIABLES=MAH_12 MAH_15 MAH_2 MAH_1 MAH_3R MAH_6R MAH_10R MAH_16R MAH_7R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Moralność

RELIABILITY
  /VARIABLES=MAH_19 MAH_9R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Poglądy na naturę ludzką

RELIABILITY
  /VARIABLES=MAH_19 MAH_9R MAH_5 MAH_8 MAH_18 MAH_13 MAH_20 MAH_11R MAH_14R MAH_17R MAH_4R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.
