* Encoding: UTF-8.



**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

*** Odwracanie całej skali

RECODE Zadow_Szk4 Zadow_Szk5 Zadow_Szk8  (1=6) (2=5) (3=4) (4=3) (5=2) (6=1) INTO Zadow_Szk4R Zadow_Szk5R Zadow_Szk8R.
EXECUTE.



******
* Formowanie skali

* Skala zsumowana

COMPUTE ZADOW_SZK=sum(Zadow_Szk1, Zadow_Szk2, Zadow_Szk3, Zadow_Szk4R, Zadow_Szk5R,
Zadow_Szk6, Zadow_Szk7, Zadow_Szk8R).
EXECUTE.




VARIABLE LABELS ZADOW_SZK 'Zadowolenie ze szkoły'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=Zadow_Szk1 Zadow_Szk2 Zadow_Szk3 Zadow_Szk4R Zadow_Szk5R
Zadow_Szk6 Zadow_Szk7 Zadow_Szk8R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




