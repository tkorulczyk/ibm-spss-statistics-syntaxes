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

/* For PJ fit, we used the 3-item DA fit measure and the 3-item NS fit measure from Cable and DeRue (2002) */.
/* Sample items include “My abilities and training are a good fit with the requirements of my job” for DA fit, and */.
/* “The attributes that I look for in a job are fulfilled very well by my present job” for NS fit. Reliability was .90 for DA fit and .91 for NS fit. */.
* Cable, D. M., & DeRue, D. S. (2002). The convergent and discriminant validity of subjective fit perceptions. Journal of Applied Psychology, 87, 875-884.


************************************
* Skale zsumowane
************************************


/* Dopasowanie osoba-praca typu WZ */.
COMPUTE PJFit_WZ=sum(PJFit1, PJFit2, PJFit3).
EXECUTE.

/* Dopasowanie osoba-praca typu PZ*/.
COMPUTE PJFit_PZ=sum(PJFit4, PJFit5, PJFit6). 
EXECUTE.


********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS 
PJFit_WZ 'Dopasowanie osoba-praca - Wymagania-zdolności'
PJFit_PZ 'Dopasowanie osoba-praca - Potrzeby-zasoby'.
execute.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

/* Dopasowanie osoba-praca typu WZ */.
RELIABILITY
  /VARIABLES=PJFit1, PJFit2, PJFit3
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Dopasowanie osoba-praca typu PZ*/.
RELIABILITY
  /VARIABLES=PJFit4, PJFit5, PJFit6
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


