* Encoding: UTF-8.


****************************************************************************************************************
* Skala Poczucia sensu życia
****************************************************************************************************************

RECODE MLQ9 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) INTO MLQ9_R.
EXECUTE.

compute MLQ_OSZ = sum(MLQ1, MLQ4, MLQ5, MLQ6, MLQ9_R).
compute MLQ_PSZ = sum(MLQ2, MLQ3, MLQ7, MLQ8, MLQ10).
execute.


VARIABLE LABELS MLQ_OSZ 'Obecność sensu życia' MLQ_PSZ 'Poszukiwanie sensu życia'.
execute.

SET Printback=ON.

* Obecność sensu życia

RELIABILITY
  /VARIABLES=MLQ1 MLQ4 MLQ5 MLQ6 MLQ9_R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Poszukiwanie sensu życia

RELIABILITY
  /VARIABLES=MLQ2 MLQ3 MLQ7 MLQ8 MLQ10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.