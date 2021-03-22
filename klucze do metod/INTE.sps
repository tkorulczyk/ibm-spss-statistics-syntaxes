
 * INTE
Jaworowska, A., & Matczak, A. (2001). Kwestionariusz Inteligencji Emocjonalnej INTE: NS Schutte, JM Malouffa, LE Hall, DJ Haggerty'ego, JT Cooper, CJ Goldena, L. Dornheim: 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

RECODE INTE5 INTE28 INTE33  (1=5) (2=4) (3=3) (4=2) (5=1) INTO INTE5R INTE28R INTE33R.
EXECUTE.



   
******
* Formowanie skali
* Skala uśredniona

COMPUTE INTE=mean(INTE1, INTE2, INTE3, INTE4, INTE6, INTE7, INTE8, INTE9, INTE10, INTE11, INTE12, 
INTE13, INTE14, INTE15, INTE16, INTE17, INTE18, INTE19, INTE20, INTE21, INTE22, INTE23, INTE24, INTE25, INTE26, INTE27, INTE29, INTE30, INTE31, INTE32, INTE5R, INTE28R, INTE33R).
VARIABL LABELS  INTEWO 'Intelig. emoc. WO'.
EXECUTE.


* Skala zsumowana

COMPUTE INTE=sum(INTE1, INTE2, INTE3, INTE4, INTE6, INTE7, INTE8, INTE9, INTE10, INTE11, INTE12, 
INTE13, INTE14, INTE15, INTE16, INTE17, INTE18, INTE19, INTE20, INTE21, INTE22, INTE23, INTE24, INTE25, INTE26, INTE27, INTE29, INTE30, INTE31, INTE32, INTE5R, INTE28R, INTE33R).
EXECUTE.


VARIABLE LABELS  INTE 'Inteligencja emocjonalna'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=INTE1 INTE2 INTE3 INTE4 INTE6 INTE7 INTE8 INTE9 INTE10 INTE11 INTE12 
INTE13 INTE14 INTE15 INTE16 INTE17 INTE18 INTE19 INTE20 INTE21 INTE22 INTE23 INTE24 
INTE25 INTE26 INTE27 INTE29 INTE30 INTE31 INTE32 INTE5R INTE28R INTE33R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


