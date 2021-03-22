* Encoding: UTF-8.

 * SES
Łaguna, M., Lachowicz-Tabaczek, K., & Dzwonkowska, I. (2007). Skala samooceny SES Morrisa Rosenberga–polska adaptacja metody. Psychologia Społeczna, 2(4), 164-176.


**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

*** Odwracanie całej skali

RECODE SES1 SES2 SES3 SES4 SES5 SES6 SES7 SES8 SES9 SES10  (1=4) (2=3) (3=2) (4=1).
EXECUTE.



RECODE SES3 SES5 SES8 SES9 SES10  (1=4) (2=3) (3=2) (4=1) INTO SES3R SES5R SES8R SES9R SES10R.
EXECUTE.



******
* Formowanie skali
* Skala uśredniona

COMPUTE Samoocena=mean(SES1, SES2, SES4, SES6, SES7, SES3R, SES5R, SES8R, SES9R, SES10R).
EXECUTE.

* Skala zsumowana

COMPUTE Samoocena=sum(SES1, SES2, SES4, SES6, SES7, SES3R, SES5R, SES8R, SES9R, SES10R).
EXECUTE.

VARIABLE LABELS  Samoocena 'Samoocena ogólna'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=SES1 SES2 SES4 SES6 SES7 SES3R SES5R SES8R SES9R SES10R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




