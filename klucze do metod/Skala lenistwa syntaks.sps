* Encoding: UTF-8.

****************************************************************************************************
* Autorzy metody: Michał Korulczyk, Marcin Korulczyk

* Opracowanie syntaksu: Tomasz Korulczyk

* Jest to plik syntaksu do programu IBM SPSS Statstics dla Skali Lenistwa skonstruowanej 
i opracowanej na potrzeby doktoratu mgr Marcina Korulczyka 

* Dozwolony użytek dla pracowników, doktorantów i studentów KUL do celów naukowych

* Rekomendowane kodowanie skali LN1, LN2, ..., LN14
****************************************************************************************************


* Rekodowanie pozycji

RECODE LN2 LN4 LN6 LN8 LN10 LN11 
(1=5) (2=4) (3=3) (4=2) (5=1) INTO 
LN2R LN4R LN6R LN8R LN10R LN11R.
EXECUTE.

* Obliczanie skali (uśrednionej)

COMPUTE Lenistwo=mean(LN1, LN2R, LN3, LN4R, LN5, LN6R, LN7, LN8R, LN9, LN10R, LN11R, LN12, LN13, LN14).
EXECUTE.


* Obliczanie skali (sumowanej)

COMPUTE Lenistwo=sum(LN1, LN2R, LN3, LN4R, LN5, LN6R, LN7, LN8R, LN9, LN10R, LN11R, LN12, LN13, LN14).
EXECUTE.


COMPUTE LenistwoAkt=sum(LN2R, LN4R, LN6R, LN8R, LN10R, LN11R).
COMPUTE LenistwoZniech=sum(LN5, LN7, LN3, LN9, LN13).
COMPUTE LenistwoWycBeh=sum(LN1, LN12, LN14).
EXECUTE.



* Obliczanie rzetelności dla skali

RELIABILITY
  /VARIABLES=LN1 LN2R LN3 LN4R LN5 LN6R LN7 LN8R LN9 LN10R LN11R LN12 LN13 LN14
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


******************************************
* Analiza czynnikowa pozycji

FACTOR
  /VARIABLES LN1 LN2R LN3 LN4R LN5 LN6R LN7 LN8R LN9 LN10R LN11R LN12 LN13 LN14
  /MISSING LISTWISE 
  /ANALYSIS  LN1 LN2R LN3 LN4R LN5 LN6R LN7 LN8R LN9 LN10R LN11R LN12 LN13 LN14
  /PRINT INITIAL KMO EXTRACTION ROTATION
  /FORMAT SORT BLANK(.40)
  /PLOT EIGEN
  /CRITERIA FACTORS(3) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.


******
* Obliczanie rzetelności podskal
* Podskala Nieaktywności

RELIABILITY
  /VARIABLES=LN2R LN4R LN6R LN8R LN10R LN11R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


* Podskala Zniechęcenia

RELIABILITY
  /VARIABLES=LN5 LN7 LN3 LN9 LN13
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


* Podskala Wyciszenia behawioralnego

RELIABILITY
  /VARIABLES=LN1 LN12 LN14
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

