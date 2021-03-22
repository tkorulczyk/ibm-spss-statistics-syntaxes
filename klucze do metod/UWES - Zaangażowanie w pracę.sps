* Encoding: UTF-8.

* Wigor (vigor).
RELIABILITY
  /VARIABLES=UWES1 UWES2 UWES5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* oddanie się pracy (dedication). 
RELIABILITY
  /VARIABLES=UWES3 UWES4 UWES7 
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* zaabsorbowanie (absorbtion).
RELIABILITY
  /VARIABLES=UWES6  UWES8 UWES9
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


* Wigor (vigor) 

compute Vigor= sum(UWES1, UWES2, UWES5).
execute.

* oddanie się pracy (dedication). 

compute Dedication= sum(UWES3, UWES4, UWES7).
execute.

* zaabsorbowanie (absorbtion) 

compute Absorption= sum(UWES6,  UWES8, UWES9).
execute.

* Cała skala

compute UWES= sum(UWES1, UWES2, UWES5, UWES3, UWES4, UWES7, UWES6,  UWES8, UWES9).
execute.

VARIABLE LABELS Vigor 'Wigor' Dedication 'Oddanie się pracy' Absorption 'Zaabsorbowanie' UWES 'Zaangażowanie w pracę'.
execute.
