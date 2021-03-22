
* NEO-FII
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla FCZ-KT
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Zawadzki, B., & Strelau, J. (1997). Formalna charakterystyka zachowania-kwestionariusz temperamentu (FCZ-KT): 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Autorami syntaksu są:
* 1. Tomasz Korulczyk, Katolicki Uniwersytet Lubelski Jana Pawła II, Katedra Psychologii Organizacji i Zarządzania
* 2. Pani Katarzyna Pasternak (w ramach projektu badawczego kodowała normy z podręcznika).

*******************************************************************************************************************************************************************************************************
* UWAGI LICENCYJNE

* 1. Celem tego syntaksu jest usprawnienie pracy pracowników naukowych KUL w przeliczaniu wyników badań
* 2. Niniejszy syntaks stanowi Utwór w rozumieniu ustawy z dnia 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (Dz.U. 1994 Nr 24 poz. 83)
* 3. Syntaks jest dostępny dla pracowników KUL i może być przez nich wykorzystywany osobiście w celach naukowcych oraz praktyki psychologicznej  
* 4. Osoby trzecie mogą korzystać z syntaksu z poszanowaniem licencji Commons Creative http://creativecommons.pl/poznaj-licencje-creative-commons/

********************************************************************************************************************************************************************************************************
* Przeliczanie wyników badań...



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

COMPUTE WrazSen=sum(FCZKT2, FCZKT7, FCZKT13, FCZKT23, FCZKT38, FCZKT60, FCZKT67, FCZKT74, FCZKT88, FCZKT105,
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


VARIABLE LABELS  Żwaw 'Żwawość' Wytrz 'Wytrzymałość' WrazSen 'Wrażliwość sensoryczna' ReakEmoc 'Reaktywność Emocjonalna' Persew 'Perseweratywność' Aktyw 'Aktywność'.
execute.



******
* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

* UWAGA! 
Niekiedy jest potrzeba obliczenia skal uśrednionych, a nie zsumowanych, 
jednak nie jest to standadowe postępowanie i należy z niego korzystać w wyjątkowych sytuacjach!
Standardowo, obliczamy skale jako sumy.
************************************************************************

* Żwawość

COMPUTE Żwaw=mean(FCZKT8, FCZKT10, FCZKT19, FCZKT29, FCZKT33R, FCZKT45, FCZKT49R, FCZKT56, FCZKT64R, 
FCZKT72, FCZKT76, FCZKT85R, FCZKT87R, FCZKT91, FCZKT99R, FCZKT101, FCZKT109, FCZKT113R, FCZKT116, FCZKT120R).
EXECUTE.

* Wytrzymałość

COMPUTE Wytrz=mean(FCZKT1R, FCZKT9, FCZKT16, FCZKT18, FCZKT26, FCZKT43, FCZKT78, FCZKT90, FCZKT95, FCZKT108, 
FCZKT24R, FCZKT34R, FCZKT37R, FCZKT41R, FCZKT55R, FCZKT59R, FCZKT63R, FCZKT69R, FCZKT81R, FCZKT112R).
EXECUTE.

* Wrażliwość sensoryczna

COMPUTE WrazSen=mean(FCZKT2, FCZKT7, FCZKT13, FCZKT23, FCZKT38, FCZKT60, FCZKT67, FCZKT74, FCZKT88, FCZKT105,
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




**************************************************************************
* Rzetelności skal na próbie własnej
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


* Rzetelności z próby normalizacyjnej

do if $Casenum = 1.
- print /'***********************************************************************************'.
- print /'Rzetelności w próbie normalizacyjnej'.
- print space.
- print space.
- print /'Alpha-Cronbacha (podręcznik, s. 66):'.
- print space.
- print /'Żwawość = 0,77'.
- print /'Perseweratywność = 0,79'.
- print /'Wrażliwość Sensoryczna = 0,73'.
- print /'Reaktywność Emocjonalna = 0,83'.
- print /'Wytrzymałość = 0,85'.
- print /'Aktywność = 0,84'.
- print /'***********************************************************************************'.
end if.
end case.
execute.



**************************************************************************
* Przeliczanie na wyniki standaryzowane (staniny)
**************************************************************************
Na podstawie tabel s.175 - 185 z podręcznika

***
* WAŻNA INFORMACJA
***

* Poniżej między Define i Enddefine wpisz zmienną określającą płeć oraz wiek, tak jak ta zmienna nazywa się w Twojej bazie i uruchom całą część poniższego syntaksu.

DEFINE X1 ()
Plec
!ENDDEFINE.

DEFINE X2 ()
Wiek
!ENDDEFINE.


* Żwawość
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Żwaw
  (0 thru 8=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Żwaw
  (0 thru 5=1) (6 thru 8=2) (9 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Żwaw
  (0 thru 6=1) (7 thru 8=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Żwaw
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Żwaw
  (0 thru 6=1) (7 thru 9=2) (10 thru 11=3) 
  (12 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Żwaw
  (0 thru 6=1) (7=2) (8 thru 10=3) 
  (11 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Żwaw
  (0 thru 7=1) (8 thru 9=2) (10 thru 11=3) 
  (12 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Żwaw
  (0 thru 6=1) (7 thru 8=2) (9 thru 10=3) 
  (11 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Żwaw
  (0 thru 6=1) (7 thru 9=2) (10 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Żwaw
  (0 thru 7=1) (8 thru 9=2) (10 thru 11=3) 
  (12 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Żwaw
  (0 thru 5=1) (6 thru 7=2) (8 thru 9=3) 
  (10 thru 14=4) (15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Żwaw
  (0 thru 3=1) (4 thru 5=2) (6 thru 8=3) 
  (9 thru 11=4) (12 thru 14=5) (15 thru 16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO ŻwawST.
- END IF.
END IF.
EXECUTE.


* Perseweratywność
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Persew
  (0 thru 4=1) (5 thru 6=2) (7 thru 8=3) 
  (9 thru 11=4) (12 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Persew
  (0 thru 4=1) (5 thru 6=2) (7 thru 8=3) 
  (9 thru 11=4) (12 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Persew
  (0 thru 2=1) (3 thru 4=2) (5 thru 6=3) 
  (7 thru 8=4) (9 thru 12=5) (13 thru 14=6) 
  (15 thru 17=7) (18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Persew
  (0 thru 3=1) (4=2) (5 thru 7=3) 
  (8 thru 9=4) (10 thru 12=5) (13 thru 14=6) 
  (15 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Persew
  (0 thru 3=1) (4=2) (5 thru 6=3) 
  (7 thru 9=4) (10 thru 11=5) (12 thru 14=6) 
  (15 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Persew
  (0 thru 5=1) (6=2) (7 thru 8=3) 
  (9 thru 10=4) (11=5) (12 thru 14=6) 
  (15 thru 16=7) (17=8) (18 thru 20=9) INTO PersewST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Persew
  (0 thru 8=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO PersewST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Persew
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO PersewST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Persew
  (0 thru 4=1) (5 thru 7=2) (8 thru 9=3) 
  (10 thru 12=4) (13 thru 14=5) (15 thru 16=6) 
  (17=7) (18 thru 19=8) (20=9) INTO PersewST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Persew
  (0 thru 4=1) (5 thru 6=2) (7 thru 9=3) 
  (10 thru 11=4) (12 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Persew
  (0 thru 6=1) (7=2) (8 thru 10=3) 
  (11=4) (12 thru 14=5) (15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO PersewST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Persew
  (0 thru 2=1) (3 thru 4=2) (5 thru 11=3) 
  (12=4) (13 thru 15=5) (16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO PersewST.
- END IF.
END IF.
EXECUTE.


* Wrażliwość sensoryczna
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode WrazSen
  (0 thru 8=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode WrazSen
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode WrazSen
  (0 thru 6=1) (7 thru 9=2) (10 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode WrazSen
  (0 thru 6=1) (7 thru 8=2) (9 thru 11=3) 
  (12 thru 13=4) (14 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode WrazSen
  (0 thru 6=1) (7 thru 8=2) (9 thru 11=3) 
  (12 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode WrazSen
  (0 thru 6=1) (7 thru 9=2) (10 thru 11=3) 
  (12=4) (13=5) (14 thru 15=6) 
  (16 thru 17=7) (18 thru 19=8) (20=9) INTO WrazSenST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode WrazSen
  (0 thru 9=1) (10 thru 11=2) (12 thru 14=3) 
  (15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode WrazSen
  (0 thru 9=1) (10 thru 11=2) (12 thru 14=3) 
  (15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode WrazSen
  (0 thru 9=1) (10 thru 12=2) (13 thru 14=3) 
  (15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode WrazSen
  (0 thru 9=1) (10 thru 11=2) (12 thru 13=3) 
  (14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode WrazSen
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO WrazSenST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode WrazSen
  (0 thru 9=1) (10 thru 11=2) (12=3) 
  (13 thru 14=4) (15=5) (16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO WrazSenST.
- END IF.
END IF.
EXECUTE.


* Reaktywność emocjonalna
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode ReakEmoc
  (0 thru 1=1) (2 thru 3=2) (4 thru 6=3) 
  (7 thru 9=4) (10 thru 11=5) (12 thru 13=6) 
  (14 thru 15=7) (16=8) (17 thru 20=9) INTO ReakEmocST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode ReakEmoc
  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) 
  (6 thru 8=4) (9 thru 10=5) (11 thru 13=6) 
  (14 thru 15=7) (16 thru 17=8) (18 thru 20=9) INTO ReakEmocST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode ReakEmoc
  (0=1) (1=2) (2 thru 3=3) 
  (4 thru 6=4) (7 thru 9=5) (10 thru 12=6) 
  (13 thru 14=7) (15 thru 17=8) (18 thru 20=9) INTO ReakEmocST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode ReakEmoc
  (0=1) (1=2) (2 thru 3=3) 
  (4 thru 6=4) (7 thru 9=5) (10 thru 13=6) 
  (14 thru 15=7) (16 thru 17=8) (18 thru 20=9) INTO ReakEmocST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode ReakEmoc
  (0 thru 1=1) (2=2) (3 thru 5=3) 
  (6 thru 8=4) (9 thru 11=5) (12 thru 13=6) 
  (14 thru 15=7) (16 thru 17=8) (18 thru 20=9) INTO ReakEmocST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode ReakEmoc
  (0 thru 1=1) (2 thru 4=2) (5 thru 6=3) 
  (7 thru 9=4) (10 thru 12=5) (13 thru 14=6) 
  (15 thru 17=7) (18 thru 19=8) (20=9) INTO ReakEmocST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode ReakEmoc
  (0 thru 4=1) (5 thru 7=2) (8 thru 10=3) 
  (11 thru 13=4) (14 thru 15=5) (16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO ReakEmocST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode ReakEmoc
  (0 thru 5=1) (6 thru 8=2) (9 thru 10=3) 
  (11 thru 12=4) (13 thru 15=5) (16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO ReakEmocST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode ReakEmoc
  (0 thru 2=1) (3 thru 4=2) (5 thru 7=3) 
  (8 thru 10=4) (11 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO ReakEmocST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode ReakEmoc
  (0 thru 2=1) (3 thru 5=2) (6 thru 8=3) 
  (9 thru 11=4) (12 thru 14=5) (15 thru 16=6) 
  (17=7) (18=8) (19 thru 20=9) INTO ReakEmocST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode ReakEmoc
  (0 thru 3=1) (4 thru 5=2) (6 thru 8=3) 
  (9 thru 11=4) (12 thru 14=5) (15 thru 16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO ReakEmocST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode ReakEmoc
  (0 thru 3=1) (4 thru 8=2) (9 thru 11=3) 
  (12 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ReakEmocST.
- END IF.
END IF.
EXECUTE.

* Wytrzymałość
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Wytrz
  (0 thru 2=1) (3=2) (4 thru 5=3) 
  (6 thru 8=4) (9 thru 11=5) (12 thru 13=6) 
  (14 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO WytrzST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Wytrz
  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) 
  (6 thru 8=4) (9 thru 12=5) (13 thru 15=6) 
  (16 thru 17=7) (16 thru 19=8) (20=9) INTO WytrzST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Wytrz
  (0 thru 2=1) (3 thru 4=2) (5 thru 7=3) 
  (8 thru 10=4) (11 thru 13=5) (14 thru 16=6) 
  (17 thru 18=7) (19=8) (20=9) INTO WytrzST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Wytrz
  (0 thru 1=1) (2 thru 4=2) (5 thru 7=3) 
  (8 thru 10=4) (11 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18 thru 19=8) (20=9) INTO WytrzST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Wytrz
  (0 thru 1=1) (2 thru 3=2) (4 thru 5=3) 
  (6 thru 8=4) (9 thru 12=5) (13 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO WytrzST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Wytrz
  (0=1) (1 thru 2=2) (3=3) 
  (4 thru 6=4) (7 thru 9=5) (10 thru 13=6) 
  (14 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO WytrzST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Wytrz
  (0=1) (1=2) (2 thru 3=3) 
  (4 thru 5=4) (6 thru 7=5) (8 thru 11=6) 
  (12 thru 14=7) (15 thru 16=8) (17 thru 20=9) INTO WytrzST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Wytrz
  (0=1) (1=2) (2 thru 3=3) 
  (4 thru 5=4) (6 thru 7=5) (8 thru 10=6) 
  (11 thru 13=7) (14 thru 15=8) (16 thru 20=9) INTO WytrzST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Wytrz
  (0 thru 1=1) (2=2) (3 thru 4=3) 
  (5 thru 7=4) (8 thru 10=5) (11 thru 13=6) 
  (14 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO WytrzST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Wytrz
  (0=1) (1 thru 2=2) (3 thru 4=3) 
  (5 thru 7=4) (8 thru 10=5) (11 thru 12=6) 
  (13 thru 15=7) (16 thru 17=8) (18 thru 20=9) INTO WytrzST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Wytrz
  (0 thru 1=1) (2=2) (3 thru 4=3) 
  (5 thru 6=4) (7 thru 9=5) (10 thru 13=6) 
  (14 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO WytrzST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Wytrz
  (0 thru 1=1) (2=2) (3=3) 
  (4 thru 6=4) (7=5) (8 thru 9=6) 
  (10 thru 11=7) (12 thru 13=8) (14 thru 20=9) INTO WytrzST.
- END IF.
END IF.
EXECUTE.


* Aktywność
************************************************************************

DO IF ( X1=1)   /*  NORMY DLA MĘŻCZYZN  /.
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Aktyw
  (0 thru 4=1) (5 thru 6=2) (7 thru 8=3) 
  (9 thru 11=4) (12 thru 14=5) (15 thru 16=6) 
  (17=7) (18 thru 19=8) (20=9) INTO AktywST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Aktyw
  (0 thru 2=1) (3 thru 4=2) (5 thru 7=3) 
  (8 thru 9=4) (10 thru 12=5) (13 thru 14=6) 
  (15 thru 16=7) (17 thru 18=8) (19 thru 20=9) INTO AktywST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Aktyw
  (0 thru 2=1) (3=2) (4 thru 5=3) 
  (6 thru 7=4) (8 thru 10=5) (11 thru 13=6) 
  (14 thru 15=7) (16 thru 17=8) (18 thru 20=9) INTO AktywST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Aktyw
  (0 thru 1=1) (2=2) (3 thru 4=3) 
  (5 thru 7=4) (8 thru 9=5) (10 thru 12=6) 
  (13 thru 14=7) (15 thru 17=8) (18 thru 20=9) INTO AktywST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Aktyw
  (0 thru 2=1) (3=2) (4 thru 5=3) 
  (6 thru 7=4) (8 thru 9=5) (10 thru 11=6) 
  (12 thru 13=7) (14=8) (15 thru 20=9) INTO AktywST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Aktyw
  (0=1) (1=2) (2=3) 
  (3 thru 4=4) (5 thru 6=5) (7 thru 9=6) 
  (10 thru 12=7) (13 thru 14=8) (15 thru 20=9) INTO AktywST.
- END IF.
ELSE IF (X1=2)   /*  NORMY DLA KOBIET  /. 
- DO IF (15 <= X2 & X2 <= 19)   /*  15 – 19 lat  /.
  recode Aktyw
  (0 thru 3=1) (4 thru 5=2) (6 thru 8=3) 
  (9 thru 11=4) (12 thru 13=5) (14 thru 15=6) 
  (16 thru 17=7) (18=8) (19 thru 20=9) INTO AktywST.
- ELSE IF  (20 <= X2 & X2 <= 29)   /*  20 – 29 lat  /.
  recode Aktyw
  (0 thru 1=1) (2 thru 3=2) (4 thru 6=3) 
  (7 thru 8=4) (9 thru 11=5) (12 thru 13=6) 
  (14 thru 16=7) (17=8) (18 thru 20=9) INTO AktywST.
- ELSE IF  (30 <= X2 & X2 <= 39)   /*  30 – 39 lat  /.
  recode Aktyw
  (0 thru 1=1) (2=2) (3=3) 
  (4 thru 6=4) (7 thru 9=5) (10 thru 11=6) 
  (12 thru 14=7) (15 thru 16=8) (17 thru 20=9) INTO AktywST.
- ELSE IF  (40 <= X2 & X2 <= 49)   /*  40 – 49 lat  /.
  recode Aktyw
  (0=1) (1=2) (2 thru 3=3) 
  (4 thru 6=4) (7 thru 9=5) (10 thru 11=6) 
  (12 thru 13=7) (14 thru 15=8) (16 thru 20=9) INTO AktywST.
- ELSE IF  (50 <= X2 & X2 <= 59)   /*  50 – 59 lat  /.
  recode Aktyw
  (0=1) (1=2) (2=3) 
  (3 thru 4=4) (5 thru 7=5) (8 thru 9=6) 
  (10 thru 12=7) (13 thru 15=8) (16 thru 20=9) INTO AktywST.
- ELSE IF  (60 <= X2 & X2 <= 80)   /*  60 – 80 lat  /.
  recode Aktyw
  (0=1) (1=2) (2=3) 
  (3 thru 5=4) (6 thru 7=5) (8 thru 10=6) 
  (11 thru 13=7) (14 thru 16=8) (17 thru 20=9) INTO AktywST.
- END IF.
END IF.
EXECUTE.


VARIABLE LEVEL ŻwawST WytrzST WrazSenST ReakEmocST PersewST AktywST (scale).
FORMATS ŻwawST WytrzST WrazSenST ReakEmocST PersewST AktywST (f3.0).
execute.

DO IF $Casenum = 1.
- PRINT /'S U K C E S !'.
- PRINT SPACE.
- PRINT /'Normy zostały poprawnie przeliczone !!!.'.
END IF.
END CASE.
EXECUTE.


*******************************************************************************



********
* Nadawanie etykiet z nazwami skal
************************************

VARIABLE LABELS  ŻwawST 'Żwawość (stanin)' WytrzST 'Wytrzymałość (stanin)' WrazSenST 'Wrażliwość sensoryczna (stanin)' 
ReakEmocST 'Reaktywność Emocjonalna (stanin)' PersewST 'Perseweratywność (stanin)' AktywST 'Aktywność (stanin)'.
execute.


*******************************************
Normy zostały przeliczone !!!
*******************************************



