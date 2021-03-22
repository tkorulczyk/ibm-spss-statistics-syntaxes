* Encoding: UTF-8.
* Wielowymiarowa Skala Spostrzeganego Wsparcia Społecznego

******
* Formowanie skali

compute MSPSS = sum(MSPSS1, MSPSS2, MSPSS3, MSPSS4, MSPSS5, MSPSS6, MSPSS7, MSPSS8,
MSPSS9, MSPSS10, MSPSS11, MSPSS12).
execute.

VARIABLE LABELS  MSPSS 'Wielowymiarowa Skala Spostrzeganego Wsparcia Społecznego'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=MSPSS1 MSPSS2 MSPSS3 MSPSS4 MSPSS5 MSPSS6 MSPSS7 MSPSS8
MSPSS9 MSPSS10 MSPSS11 MSPSS12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



