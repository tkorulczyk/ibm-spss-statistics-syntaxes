
 * Skala Antycypacyjnej Strategii Obrony Samooceny (ASO)
Doliński, D., & Szmajke, A. (1994). Samoutrudnianie. Dobre i złe strony rzucania kłód pod własne nogi. Olsztyn: Polskie Towarzystwo Psychologiczne.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************
Oznaczenia: SU - Skrót do Skala Samoutrudniania


RECODE SU1 SU7 SU10 SU12 SU13 SU14 SU15 SU18 SU22 SU21 SU5 SU17 
(1=5) (2=4) (3=3) (4=2) (5=1) 
INTO 
SU1R SU7R SU10R SU12R SU13R SU14R SU15R SU18R SU22R SU21R SU5R SU17R.
EXECUTE.

   
******
* Formowanie skali
* Skala uśredniona

compute SU=mean(SU1R, SU2, SU3, SU4, SU5, SU6, SU7R, SU8, SU9, SU10R, SU11, SU12R, SU13R, SU14R, SU15R, SU16, SU17, SU18R, SU19, SU20, SU21, SU22R, SU23, SU24, SU25).
compute USPR=mean(SU2, SU3, SU4, SU9, SU16, SU17, SU19, SU20, SU21, SU23, SU24, SU25).
compute ZDSC=mean(SU1, SU5R, SU8, SU14, SU18, SU19, SU21R).
compute ODEM=mean(SU10, SU12, SU13, SU17R, SU22).
execute.

* Skala zsumowana

compute SU=sum(SU1R, SU2, SU3, SU4, SU5, SU6, SU7R, SU8, SU9, SU10R, SU11, SU12R, SU13R, SU14R, SU15R, SU16, SU17, SU18R, SU19, SU20, SU21, SU22R, SU23, SU24, SU25).
compute USPR=sum(SU2, SU3, SU4, SU9, SU16, SU17, SU19, SU20, SU21, SU23, SU24, SU25).
compute ZDSC=sum(SU1, SU5R, SU8, SU14, SU18, SU19, SU21R).
compute ODEM=sum(SU10, SU12, SU13, SU17R, SU22).
execute.

Variable labels SU 'Samoutrudnianie (WO)' USPR 'Samousprawiedliwianie' ZDSC 'Zdyscyplinowanie i mobilizacja' ODEM 'Odporność emocjonalna'.
execute.



**************************************************************************
* Rzetelności skali
**************************************************************************


* Wynik ogólny Samoutrudnianie

RELIABILITY
  /VARIABLES=SU1R  SU2 SU3 SU4 SU5 SU6 SU7R SU8 SU9 SU10R SU11 SU12R SU13R SU14R SU15R SU16 SU17 SU18R SU19 SU20 SU21 SU22R SU23 SU24 SU25
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Samousprawiedliwianie

RELIABILITY
  /VARIABLES=SU2 SU3 SU4 SU9 SU16 SU17 SU19 SU20 SU21 SU23 SU24 SU25
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Zdyscyplinowanie i mobilizacja

RELIABILITY
  /VARIABLES=SU1 SU5R SU8 SU14 SU18 SU19 SU21R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* Odporność emocjonalna

RELIABILITY
  /VARIABLES=SU10 SU12 SU13 SU17R SU22
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

