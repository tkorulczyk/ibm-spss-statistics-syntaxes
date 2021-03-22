* Encoding: UTF-8.



**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

*** Odwracanie całej skali

RECODE ZANG_E5 ZANG_B5 ZANG_B6 ZANG_B7 (1=5) (2=4) (3=3) (4=2) (5=1) INTO ZANG_E5R ZANG_B5R ZANG_B6R ZANG_B7R.
EXECUTE.


******
* Formowanie skali

COMPUTE ZANG_E = sum(ZANG_E1, ZANG_E2, ZANG_E3, ZANG_E4, ZANG_E5R, ZANG_E6, ZANG_E7, ZANG_E8, ZANG_E9).
EXECUTE.


COMPUTE ZANG_B = sum(ZANG_B1, ZANG_B2, ZANG_B3, ZANG_B4, ZANG_B5R, ZANG_B6R, ZANG_B7R, ZANG_B8, ZANG_B9,
ZANG_B10, ZANG_B11, ZANG_B12).
EXECUTE.


COMPUTE ZANG_P = sum(ZANG_P1, ZANG_P2, ZANG_P3, ZANG_P4, ZANG_P5, ZANG_P6, ZANG_P7, ZANG_P8,
ZANG_P9, ZANG_P10, ZANG_P11, ZANG_P12).
EXECUTE.


COMPUTE ZANG_WN = sum(ZANG_E, ZANG_B, ZANG_P).
EXECUTE.


/* Nadawanie nazw podskalom */

VARIABLE LABELS ZANG_E 'Zaangażowanie w naukę: emocjonane' ZANG_B 'Zaangażowanie w naukę: behawioralne' 
ZANG_P 'Zaangażowanie w naukę: poznawcze' ZANG_WN 'Zaangażowanie w naukę'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************

/* Rzetelność - Skala zaagnażowania emocjonalnego */

RELIABILITY
  /VARIABLES=ZANG_E1 ZANG_E2, ZANG_E3 ZANG_E4 ZANG_E5R ZANG_E6 ZANG_E7 ZANG_E8 ZANG_E9
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Rzetelność - Skala zaagnażowania behawioralnego */

RELIABILITY
  /VARIABLES=ZANG_B1 ZANG_B2 ZANG_B3 ZANG_B4 ZANG_B5R ZANG_B6R ZANG_B7R ZANG_B8 ZANG_B9
ZANG_B10 ZANG_B11 ZANG_B12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Rzetelność - Skala zaagnażowania poznawczego */

RELIABILITY
  /VARIABLES=ZANG_P1 ZANG_P2 ZANG_P3 ZANG_P4 ZANG_P5 ZANG_P6 ZANG_P7 ZANG_P8
ZANG_P9 ZANG_P10 ZANG_P11 ZANG_P12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



/* Rzetelność - Skala zaagnażowania w naukę */

RELIABILITY
  /VARIABLES=ZANG_E1 ZANG_E2, ZANG_E3 ZANG_E4 ZANG_E5R ZANG_E6 ZANG_E7 ZANG_E8 ZANG_E9 
ZANG_B1 ZANG_B2 ZANG_B3 ZANG_B4 ZANG_B5R ZANG_B6R ZANG_B7R ZANG_B8 ZANG_B9 ZANG_B10 ZANG_B11 ZANG_B12 
ZANG_P1 ZANG_P2 ZANG_P3 ZANG_P4 ZANG_P5 ZANG_P6 ZANG_P7 ZANG_P8 ZANG_P9 ZANG_P10 ZANG_P11 ZANG_P12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


