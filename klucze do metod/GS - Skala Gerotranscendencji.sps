* Encoding: UTF-8.

* Klucz do Skali Gerotranscendencji GS-25-PL
* Rekodowanie danych
***********************************************************************************************************************************

RECODE GS5 GS7 GS12 GS13 GS14 GS17 GS19 GS20 GS23 GS24 GS25 (1=6) (2=5) (3=4) (4=3) (5=2) (6=1) 
    INTO GS5_R GS7_R GS12_R GS13_R GS14_R GS17_R GS19_R GS20_R GS23_R GS24_R GS25_R.
EXECUTE.

* Wyniki w podskalach


COMPUTE GS_Kos = GS1 + GS2 + GS3 + GS4 + GS5_R + GS6 + GS7_R + GS8 + GS9 + GS10.
EXECUTE.

COMPUTE GS_Koh = GS11 + GS12_R + GS13_R + GS14_R + GS15 + GS16.
EXECUTE.

COMPUTE GS_Sam = GS17_R + GS18 + GS19_R + GS20_R + GS21 + GS22 + GS23_R + GS24_R + GS25_R.
EXECUTE.

COMPUTE GS = GS1 + GS2 + GS3 + GS4 + GS5_R + GS6 + GS7_R + GS8 + GS9 + GS10 + GS11 + GS12_R + GS13_R + GS14_R + GS15 + GS16 + GS17_R + GS18 + GS19_R + GS20_R + GS21 + GS22 + GS23_R + GS24_R + GS25_R.
EXECUTE.

VARIABLE LABELS GS 'GS wynik ogólny' GS_Kos 'Wymiar kosmiczny' GS_Koh 'Wymiar koherencji' GS_Sam 'Wymiar_samotności'.
execute.


SET Printback=ON.

* Rzetelność Wymiar kosmiczny

RELIABILITY
  /VARIABLES=GS1 GS2 GS3 GS4 GS5_R GS6 GS7_R GS8 GS9 GS10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Rzetelność Wymiar koherencji

RELIABILITY
  /VARIABLES=GS11 GS12_R GS13_R GS14_R GS15 GS16
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Rzetelność Wymiar samotności

RELIABILITY
  /VARIABLES=GS17_R GS18 GS19_R GS20_R GS21 GS22 GS23_R GS24_R GS25_R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

RELIABILITY
  /VARIABLES=GS1 GS2 GS3 GS4 GS5_R GS6 GS7_R GS8 GS9 GS10 GS11 GS12_R GS13_R 
  GS14_R GS15 GS16 GS17_R GS18 GS19_R GS20_R GS21 GS22 GS23_R GS24_R GS25_R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.
