
 * KKS
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla KKS
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Matczak, A. (2001). Kwestionariusz kompetencji społecznych. Podręcznik. Warszawa: Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.


**************************************************************************
* Autorem syntaksu jest:
* Tomasz Korulczyk, Katolicki Uniwersytet Lubelski Jana Pawła II, Katedra Psychologii Organizacji i Zarządzania

*******************************************************************************************************************************************************************************************************
* UWAGI LICENCYJNE

* 1. Celem tego syntaksu jest usprawnienie pracy pracowników naukowych KUL w przeliczaniu wyników badań
* 2. Niniejszy syntaks stanowi Utwór w rozumieniu ustawy z dnia 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (Dz.U. 1994 Nr 24 poz. 83)
* 3. Syntaks jest dostępny dla pracowników KUL i może być przez nich wykorzystywany osobiście w celach naukowcych oraz praktyki psychologicznej  
* 4. Osoby trzecie mogą korzystać z syntaksu z poszanowaniem licencji Commons Creative http://creativecommons.pl/poznaj-licencje-creative-commons/

********************************************************************************************************************************************************************************************************
* Przeliczanie wyników badań...


* Brak itemów do odwracania!


******
* Skale zsumowane


* Kompetencje w sytuacjach intymnych

COMPUTE KKS.I=sum(KKS9, KKS13, KKS17, KKS18, KKS23, KKS29, KKS36, KKS37, KKS51, KKS54, KKS62, KKS70, KKS73, KKS79, KKS82).
EXECUTE.

* Kompetencje w sytuacjach ekspozycji społecznej

COMPUTE KKS.ES=sum(KKS1, KKS3, KKS5, KKS8, KKS10, KKS12, KKS14, KKS21, KKS22, KKS31, KKS38, KKS40, KKS43, KKS47, KKS59, KKS67, KKS75, KKS90).
EXECUTE.

* Kompetencje w sytuacjach wymagających asertywności

COMPUTE KKS.A=sum(KKS4, KKS20, KKS27, KKS32, KKS48, KKS55, KKS56, KKS57, KKS58, KKS63, KKS65, KKS69, KKS71, KKS74, KKS78, KKS83, KKS89).
EXECUTE.

* Kompetncje społeczne (wynik ogólny)

COMPUTE KKS=sum(KKS1, KKS3, KKS4, KKS5, KKS8, KKS9, KKS10, KKS12, KKS13, KKS14, KKS17, KKS18, KKS20, KKS21, KKS22, KKS23, KKS25, KKS27, KKS29, 
KKS30, KKS31, KKS32, KKS34, KKS36, KKS37, KKS38, KKS40, KKS41, KKS42, KKS43, KKS47, KKS48, KKS51, KKS54, KKS55, KKS56, KKS57, KKS58, KKS59, KKS62, 
KKS63, KKS65, KKS67, KKS68, KKS69, KKS70, KKS71, KKS72, KKS73, KKS74, KKS75, KKS78, KKS79, KKS82, KKS83, KKS86, KKS87, KKS88, KKS89, KKS90).
EXECUTE.


VARIABLE LABELS  KKS.I 'Kompetencje w sytuacjach intymnych' KKS.ES 'Kompetencje w sytuacjach ekspozycji społecznej' 
KKS.A 'Kompetencje w sytuacjach wymagających asertywności' KKS 'Kompetncje społeczne (wynik ogólny)'. 
execute.



******
* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

* UWAGA! 
Niekiedy jest potrzeba obliczenia skal uśrednionych, a nie zsumowanych, 
jednak nie jest to standadowe postępowanie i należy z niego korzystać w wyjątkowych sytuacjach!
Standardowo, obliczamy skale jako sumy.
************************************************************************


* Kompetencje w sytuacjach intymnych

COMPUTE KKS.I=mean(KKS9, KKS13, KKS17, KKS18, KKS23, KKS29, KKS36, KKS37, KKS51, KKS54, KKS62, KKS70, KKS73, KKS79, KKS82).
EXECUTE.

* Kompetencje w sytuacjach ekspozycji społecznej

COMPUTE KKS.ES=mean(KKS1, KKS3, KKS5, KKS8, KKS10, KKS12, KKS14, KKS21, KKS22, KKS31, KKS38, KKS40, KKS43, KKS47, KKS59, KKS67, KKS75, KKS90).
EXECUTE.

* Kompetencje w sytuacjach wymagających asertywności

COMPUTE KKS.A=mean(KKS4, KKS20, KKS27, KKS32, KKS48, KKS55, KKS56, KKS57, KKS58, KKS63, KKS65, KKS69, KKS71, KKS74, KKS78, KKS83, KKS89). 
EXECUTE.

* Kompetncje społeczne (wynik ogólny)

COMPUTE KKS=mean(KKS1, KKS3, KKS4, KKS5, KKS8, KKS9, KKS10, KKS12, KKS13, KKS14, KKS17, KKS18, KKS20, KKS21, KKS22, KKS23, KKS25, KKS27, KKS29, 
KKS30, KKS31, KKS32, KKS34, KKS36, KKS37, KKS38, KKS40, KKS41, KKS42, KKS43, KKS47, KKS48, KKS51, KKS54, KKS55, KKS56, KKS57, KKS58, KKS59, KKS62, 
KKS63, KKS65, KKS67, KKS68, KKS69, KKS70, KKS71, KKS72, KKS73, KKS74, KKS75, KKS78, KKS79, KKS82, KKS83, KKS86, KKS87, KKS88, KKS89, KKS90).
EXECUTE.



**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

* Kompetencje w sytuacjach intymnych

RELIABILITY
  /VARIABLES=KKS9 KKS13 KKS17 KKS18 KKS23 KKS29 KKS36 KKS37 KKS51 KKS54 KKS62 KKS70 KKS73 KKS79 KKS82
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetencje w sytuacjach ekspozycji społecznej

RELIABILITY
  /VARIABLES=KKS1 KKS3 KKS5 KKS8 KKS10 KKS12 KKS14 KKS21 KKS22 KKS31 KKS38 KKS40 KKS43 KKS47 KKS59 KKS67 KKS75 KKS90
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetencje w sytuacjach wymagających asertywności

RELIABILITY
  /VARIABLES=KKS4 KKS20 KKS27 KKS32 KKS48 KKS55 KKS56 KKS57 KKS58 KKS63 KKS65 KKS69 KKS71 KKS74 KKS78 KKS83 KKS89
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetncje społeczne (wynik ogólny)

RELIABILITY
  /VARIABLES=KKS1 KKS3 KKS4 KKS5 KKS8 KKS9 KKS10 KKS12 KKS13 KKS14 KKS17 KKS18 KKS20 KKS21 KKS22 KKS23 KKS25 KKS27 KKS29 
KKS30 KKS31 KKS32 KKS34 KKS36 KKS37 KKS38 KKS40 KKS41 KKS42 KKS43 KKS47 KKS48 KKS51 KKS54 KKS55 KKS56 KKS57 KKS58 KKS59 KKS62 
KKS63 KKS65 KKS67 KKS68 KKS69 KKS70 KKS71 KKS72 KKS73 KKS74 KKS75 KKS78 KKS79 KKS82 KKS83 KKS86 KKS87 KKS88 KKS89 KKS90
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



