* Encoding: UTF-8.
* NEO-FII
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla NEO-FII
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Inwentarz osobowości NEO-FFI Costy i McCrae: adaptacja polska: podręcznik.Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego, 1998.

**************************************************************************
* Autorami syntaksu są:
* 1. Tomasz Korulczyk, Katolicki Uniwersytet Lubelski Jana Pawła II, Katedra Psychologii Organizacji i Zarządzania
* 2. Pani Ewelina Polewka (w ramach projektu badawczego kodowała normy z podręcznika).

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

* Można skorzystać z tego syntaksu, jeśli zmienne przy kodowaniu nazywane były NEOFFI (docelowo do obliczeń powinny nazywać się NEO)



******
* 1. Odwrócenie itemów wchodzących w skale
************************************************


RECODE HFS_2, HFS_4, HFS_6, HFS_7, HFS_9, HFS_11, HFS_13, HFS_15, HFS_17 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1)
INTO HFS_2R, HFS_4R, HFS_6R, HFS_7R, HFS_9R, HFS_11R, HFS_13R, HFS_15R, HFS_17R.
EXECUTE.


************************************
* Skale zsumowane
************************************

* HFS Forgiveness of Self subscale (items 1-6)

COMPUTE HFSSobie=sum(HFS_1,HFS_2R, HFS_3, HFS_4R, HFS_5, HFS_6R).
EXECUTE.

* HFS Forgiveness of Others subscale (items 7-12)

COMPUTE HFSInny=sum(HFS_7R, HFS_8, HFS_9R, HFS_10, HFS_11R, HFS_12). 
EXECUTE.

* HFS Forgiveness of Situations subscale (items 13-18)

COMPUTE HFSOkol=sum(HFS_13R, HFS_14, HFS_15R, HFS_16, HFS_17R, HFS_18).
EXECUTE.


COMPUTE HFS = sum(HFSSobie, HFSInny, HFSOkol).
EXECUTE.

* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS  HFS 'Przebaczenie'.
execute.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************


RELIABILITY
  /VARIABLES=HFS_1,HFS_2R, HFS_3, HFS_4R, HFS_5, HFS_6R, 
HFS_7R, HFS_8, HFS_9R, HFS_10, HFS_11R, HFS_12,
HFS_13R, HFS_14, HFS_15R, HFS_16, HFS_17R, HFS_18
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



* HFS Forgiveness of Self subscale (items 1-6)

RELIABILITY
  /VARIABLES=HFS_1,HFS_2R, HFS_3, HFS_4R, HFS_5, HFS_6R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* HFS Forgiveness of Others subscale (items 7-12)

RELIABILITY
  /VARIABLES=HFS_7R, HFS_8, HFS_9R, HFS_10, HFS_11R, HFS_12
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* HFS Forgiveness of Situations subscale (items 13-18)

RELIABILITY
  /VARIABLES=HFS_13R, HFS_14, HFS_15R, HFS_16, HFS_17R, HFS_18
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


