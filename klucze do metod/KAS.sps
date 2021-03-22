
 * KAS
Drwal, R. Ł., & Wilczyńska, J. T. (1995). Opracowanie kwestionariusza aprobaty społecznej (KAS). W: RŁ Drwal (red.), Adaptacja kwestionariuszy osobowości, 57-66.


**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że P = 1, F = 2, to należy skorzystać z tej części syntaksu, 
aby wartości fałszywej dla odpowiedzi nadać wartość 0, zgodnie z rekomendacją w metodzie

RECODE KAS1 KAS2 KAS3 KAS4 KAS5 KAS6 KAS7 KAS8 KAS9 KAS10 KAS11 KAS12 KAS13 KAS14 KAS15
KAS16 KAS17 KAS18 KAS19 KAS20 KAS21 KAS22 KAS23 KAS24 KAS25 KAS26 KAS27 KAS28 KAS29 (2=0) (1=1).    


* Odwrócenie itemów

RECODE KAS2 KAS3 KAS5 KAS7 KAS9 KAS12 KAS13 KAS18 KAS22 KAS23 KAS25 KAS27 KAS28  (0=1) (1=0) 
INTO KAS2R KAS3R KAS5R KAS7R KAS9R KAS12R KAS13R KAS18R KAS22R KAS23R KAS25R KAS27R KAS28R.
EXECUTE.


******
* Formowanie skali
* Skale uśrednione

COMPUTE KAS=mean(KAS1, KAS2R, KAS3R, KAS4, KAS5R, KAS6, KAS7R, KAS8, KAS9R, KAS10, KAS11, KAS12R, KAS13R, KAS14, KAS15,
KAS16, KAS17, KAS18R, KAS19, KAS20, KAS21, KAS22R, KAS23R, KAS24, KAS25R, KAS26, KAS27R, KAS28R, KAS29).
EXECUTE.


* Skale zsumowane

COMPUTE KAS=sum(KAS1, KAS2R, KAS3R, KAS4, KAS5R, KAS6, KAS7R, KAS8, KAS9R, KAS10, KAS11, KAS12R, KAS13R, KAS14, KAS15,
KAS16, KAS17, KAS18R, KAS19, KAS20, KAS21, KAS22R, KAS23R, KAS24, KAS25R, KAS26, KAS27R, KAS28R, KAS29).
EXECUTE.


VARIABLE LABELS  KAS 'Aprobata społeczna'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=KAS1 KAS2R KAS3R KAS4 KAS5R KAS6 KAS7R KAS8 KAS9R KAS10 KAS11 KAS12R KAS13R KAS14 KAS15
KAS16 KAS17 KAS18R KAS19 KAS20 KAS21 KAS22R KAS23R KAS24 KAS25R KAS26 KAS27R KAS28R KAS29
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


