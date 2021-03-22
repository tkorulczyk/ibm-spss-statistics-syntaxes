﻿
 * FCZ-KT
Zawadzki, B., & Strelau, J. (1997). Formalna charakterystyka zachowania-kwestionariusz temperamentu (FCZ-KT): 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że Tak = 1, Nie = 2, to należy skorzystać z tej części syntaksu, 
aby odpowiedzi na Nie przybrały wartość 0, zgodnie z rekomendacją w metodzie

RECODE FCZKT1 FCZKT2 FCZKT3 FCZKT4 FCZKT5 FCZKT6 FCZKT7 FCZKT8 FCZKT9 FCZKT10 FCZKT11 
    FCZKT12 FCZKT13 FCZKT14 FCZKT15 FCZKT16 FCZKT17 FCZKT18 FCZKT19 FCZKT20 FCZKT21 FCZKT22 
    FCZKT23 FCZKT24 FCZKT25 FCZKT26 FCZKT27 FCZKT28 FCZKT29 FCZKT30 FCZKT31 FCZKT32 FCZKT33 
    FCZKT34 FCZKT35 FCZKT36 FCZKT37 FCZKT38 FCZKT39 FCZKT40 FCZKT41 FCZKT42 FCZKT43 FCZKT44 
    FCZKT45 FCZKT46 FCZKT47 FCZKT48 FCZKT49 FCZKT50 FCZKT51 FCZKT52 FCZKT53 FCZKT54 FCZKT55 
    FCZKT56 FCZKT57 FCZKT58 FCZKT59 FCZKT60 FCZKT61 FCZKT62 FCZKT63 FCZKT64 FCZKT65 FCZKT66 
    FCZKT67 FCZKT68 FCZKT69 FCZKT70 FCZKT71 FCZKT72 FCZKT73 FCZKT74 FCZKT75 FCZKT76 FCZKT77 
    FCZKT78 FCZKT79 FCZKT80 FCZKT81 FCZKT82 FCZKT83 FCZKT84 FCZKT85 FCZKT86 FCZKT87 FCZKT88 
    FCZKT89 FCZKT90 FCZKT91 FCZKT92 FCZKT93 FCZKT94 FCZKT95 FCZKT96 FCZKT97 FCZKT98 FCZKT99 
    FCZKT100 FCZKT101 FCZKT102 FCZKT103 FCZKT104 FCZKT105 FCZKT106 FCZKT107 FCZKT108 FCZKT109 
    FCZKT110 FCZKT111 FCZKT112 FCZKT113 FCZKT114 FCZKT115 FCZKT116 FCZKT117 FCZKT118 FCZKT119 
    FCZKT120 (2=0) (1=1).
EXECUTE.


******
* Odwrócenie itemów

RECODE FCZKT33 FCZKT49 FCZKT64 FCZKT85 FCZKT87 FCZKT99 FCZKT113 FCZKT120 (1=0) (0=1) 
INTO FCZKT33R FCZKT49R FCZKT64R FCZKT85R FCZKT87R FCZKT99R FCZKT113R FCZKT120R.
EXECUTE.

RECODE FCZKT1 FCZKT24 FCZKT34 FCZKT37 FCZKT41 FCZKT55 FCZKT59 FCZKT63 FCZKT69 FCZKT81 FCZKT112 (1=0) (0=1) 
INTO FCZKT1R FCZKT24R FCZKT34R FCZKT37R FCZKT41R FCZKT55R FCZKT59R FCZKT63R FCZKT69R FCZKT81R FCZKT112R.
EXECUTE.

RECODE FCZKT20 FCZKT30 FCZKT40 FCZKT47 FCZKT53 FCZKT57 FCZKT83 FCZKT92 FCZKT111 FCZKT119 (1=0) (0=1) 
INTO FCZKT20R FCZKT30R FCZKT40R FCZKT47R FCZKT53R FCZKT57R FCZKT83R FCZKT92R FCZKT111R FCZKT119R.
EXECUTE.

RECODE FCZKT31 FCZKT66 FCZKT80 FCZKT97 FCZKT114 (1=0) (0=1) 
INTO FCZKT31R FCZKT66R FCZKT80R FCZKT97R FCZKT114R.
EXECUTE.

RECODE FCZKT4 FCZKT36 FCZKT42 FCZKT68 FCZKT84 FCZKT110 FCZKT117 (1=0) (0=1) 
INTO FCZKT4R FCZKT36R FCZKT42R FCZKT68R FCZKT84R FCZKT110R FCZKT117R.
EXECUTE.

RECODE FCZKT32 FCZKT52 FCZKT61 FCZKT70 FCZKT100 FCZKT118 (1=0) (0=1) 
INTO FCZKT32R FCZKT52R FCZKT61R FCZKT70R FCZKT100R FCZKT118R.
EXECUTE.



******
* Formowanie skali
* Skale uśrednione


* Żwawość

COMPUTE Żwaw=mean(FCZKT8, FCZKT10, FCZKT19, FCZKT29, FCZKT33R, FCZKT45, FCZKT49R, FCZKT56, FCZKT64R, 
FCZKT72, FCZKT76, FCZKT85R, FCZKT87R, FCZKT91, FCZKT99R, FCZKT101, FCZKT109, FCZKT113R, FCZKT116, FCZKT120R).
EXECUTE.


* Wytrzymałość

COMPUTE Wytrz=mean(FCZKT1R, FCZKT9, FCZKT16, FCZKT18, FCZKT26, FCZKT43, FCZKT78, FCZKT90, FCZKT95, FCZKT108, 
FCZKT24R, FCZKT34R, FCZKT37R, FCZKT41R, FCZKT55R, FCZKT59R, FCZKT63R, FCZKT69R, FCZKT81R, FCZKT112R).
EXECUTE.


* Wrażliwość sensoryczna

COMPUTE WrażSen=mean(FCZKT2, FCZKT7, FCZKT13, FCZKT23, FCZKT38, FCZKT60, FCZKT67, FCZKT74, FCZKT88, FCZKT105,
FCZKT20R, FCZKT30R, FCZKT40R, FCZKT47R, FCZKT53R, FCZKT57R, FCZKT83R, FCZKT92R, FCZKT111R, FCZKT119R). 
EXECUTE.


* Reaktywność emocjonalna

COMPUTE ReakEmoc=mean(FCZKT12, FCZKT15, FCZKT21, FCZKT35, FCZKT39, FCZKT44, FCZKT48, FCZKT50, FCZKT62, FCZKT82,
FCZKT86, FCZKT94, FCZKT102, FCZKT104, FCZKT107, FCZKT31R, FCZKT66R, FCZKT80R, FCZKT97R, FCZKT114R).
EXECUTE.


* Perseweratywność

COMPUTE Persew=mean(FCZKT6, FCZKT17, FCZKT22, FCZKT27, FCZKT46, FCZKT54, FCZKT58, FCZKT71, FCZKT79, FCZKT93,
FCZKT96, FCZKT103, FCZKT106, FCZKT4R, FCZKT36R, FCZKT42R, FCZKT68R, FCZKT84R, FCZKT110R, FCZKT117R).
EXECUTE.


* Aktywność

COMPUTE Aktyw=mean(FCZKT3, FCZKT5, FCZKT11, FCZKT14, FCZKT25, FCZKT28, FCZKT51, FCZKT65, FCZKT73, FCZKT75,
FCZKT77, FCZKT89, FCZKT98, FCZKT115, FCZKT32R, FCZKT52R, FCZKT61R, FCZKT70R, FCZKT100R, FCZKT118R).
EXECUTE.



******
* Skale zsumowane

* Żwawość

COMPUTE Żwaw=sum(FCZKT8, FCZKT10, FCZKT19, FCZKT29, FCZKT33R, FCZKT45, FCZKT49R, FCZKT56, FCZKT64R, 
FCZKT72, FCZKT76, FCZKT85R, FCZKT87R, FCZKT91, FCZKT99R, FCZKT101, FCZKT109, FCZKT113R, FCZKT116, FCZKT120R).
EXECUTE.


* Wytrzymałość

COMPUTE Wytrz=sum(FCZKT1R, FCZKT9, FCZKT16, FCZKT18, FCZKT26, FCZKT43, FCZKT78, FCZKT90, FCZKT95, FCZKT108, 
FCZKT24R, FCZKT34R, FCZKT37R, FCZKT41R, FCZKT55R, FCZKT59R, FCZKT63R, FCZKT69R, FCZKT81R, FCZKT112R).
EXECUTE.


* Wrażliwość sensoryczna

COMPUTE WrażSen=sum(FCZKT2, FCZKT7, FCZKT13, FCZKT23, FCZKT38, FCZKT60, FCZKT67, FCZKT74, FCZKT88, FCZKT105,
FCZKT20R, FCZKT30R, FCZKT40R, FCZKT47R, FCZKT53R, FCZKT57R, FCZKT83R, FCZKT92R, FCZKT111R, FCZKT119R). 
EXECUTE.


* Reaktywność emocjonalna

COMPUTE ReakEmoc=sum(FCZKT12, FCZKT15, FCZKT21, FCZKT35, FCZKT39, FCZKT44, FCZKT48, FCZKT50, FCZKT62, FCZKT82,
FCZKT86, FCZKT94, FCZKT102, FCZKT104, FCZKT107, FCZKT31R, FCZKT66R, FCZKT80R, FCZKT97R, FCZKT114R).
EXECUTE.


* Perseweratywność

COMPUTE Persew=sum(FCZKT6, FCZKT17, FCZKT22, FCZKT27, FCZKT46, FCZKT54, FCZKT58, FCZKT71, FCZKT79, FCZKT93,
FCZKT96, FCZKT103, FCZKT106, FCZKT4R, FCZKT36R, FCZKT42R, FCZKT68R, FCZKT84R, FCZKT110R, FCZKT117R).
EXECUTE.


* Aktywność

COMPUTE Aktyw=sum(FCZKT3, FCZKT5, FCZKT11, FCZKT14, FCZKT25, FCZKT28, FCZKT51, FCZKT65, FCZKT73, FCZKT75,
FCZKT77, FCZKT89, FCZKT98, FCZKT115, FCZKT32R, FCZKT52R, FCZKT61R, FCZKT70R, FCZKT100R, FCZKT118R).
EXECUTE.


VARIABLE LABELS  Żwaw 'Żwawość' Wytrz 'Wytrzymałość' WrażSen 'Wrażliwość sensoryczna' ReakEmoc 'Reaktywność Emocjonalna' Persew 'Perseweratywność' Aktyw 'Aktywność'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


* Żwawość

RELIABILITY
  /VARIABLES=FCZKT8 FCZKT10 FCZKT19 FCZKT29 FCZKT33R FCZKT45 FCZKT49R FCZKT56 FCZKT64R 
FCZKT72 FCZKT76 FCZKT85R FCZKT87R FCZKT91 FCZKT99R FCZKT101 FCZKT109 FCZKT113R FCZKT116 FCZKT120R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Wytrzymałość

RELIABILITY
  /VARIABLES=FCZKT1R FCZKT9 FCZKT16 FCZKT18 FCZKT26 FCZKT43 FCZKT78 FCZKT90 FCZKT95 FCZKT108 
FCZKT24R FCZKT34R FCZKT37R FCZKT41R FCZKT55R FCZKT59R FCZKT63R FCZKT69R FCZKT81R FCZKT112R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Wrażliwość sensoryczna

RELIABILITY
  /VARIABLES=FCZKT2 FCZKT7 FCZKT13 FCZKT23 FCZKT38 FCZKT60 FCZKT67 FCZKT74 FCZKT88 FCZKT105
FCZKT20R FCZKT30R FCZKT40R FCZKT47R FCZKT53R FCZKT57R FCZKT83R FCZKT92R FCZKT111R FCZKT119R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Reaktywność emocjonalna

RELIABILITY
  /VARIABLES=FCZKT12 FCZKT15 FCZKT21 FCZKT35 FCZKT39 FCZKT44 FCZKT48 FCZKT50 FCZKT62 FCZKT82
FCZKT86 FCZKT94 FCZKT102 FCZKT104 FCZKT107 FCZKT31R FCZKT66R FCZKT80R FCZKT97R FCZKT114R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Perseweratywność

RELIABILITY
  /VARIABLES=FCZKT6 FCZKT17 FCZKT22 FCZKT27 FCZKT46 FCZKT54 FCZKT58 FCZKT71 FCZKT79 FCZKT93
FCZKT96 FCZKT103 FCZKT106 FCZKT4R FCZKT36R FCZKT42R FCZKT68R FCZKT84R FCZKT110R FCZKT117R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Aktywność

RELIABILITY
  /VARIABLES=FCZKT3 FCZKT5 FCZKT11 FCZKT14 FCZKT25 FCZKT28 FCZKT51 FCZKT65 FCZKT73 FCZKT75
FCZKT77 FCZKT89 FCZKT98 FCZKT115 FCZKT32R FCZKT52R FCZKT61R FCZKT70R FCZKT100R FCZKT118R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

