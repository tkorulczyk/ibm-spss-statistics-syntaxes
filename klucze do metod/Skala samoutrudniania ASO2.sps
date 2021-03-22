* Encoding: UTF-8.

 * Skala Antycypacyjnej Strategii Obrony Samooceny (ASO)
Doliński, D., & Szmajke, A. (1994). Samoutrudnianie. Dobre i złe strony rzucania kłód pod własne nogi. Olsztyn: Polskie Towarzystwo Psychologiczne.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************
Oznaczenia: ASO - Skrót do Skala Samoutrudniania


RECODE ASO1 ASO7 ASO10 ASO12 ASO13 ASO14 ASO15 ASO18 ASO22 ASO21 ASO5 ASO17 
(1=5) (2=4) (3=3) (4=2) (5=1) 
INTO 
ASO1R ASO7R ASO10R ASO12R ASO13R ASO14R ASO15R ASO18R ASO22R ASO21R ASO5R ASO17R.
EXECUTE.

   
******
* Formowanie skali
* Skala uśredniona

compute ASO=mean(ASO1R, ASO2, ASO3, ASO4, ASO5, ASO6, ASO7R, ASO8, ASO9, ASO10R, ASO11, ASO12R, ASO13R, ASO14R, ASO15R, ASO16, ASO17, ASO18R, ASO19, ASO20, ASO21, ASO22R, ASO23, ASO24, ASO25).
compute USPR=mean(ASO2, ASO3, ASO4, ASO9, ASO16, ASO17, ASO19, ASO20, ASO21, ASO23, ASO24, ASO25).
compute ZDSC=mean(ASO1, ASO5R, ASO8, ASO14, ASO18, ASO19, ASO21R).
compute ODEM=mean(ASO10, ASO12, ASO13, ASO17R, ASO22).
execute.

* Skala zASOmowana

compute ASO=sum(ASO1R, ASO2, ASO3, ASO4, ASO5, ASO6, ASO7R, ASO8, ASO9, ASO10R, ASO11, ASO12R, ASO13R, ASO14R, ASO15R, ASO16, ASO17, ASO18R, ASO19, ASO20, ASO21, ASO22R, ASO23, ASO24, ASO25).
compute USPR=sum(ASO2, ASO3, ASO4, ASO9, ASO16, ASO17, ASO19, ASO20, ASO21, ASO23, ASO24, ASO25).
compute ZDSC=sum(ASO1, ASO5R, ASO8, ASO14, ASO18, ASO19, ASO21R).
compute ODEM=sum(ASO10, ASO12, ASO13, ASO17R, ASO22).
execute.

Variable labels ASO 'Samoutrudnianie (WO)' USPR 'Samousprawiedliwianie' ZDSC 'Zdyscyplinowanie i mobilizacja' ODEM 'Odporność emocjonalna'.
execute.



**************************************************************************
* Rzetelności skali
**************************************************************************


* Wynik ogólny Samoutrudnianie

RELIABILITY
  /VARIABLES=ASO1R  ASO2 ASO3 ASO4 ASO5 ASO6 ASO7R ASO8 ASO9 ASO10R ASO11 ASO12R ASO13R ASO14R ASO15R ASO16 ASO17 ASO18R ASO19 ASO20 ASO21 ASO22R ASO23 ASO24 ASO25
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Samousprawiedliwianie

RELIABILITY
  /VARIABLES=ASO2 ASO3 ASO4 ASO9 ASO16 ASO17 ASO19 ASO20 ASO21 ASO23 ASO24 ASO25
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Zdyscyplinowanie i mobilizacja

RELIABILITY
  /VARIABLES=ASO1 ASO5R ASO8 ASO14 ASO18 ASO19 ASO21R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Odporność emocjonalna

RELIABILITY
  /VARIABLES=ASO10 ASO12 ASO13 ASO17R ASO22
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.


