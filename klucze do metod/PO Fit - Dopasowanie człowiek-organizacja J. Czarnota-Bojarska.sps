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

RECODE POFit8, POFit20, POFit26, POFit31 (0=5) (1=4) (2=3) (3=2) (4=1) (5=0)
INTO POFit8R, POFit20R, POFit26R, POFit31R.
EXECUTE.


************************************
* Skale zsumowane
************************************

/* Dopasowanie komplementarne */.
COMPUTE POFit_CM=sum(POFit4, POFit10, POFit13, POFit15, POFit17, POFit21, POFit29, 
POFit30, POFit32, POFit35, POFit39, POFit40, POFit42, POFit44, POFit45, POFit47).
EXECUTE.

/* Dopasowanie suplementarne */.
COMPUTE POFit_SUP=sum(POFit5, POFit8R, POFit9, POFit12, POFit19, POFit20R, POFit22, 
POFit25, POFit26R, POFit31R, POFit34, POFit36, POFit37, POFit41, POFit43, POFit46, POFit48, POFit50). 
EXECUTE.

/* Identyfikacja organizacyjna */.
COMPUTE POFit_IO=sum(POFit1, POFit2, POFit3, POFit7, POFit11, POFit14, POFit16, POFit18, POFit24, POFit28, POFit33, POFit38, POFit49).
EXECUTE.

/* Zadowolenie z pracy: */.
COMPUTE POFit_ZP = sum(POFit6, POFit23, POFit27).
EXECUTE.

* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS 
POFit_CM 'Dopasowanie człowiek-organizacja - Komplementarne'
POFit_SUP 'Dopasowanie człowiek-organizacja - Suplementarne'
POFit_IO 'Dopasowanie człowiek-organizacja -  Identyfikacja organizacyjna'
POFit_ZP 'Dopasowanie człowiek-organizacja - Zadowolenie z pracy'.
execute.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

/* Dopasowanie komplementarne */.
RELIABILITY
  /VARIABLES=POFit4, POFit10, POFit13, POFit15, POFit17, POFit21, POFit29, 
POFit30, POFit32, POFit35, POFit39, POFit40, POFit42, POFit44, POFit45, POFit47
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



/* Dopasowanie suplementarne */.

RELIABILITY
  /VARIABLES=POFit5, POFit8R, POFit9, POFit12, POFit19, POFit20R, POFit22, 
POFit25, POFit26R, POFit31R, POFit34, POFit36, POFit37, POFit41, POFit43, POFit46, POFit48, POFit5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Identyfikacja organizacyjna */.

RELIABILITY
  /VARIABLES=POFit1, POFit2, POFit3, POFit7, POFit11, POFit14, POFit16, POFit18, POFit24, POFit28, POFit33, POFit38, POFit49
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


/* Zadowolenie z pracy: */.

RELIABILITY
  /VARIABLES=POFit6, POFit23, POFit27
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


