* Encoding: UTF-8.

****************************************************************************************************************
* Skala Postaw wobec śmierci
****************************************************************************************************************

compute DAP_LPS = sum(DAP1, DAP2, DAP7, DAP18, DAP20, DAP21, DAP32).
compute DAP_US = sum(DAP3, DAP10, DAP12, DAP19, DAP26).
compute DAP_NAS = sum(DAP6, DAP14, DAP17, DAP24, DAP30).
compute DAP_UAS = sum(DAP5, DAP9, DAP11, DAP23, DAP29).
compute DAP_CAS = sum(DAP4, DAP8, DAP13, DAP15, DAP16, DAP22, DAP25, DAP27, DAP28, DAP31).
execute.

VARIABLE LABELS  DAP_LPS 'Lęk przed śmiercią' DAP_US 'Unikanie śmierci' DAP_NAS 'Naturalna akceptacja śmierci' 
DAP_UAS 'Ucieczkowa akceptacja śmierci' DAP_CAS 'Celowościowa akceptacja śmierci'.
execute.

SET Printback=ON.

*************************************************
* Lęk przed śmiercią

RELIABILITY
  /VARIABLES=DAP1 DAP2 DAP7 DAP18 DAP20 DAP21 DAP32
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Unikanie śmierci

RELIABILITY
  /VARIABLES=DAP3 DAP10 DAP12 DAP19 DAP26
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Naturalna akceptacja śmierci

RELIABILITY
  /VARIABLES=DAP6 DAP14 DAP17 DAP24 DAP30
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Ucieczkowa akceptacja śmierci

RELIABILITY
  /VARIABLES=DAP5 DAP9 DAP11 DAP23 DAP29
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Celowościowa akceptacja śmierci

RELIABILITY
  /VARIABLES=DAP4 DAP8 DAP13 DAP15 DAP16 DAP22 DAP25 DAP27 DAP28 DAP31
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.