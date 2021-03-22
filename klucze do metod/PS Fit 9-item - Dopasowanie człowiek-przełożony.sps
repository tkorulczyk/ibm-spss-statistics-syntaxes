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




************************************
* Skale zsumowane
************************************

/* Wersja 9-itemowa */

/* Dopasowanie Suplementarne  */.
COMPUTE PSFit_SUP=sum(PSFit1, PSFit4, PSFit7).
EXECUTE.

/* Dopasowanie Komplemenatne typu WZ*/.
COMPUTE PSFit_CMWZ=sum(PSFit2, PSFit5, PSFit8). 
EXECUTE.

/* Dopasowanie Komplemenatne typu PZ */.
COMPUTE PSFit_CMPZ=sum(PSFit3, PSFit6, PSFit9).
EXECUTE.

* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS 
PSFit_SUP 'Dopasowanie podwładny-przełożony - Suplementarne'
PSFit_CMWZ 'Dopasowanie podwładny-przełożony - Komplementarne wymagania-zdolności'
PSFit_CMPZ 'Dopasowanie podwładny-przełożony - Komplementarne potrzeby-zasoby'.
execute.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

/* Dopasowanie Suplementarne  */.
RELIABILITY
  /VARIABLES=PSFit1, PSFit4, PSFit7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Dopasowanie Komplemenatne typu WZ*/.
RELIABILITY
  /VARIABLES=PSFit2, PSFit5, PSFit8
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

/* Dopasowanie Komplemenatne typu PZ */.
RELIABILITY
  /VARIABLES=PSFit3, PSFit6, PSFit9
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.



