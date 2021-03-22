* Encoding: UTF-8.


****************************************************************************************************************
* Skala Mądrości (Ardelt)
****************************************************************************************************************

RECODE WSb1 WSb3 WSb5 WSb17 WSb20 WSb2 WSb6 WSa12 (1=5) (2=4) (3=3) (4=2) (5=1) 
INTO WSb1_R WSb3_R WSb5_R WSb17_R WSb20_R WSb2_R WSb6_R WSa12_R.
EXECUTE.

/* Wersja oryginalna.
compute WSo_POZ = sum(WSa1, WSa3, WSa5, WSa7, WSa9, WSa11, WSa13, WSa15, WSb7, WSb10, WSb13, WSb16, WSb19, WSb23).
compute WSo_REF = sum(WSa6, WSa10, WSb1_R, WSb3_R, WSb5_R, WSb17_R, WSb20_R, WSb8, WSb11, WSb14, WSb22, WSb24).
compute WSo_AFE = sum(WSa2, WSa4, WSa8, WSa12_R, WSa14, WSb2_R, WSb6_R, WSb4, WSb9, WSb12, WSb15, WSb18, WSb21).
compute WSo = (sum(WSo_POZ, WSo_REF, WSo_AFE)) / 39.
execute.

/* Wersja polska.
compute WSp_POZ = sum(WSa1, WSa3, WSa5, WSa7, WSa9, WSa11, WSa13, WSa15, WSb7, WSb10, WSb13, WSb16, WSb19, WSb23).
compute WSp_REFsa = sum(WSa6, WSa10, WSb8, WSb11, WSb14, WSb22, WSb24).
compute WSp_REFem = sum(WSb1_R, WSb3_R, WSb5_R, WSb17_R, WSb20_R).
compute WSp_AFE = sum(WSa2, WSa4, WSa8, WSa12_R, WSa14, WSb2_R, WSb6_R, WSb4, WSb9, WSb12, WSb15, WSb18, WSb21).
execute.

VARIABLE LABELS WSo_POZ 'Wymiar poznawczy [adap. oryginal.]' WSo_REF 'Wymiar refleksyjny [adap. oryginal.]' WSo_AFE 'Wymiar afektywny [adap. oryginal.]'
WSo 'Wynik ogólny [adap. oryginal.]' WSp_POZ 'Wymiar poznawczy [adap. pol.]' WSp_REFsa  'Wymiar refleksyjny samoświadomościowy [adap. pol.]'  
WSp_REFem  'Wymiar refleksyjny empatyczny [adap. pol.]' WSp_AFE  'Wymiar afektywny [adap. pol.]'.
execute.


SET Printback=ON.

/* Wersja oryginalna.
/* Wymiar poznawczy [adap. oryginal.].

RELIABILITY
  /VARIABLES=WSa1  WSa3 WSa5 WSa7 WSa9 WSa11 WSa13 WSa15 WSb7 WSb10 WSb13 WSb16 WSb19 WSb23
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja oryginalna.
/* Wymiar refleksyjny [adap. oryginal.].

RELIABILITY
  /VARIABLES=WSa6 WSa10 WSb1_R WSb3_R WSb5_R WSb17_R WSb20_R WSb8 WSb11 WSb14 WSb22 WSb24
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja oryginalna.
/* Wymiar afektywny [adap. oryginal.].

RELIABILITY
  /VARIABLES=WSa2 WSa4 WSa8 WSa12_R WSa14 WSb2_R WSb6_R WSb4 WSb9 WSb12 WSb15 WSb18 WSb21
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

***********************************************
/* Wersja polska.
/* Wymiar poznawczy [adap. pol.].

RELIABILITY
  /VARIABLES=WSa1 WSa3 WSa5 WSa7 WSa9 WSa11 WSa13 WSa15 WSb7 WSb10 WSb13 WSb16 WSb19 WSb23
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja polska.
/* Wymiar refleksyjny samoświadomościowy [adap. pol.].

RELIABILITY
  /VARIABLES=WSa6 WSa10 WSb8 WSb11 WSb14 WSb22 WSb24
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja polska.
/* Wymiar refleksyjny empatyczny [adap. pol.].

RELIABILITY
  /VARIABLES=WSb1_R WSb3_R WSb5_R WSb17_R WSb20_R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja polska.
/* Wymiar afektywny [adap. pol.].

RELIABILITY
  /VARIABLES=WSa2 WSa4 WSa8 WSa12_R WSa14 WSb2_R WSb6_R WSb4 WSb9 WSb12 WSb15 WSb18 WSb21
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



* PO MODYFIKACJACH !!!


***********************************************
/* Wersja polska.
/* Wymiar poznawczy [adap. pol.].

RELIABILITY
  /VARIABLES=WSa3 WSa5 WSa9 WSa11 WSa15 WSb7 WSb10 WSb16 WSb19 WSb23
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* 2 MNIEJSZY MODEL [REKOMENDOWANY]

RELIABILITY
  /VARIABLES=WSa3 WSa9 WSa11 WSa15 WSb7 WSb10 WSb16 WSb19
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Wersja polska.
/* Wymiar afektywny [adap. pol.]. [REKOMENDOWANY]

RELIABILITY
  /VARIABLES=WSa8 WSa14 WSb4 WSb9 WSb12 WSb15 WSb18 WSb21
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



/* Wersja polska.
/* Wymiar refleksyjny samoświadomościowy [adap. pol.]. [REKOMENDOWANY]

RELIABILITY
  /VARIABLES=WSa6 WSa10 WSb8 WSb11 WSb14 WSb22
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Wersja polska.
/* Wymiar refleksyjny empatyczny [adap. pol.].

RELIABILITY
  /VARIABLES=WSb1_R WSb3_R WSb5_R WSb17_R WSb20_R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



