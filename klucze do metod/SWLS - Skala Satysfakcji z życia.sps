* Encoding: UTF-8.

****************************************************************************************************************
* Skala Satysfakcji z życia
****************************************************************************************************************

compute SWLS = sum(SWLS1, SWLS2, SWLS3, SWLS4, SWLS5).
execute.

VARIABLE LABELS SWLS 'Satysfakcja ogólna z życia'.
execute.

* Satysfakcja z życia

RELIABILITY
  /VARIABLES=SWLS1 SWLS2 SWLS3 SWLS4 SWLS5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.
