* Encoding: UTF-8.

 * FCZ-KT
Zawadzki, B., & Strelau, J. (1997). Formalna charakterystyka zachowania-kwestionariusz temperamentu (FCZ-KT): 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że Tak = 1, Nie = 2, to należy skorzystać z tej części syntaksu, 
aby odpowiedzi na Nie przybrały wartość 0, zgodnie z rekomendacją w metodzie

RECODE LOC_1 LOC_2 LOC_3 LOC_4 LOC_5 LOC_6 LOC_7 LOC_8 LOC_9 LOC_10 LOC_11 LOC_12 
LOC_13 LOC_14 LOC_15 LOC_16 LOC_17 LOC_18 LOC_19 LOC_20 LOC_21 LOC_22  LOC_23 LOC_24 (2=0) (1=1).
EXECUTE.


******
* Odwrócenie itemów

RECODE LOC_4 LOC_5 LOC_10 LOC_14  LOC_17 LOC_18 LOC_19 LOC_21 LOC_22  LOC_23 LOC_24 (1=0) (0=1) 
INTO LOC_4R LOC_5R LOC_10R LOC_14R  LOC_17R LOC_18R LOC_19R LOC_21R LOC_22R  LOC_23R LOC_24R.
EXECUTE.


******
* Formowanie skali
* Skale uśrednione


* Skala umiejscowienia kontroli

COMPUTE LOC=sum(LOC_1, LOC_2, LOC_4R, LOC_6, LOC_9, LOC_11, LOC_12, 
LOC_13, LOC_15, LOC_18R, LOC_20, LOC_21R, LOC_22R, LOC_24R).
EXECUTE.


* Skala kłamstwa

COMPUTE SK_KŁAM=sum(LOC_3, LOC_5R, LOC_7, LOC_8, LOC_10R,
LOC_14R, LOC_16, LOC_17R, LOC_19R, LOC_23R).
EXECUTE.

VARIABLE LABELS LOC 'Umiejscowienie kontroli'
SK_KŁAM 'Skala kłamstwa'.


**************************************************************************
* Rzetelności skali
**************************************************************************


* Skala umiejscowienia kontroli

RELIABILITY
  /VARIABLES=LOC_1 LOC_2 LOC_4R LOC_6 LOC_9 LOC_11 LOC_12 
LOC_13 LOC_15 LOC_18R LOC_20 LOC_21R LOC_22R LOC_24R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skala kłamstwa

RELIABILITY
  /VARIABLES=LOC_3 LOC_5R LOC_7 LOC_8 LOC_10R
LOC_14R LOC_16 LOC_17R LOC_19R LOC_23R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

