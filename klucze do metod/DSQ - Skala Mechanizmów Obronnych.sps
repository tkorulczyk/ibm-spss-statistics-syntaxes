* Encoding: UTF-8.

****************************************************************************************************************
* Skala Mechanizmów obronnych
****************************************************************************************************************

compute DSQ_MD = sum(DSQ2, DSQ25, DSQ30, DSQ35, DSQ4, DSQ26, DSQ3, DSQ38).
compute DSQ_N = sum(DSQ1, DSQ39, DSQ32, DSQ40, DSQ7, DSQ28, DSQ21, DSQ24).
compute DSQ_MN = sum(DSQ10, DSQ13, DSQ19, DSQ22, DSQ14, DSQ17, DSQ6, DSQ29, DSQ23, DSQ36, 
DSQ12, DSQ27, DSQ34, DSQ37, DSQ31, DSQ33, DSQ9, DSQ15, DSQ11, DSQ20, DSQ5, DSQ16, DSQ8, DSQ18).
execute.


* Pojedyncze mechanizmy obronne

compute DSQ_DEW = sum(DSQ10, DSQ13).
compute DSQ_ROZ = sum(DSQ19, DSQ22).
compute DSQ_FASH = sum(DSQ14, DSQ17).
compute DSQ_PRO = sum(DSQ6, DSQ29).
compute DSQ_BA = sum(DSQ23, DSQ36).
compute DSQ_SOM = sum(DSQ12, DSQ27).
compute DSQ_IZO = sum(DSQ34, DSQ37).
compute DSQ_PRZE = sum(DSQ31, DSQ33).
compute DSQ_DYS = sum(DSQ9, DSQ15).
compute DSQ_AO = sum(DSQ11, DSQ20).
compute DSQ_RAC = sum(DSQ5, DSQ16).
compute DSQ_ZAP = sum(DSQ8, DSQ18).
compute DSQ_PSA = sum(DSQ1, DSQ39).
compute DSQ_ANU = sum(DSQ32, DSQ40).
compute DSQ_REU = sum(DSQ7, DSQ28).
compute DSQ_IDE = sum(DSQ21, DSQ24).
compute DSQ_TLU = sum(DSQ2, DSQ25).
compute DSQ_ANTY = sum(DSQ30, DSQ35).
compute DSQ_HUM = sum(DSQ4, DSQ26).
compute DSQ_SUB = sum(DSQ3, DSQ38).
execute.

VARIABLE LABELS  DSQ_DEW 'Dewaluacja' DSQ_ROZ 'Rozszczepienie' DSQ_FASH 'Fantazja schizoidalna'  DSQ_PRO 'Projekcja'
DSQ_BA 'Bierna agresja' DSQ_SOM 'Somatyzacja'  DSQ_IZO 'Izolacja' DSQ_PRZE 'Przemieszczenie' DSQ_DYS 'Dysocjacja'
DSQ_AO 'Acting out' DSQ_RAC 'Racjonalizacja' DSQ_ZAP 'Zaprzeczenie' DSQ_PSA 'Pseudoaltruizm' DSQ_ANU 'Anulowanie'
DSQ_REU 'Reakcja upozorowana' DSQ_IDE 'Idealizacja' DSQ_TLU 'Tłumienie' DSQ_ANTY 'Antycypacja' DSQ_HUM 'Humor' 
DSQ_SUB 'Sublimacja' DSQ_MD 'Mechanizmy dojrzałe' DSQ_N 'Mechanizmy neurotyczne' DSQ_MN 'Mechanizmy niedojrzałe'.
execute.

SET Printback=ON.

* Mechanizmy dojrzałe

RELIABILITY
  /VARIABLES=DSQ2 DSQ25 DSQ30 DSQ35 DSQ4 DSQ26 DSQ3 DSQ38
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Mechanizmy neurotyczne

RELIABILITY
  /VARIABLES=DSQ1 DSQ39 DSQ32 DSQ40 DSQ7 DSQ28 DSQ21 DSQ24
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Mechanizmy niedojrzałe

RELIABILITY
  /VARIABLES=DSQ10 DSQ13 DSQ19 DSQ22 DSQ14 DSQ17 DSQ6 DSQ29 DSQ23 DSQ36 
DSQ12 DSQ27 DSQ34 DSQ37 DSQ31 DSQ33 DSQ9 DSQ15 DSQ11 DSQ20 DSQ5 DSQ16 DSQ8 DSQ18
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.
