* Encoding: UTF-8.


******
* Formowanie skali


compute GSES = sum(GSES1, GSES2, GSES3, GSES4, GSES5, GSES6, GSES7, GSES8, GSES9, GSES10).
execute.


compute GSES_Adolescents = sum(GSES1, GSES5, GSES7, GSES8, GSES9, GSES10).
execute.



VARIABLE LABELS  GSES 'Uogólnione Poczucie Własnej Skuteczności' GSES_Adolescents 'Uogólnione Poczucie Własnej Skuteczności - Adolescenci'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


RELIABILITY
  /VARIABLES=GSES1 GSES2 GSES3 GSES4 GSES5 GSES6 GSES7 GSES8 GSES GSES10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


RELIABILITY
  /VARIABLES=GSES1 GSES5 GSES7 GSES8 GSES GSES10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



