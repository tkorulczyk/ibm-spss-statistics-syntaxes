* Encoding: UTF-8.

****************************************************************************************************************
* Skala Satysfakcji z życia
****************************************************************************************************************

compute SSP = sum(SSP1, SSP2, SSP3, SSP4, SSP5).
execute.

VARIABLE LABELS SSP 'Satysfakcja z pracy'.
execute.

* Satysfakcja z pracy

RELIABILITY
  /VARIABLES=SSP1 SSP2 SSP3 SSP4 SSP5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.
