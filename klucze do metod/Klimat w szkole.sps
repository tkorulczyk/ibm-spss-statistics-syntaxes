* Encoding: UTF-8.



**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************


******
* Formowanie skali

COMPUTE KLwS_PRN = sum(KLwS1, KLwS2, KLwS3, KLwS4, KLwS5, KLwS6, KLwS7, KLwS8).
COMPUTE KLwS_SS = sum(KLwS9, KLwS10, KLwS11, KLwS12).
COMPUTE KLwS_WN = sum(KLwS13, KLwS14, KLwS15, KLwS16).
COMPUTE KLwS_ND = sum(KLwS17, KLwS18, KLwS19, KLwS20, KLwS21, KLwS22).
COMPUTE KLwS_SRS = sum(KLwS23, KLwS24, KLwS25, KLwS26).
COMPUTE KLwS_SPOLS = sum(KLwS27, KLwS28).
COMPUTE KLwS_PPO = sum(KLwS29, KLwS30, KLwS31).
COMPUTE KLwS_ZwN = sum(KLwS32 KLwS33, KLwS34, KLwS35, KLwS36, KLwS37).
COMPUTE KLwS_ZDN = sum(KLwS38, KLwS39).
COMPUTE KLwS_ZR= sum(KLwS40, KLwS41, KLwS42).
COMPUTE KLwS = sum(KLwS_PRN, KLwS_SS, KLwS_WN, KLwS_ND, KLwS_SRS, 
KLwS_SPOLS, KLwS_PPO, KLwS_ZwN, KLwS_ZDN, KLwS_ZR).
EXECUTE.


/* Nadawanie nazw podskalom */

VARIABLE LABELS 
KLwS_PRN 'Klimat w szkole: pozytywna relacja ucznia z nauczycielem'
KLwS_SS 'Klimat w szkole: stosunek do szkoły'
KLwS_WN 'Klimat w szkole: wsparcie w nauce'
KLwS_ND 'Klimat w szkole: nakazy i dyscyplina'
KLwS_SRS 'Klimat w szkole: środowisko szkolne'
KLwS_SPOLS 'Klimat w szkole: środowisko społeczne szkoły/społeczność szkolna'
KLwS_PPO 'Klimat w szkole: przestrzeganie praw i obowiązków'
KLwS_ZwN 'Klimat w szkole: możliwości i zaangażowanie w naukę'
KLwS_ZDN 'Klimat w szkole: zadowolenie z nauki'
KLwS_ZR 'Klimat w szkole: zaangażowanie rodziców'
KLwS 'Klimat w szkole'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************

SET Printback=On.

/* Czynnik pierwszy - pozytywna relacja ucznia z nauczycielem */.

RELIABILITY
  /VARIABLES=KLwS1 KLwS2 KLwS3 KLwS4 KLwS5 KLwS6 KLwS7 KLwS8
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik siódmy - stosunek do szkoły */.

RELIABILITY
  /VARIABLES= KLwS9 KLwS10 KLwS11 KLwS12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik piąty – wsparcie w nauce */.

RELIABILITY
  /VARIABLES= KLwS13 KLwS14 KLwS15 KLwS16
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik drugi – nakazy i dyscyplina */.

RELIABILITY
  /VARIABLES=KLwS17 KLwS18 KLwS19 KLwS20 KLwS21 KLwS22
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik czwarty- środowisko szkolne */.

RELIABILITY
  /VARIABLES= KLwS23 KLwS24 KLwS25 KLwS26
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik dziewiąty – środowisko społeczne szkoły/ społeczność szkolna */.

RELIABILITY
  /VARIABLES= KLwS27 KLwS28
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik ósmy – przestrzeganie praw i obowiązków */.

RELIABILITY
  /VARIABLES= KLwS29 KLwS30 KLwS31
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik trzeci – możliwości i zaangażowanie w naukę */.

RELIABILITY
  /VARIABLES= KLwS32 KLwS33 KLwS34 KLwS35 KLwS36 KLwS37
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik dziesiąty – zadowolenie z nauki */.

RELIABILITY
  /VARIABLES= KLwS38 KLwS39
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Czynnik szósty - zaangażowanie rodziców */.

RELIABILITY
  /VARIABLES= KLwS40 KLwS41 KLwS42
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Rzetelność - Skala Klimatu w szkole */

RELIABILITY
  /VARIABLES=KLwS1 to KLwS42
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

SET Printback=Off.
