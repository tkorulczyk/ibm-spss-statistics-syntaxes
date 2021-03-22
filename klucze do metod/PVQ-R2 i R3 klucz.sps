﻿
* PVQ-57 R2 i R3
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla Skali Wartości PVQ-57 Schaloma Shwartza
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Cieciuch, J. (2013). Pomiar wartości w zmodyfikowanym modelu Shaloma Schwartza. Psychologia Społeczna, (1 (24), 22-41.

**************************************************************************
* Autorami syntaksu jest:
* Jan Cieciuch, UKSW

*******************************************************************************************************************************************************************************************************
* UWAGI LICENCYJNE
* Korzystanie z syntaksu dozwolone wyłącznie na licencji Commons Creative http://creativecommons.pl/poznaj-licencje-creative-commons/

********************************************************************************************************************************************************************************************************
* Przeliczanie wyników badań...




**************************************************************
* Wartości wyniki surowe
**************************************************************

 * PVQR2 i 3 i 4 ostateczna

COMPUTE PVQ_AC=MEAN(PVQ17,PVQ32,PVQ48).
COMPUTE PVQ_HE=MEAN(PVQ3,PVQ36,PVQ46).
COMPUTE PVQ_ST=MEAN(PVQ10,PVQ28, PVQ43).
COMPUTE PVQ_SDA=MEAN(PVQ16,PVQ30,PVQ56).
COMPUTE PVQ_SDT=MEAN(PVQ1,PVQ23,PVQ39).
COMPUTE PVQ_UNT=MEAN(PVQ14,PVQ34,PVQ57).
COMPUTE PVQ_UNN=MEAN(PVQ8,PVQ21,PVQ45).
COMPUTE PVQ_UNC=MEAN(PVQ5,PVQ37,PVQ52).
COMPUTE PVQ_BEC=MEAN(PVQ11,PVQ25,PVQ47).
COMPUTE PVQ_BED=MEAN(PVQ19,PVQ27,PVQ55).
COMPUTE PVQ_HU=MEAN(PVQ7,PVQ38,PVQ54).
COMPUTE PVQ_COI=MEAN(PVQ4,PVQ22,PVQ51).
COMPUTE PVQ_COR=MEAN(PVQ15,PVQ31,PVQ42).
COMPUTE PVQ_TR=MEAN(PVQ18,PVQ33,PVQ40).
COMPUTE PVQ_SES=MEAN(PVQ2,PVQ35,PVQ50).
COMPUTE PVQ_SEP=MEAN(PVQ13,PVQ26,PVQ53).
COMPUTE PVQ_POF=MEAN(PVQ9,PVQ24,PVQ49).
COMPUTE PVQ_POR=MEAN(PVQ12,PVQ20,PVQ44).
COMPUTE PVQ_POD=MEAN(PVQ6,PVQ29,PVQ41).
EXECUTE.


**************************************************************
* Skale ogólne (wyniki surowe)
**************************************************************

 * OPENNESS:
HE ST SDA SDT.

COMPUTE PVQ_open=MEAN(PVQ3,PVQ36,PVQ46,PVQ10,PVQ28, PVQ43,
PVQ16,PVQ30,PVQ56,PVQ1,PVQ23,PVQ39).
EXECUTE.

 * CONSERVATION:
HU COI COR TR SES SEP FAC.

COMPUTE PVQ_cons=MEAN(PVQ7,PVQ38,PVQ54,PVQ4,PVQ22,PVQ51,
PVQ15,PVQ31,PVQ42,PVQ18,PVQ33,PVQ40,
PVQ2,PVQ35,PVQ50,PVQ13,PVQ26,PVQ53).
EXECUTE.

 * SELF-TRANSCENDANCE:
BEC BED UNN UNT UNC.
COMPUTE PVQ_trans=MEAN(PVQ14,PVQ34,PVQ57,PVQ8,PVQ21,PVQ45,
PVQ5,PVQ37,PVQ52,PVQ11,PVQ25,PVQ47,PVQ19,PVQ27,PVQ55).
EXECUTE.

 * SELF-ENHANCEMENT:
AC, POR, POD.
COMPUTE PVQ_enh=MEAN(PVQ12,PVQ20,PVQ44,PVQ6,PVQ29,PVQ41,
PVQ17,PVQ32,PVQ48).
EXECUTE.

COMPUTE meanALL = MEAN(PVQ1 to PVQ57) .
EXECUTE.


**************************************************************
* Wartości wycentrowane
**************************************************************

COMPUTE centPVQ_AC = PVQ_AC - meanALL .
COMPUTE centPVQ_HE = PVQ_HE - meanALL .
COMPUTE centPVQ_ST = PVQ_ST - meanALL .
COMPUTE centPVQ_SDA = PVQ_SDA - meanALL .
COMPUTE centPVQ_SDT = PVQ_SDT - meanALL .
COMPUTE centPVQ_UNT = PVQ_UNT - meanALL .
COMPUTE centPVQ_UNN = PVQ_UNN - meanALL .
COMPUTE centPVQ_UNC = PVQ_UNC - meanALL .
COMPUTE centPVQ_BEC = PVQ_BEC - meanALL .
COMPUTE centPVQ_BED = PVQ_BED - meanALL .
COMPUTE centPVQ_HU = PVQ_HU - meanALL .
COMPUTE centPVQ_COI = PVQ_COI - meanALL .
COMPUTE centPVQ_COR = PVQ_COR - meanALL .
COMPUTE centPVQ_TR = PVQ_TR - meanALL .
COMPUTE centPVQ_SES = PVQ_SES - meanALL .
COMPUTE centPVQ_SEP = PVQ_SEP - meanALL .
COMPUTE centPVQ_POF = PVQ_POF - meanALL .
COMPUTE centPVQ_POR = PVQ_POR - meanALL .
COMPUTE centPVQ_POD = PVQ_POD - meanALL .
EXECUTE.


**************************************************************
* Skale ogólne (wycentrowane)
**************************************************************


COMPUTE centPVQ_open = PVQ_open - meanALL .
COMPUTE centPVQ_cons = PVQ_cons - meanALL .
COMPUTE centPVQ_trans = PVQ_trans - meanALL .
COMPUTE centPVQ_enh = PVQ_enh - meanALL .
EXECUTE.




**************************************************************************
* Rzetelności wartości na próbie własnej
**************************************************************************

RELIABILITY
  /VARIABLES=PVQ17 PVQ32 PVQ48
  /SCALE('PVQ_AC') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ3 PVQ36 PVQ46
  /SCALE('PVQ_HE') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ10 PVQ28 PVQ43
  /SCALE('PVQ_ST') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ16 PVQ30 PVQ56
  /SCALE('PVQ_SDA') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ1 PVQ23 PVQ39
  /SCALE('PVQ_SDT') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ14 PVQ34 PVQ57
  /SCALE('PVQ_UNT') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ8 PVQ21 PVQ45
  /SCALE('PVQ_UNN') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ5 PVQ37 PVQ52
  /SCALE('PVQ_UNC') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ11 PVQ25 PVQ47
  /SCALE('PVQ_BEC') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ19 PVQ27 PVQ55
  /SCALE('PVQ_BED') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ7 PVQ38 PVQ54
  /SCALE('PVQ_HU') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ4 PVQ22 PVQ51
  /SCALE('PVQ_COI') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ15 PVQ31 PVQ42
  /SCALE('PVQ_COR') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ18 PVQ33 PVQ40
  /SCALE('PVQ_TR') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ2 PVQ35 PVQ50
  /SCALE('PVQ_SES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ13 PVQ26 PVQ53
  /SCALE('PVQ_SEP') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ9 PVQ24 PVQ49
  /SCALE('PVQ_POF') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ12 PVQ20 PVQ44
  /SCALE('PVQ_POR') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ6 PVQ29 PVQ41
  /SCALE('PVQ_POD') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=PVQ58 PVQ59 PVQ60
  /SCALE('PVQ_REL') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

