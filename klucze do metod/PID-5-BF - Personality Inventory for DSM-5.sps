* Encoding: UTF-8.
* NEO-FII
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla NEO-FII
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Inwentarz osobowości NEO-FFI Costy i McCrae: adaptacja polska: podręcznik.Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego, 1998.

**************************************************************************
* Autorami syntaksu są:
* 1. Tomasz Korulczyk, Katolicki Uniwersytet Lubelski Jana Pawła II, Katedra Psychologii Organizacji i Zarządzania

*******************************************************************************************************************************************************************************************************
* UWAGI LICENCYJNE

* 1. Celem tego syntaksu jest usprawnienie pracy pracowników naukowych KUL w przeliczaniu wyników badań
* 2. Niniejszy syntaks stanowi Utwór w rozumieniu ustawy z dnia 4 lutego 1994 r. o prawie autorskim i prawach pokrewnych (Dz.U. 1994 Nr 24 poz. 83)
* 3. Syntaks jest dostępny dla pracowników KUL i może być przez nich wykorzystywany osobiście w celach naukowcych oraz praktyki psychologicznej  
* 4. Osoby trzecie mogą korzystać z syntaksu z poszanowaniem licencji Commons Creative http://creativecommons.pl/poznaj-licencje-creative-commons/

********************************************************************************************************************************************************************************************************
* Przeliczanie wyników badań...


******************************************************
* Formowanie skali
******************************************************



************************************************************************
* Skale zsumowane
************************************

* Negative Affect.
COMPUTE PID_NA = sum(PID_8, PID_9, PID_10, PID_11, PID_15).
EXECUTE.

* Detachment.
COMPUTE PID_DET = sum(PID_4, PID_13, PID_14, PID_16, PID_18).
EXECUTE.

* Antagonism.
COMPUTE PID_ANT = sum(PID_17, PID_19, PID_20, PID_22, PID_25).
EXECUTE.

* Disinhibition.
COMPUTE PID_DISH = sum(PID_1, PID_2, PID_3, PID_5, PID_6).
EXECUTE.

* Psychoticism.
COMPUTE PID_PSY = sum(PID_7, PID_12, PID_21, PID_23, PID_24).
EXECUTE.


********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS
PID_NA 'Negative Affect'
PID_DET 'Detachment'
PID_ANT 'Antagonism'
PID_DISH 'Disinhibition'
PID_PSY 'Psychoticism'.
execute.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************


* Negative Affect.

RELIABILITY
  /VARIABLES=PID_8, PID_9, PID_10, PID_11, PID_15
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Detachment.

RELIABILITY
  /VARIABLES=PID_4, PID_13, PID_14, PID_16, PID_18
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Antagonism.

RELIABILITY
  /VARIABLES=PID_17, PID_19, PID_20, PID_22, PID_25
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Disinhibition.

RELIABILITY
  /VARIABLES=PID_1, PID_2, PID_3, PID_5, PID_6
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Psychoticism.

RELIABILITY
  /VARIABLES=PID_7, PID_12, PID_21, PID_23, PID_24
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




