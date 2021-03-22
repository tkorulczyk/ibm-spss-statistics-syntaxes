* Encoding: UTF-8.
* Oldenburski Kwestionariusz Wypalenia Zawodowego

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

RECODE OLBI2 OLBI3 OLBI4 OLBI6 OLBI8 OLBI9 OLBI11 OLBI12  (1=4) (2=3) (3=2) (4=1) 
INTO OLBI2R OLBI3R OLBI4R OLBI6R OLBI8R OLBI9R OLBI11R OLBI12R.
EXECUTE.


******
* Formowanie skali

compute OLBI_DISENG = mean(OLBI1, OLBI3R, OLBI6R, OLBI7, 
OLBI9R, OLBI11R, OLBI13, OLBI15).
compute OLBI_EXCH = mean(OLBI2R, OLBI4R, OLBI5, OLBI8R,
OLBI10, OLBI12R, OLBI14,  OLBI16).
execute.

compute OLBI = sum(OLBI1, OLBI3R, OLBI6R, OLBI7, 
OLBI9R, OLBI11R, OLBI13, OLBI15, OLBI2R, OLBI4R, OLBI5, OLBI8R,
OLBI10, OLBI12R, OLBI14,  OLBI16).
execute.


VARIABLE LABELS  OLBI_DISENG 'OBLI Brak zaangażowania (Disangagement)'
OLBI_EXCH 'Wyczerpanie (Exhaustion)' OLBI 'Wypalenie zawodowe'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************

* Brak zaangażowania (Disangagement).
RELIABILITY
  /VARIABLES=OLBI1 OLBI3R OLBI6R OLBI7 
OLBI9R OLBI11R OLBI13 OLBI15
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Wyczerpanie (Exhaustion).
RELIABILITY
  /VARIABLES=OLBI2R OLBI4R OLBI5 OLBI8R
OLBI10 OLBI12R OLBI14  OLBI16
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


