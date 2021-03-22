
 * MSEI
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla MSEI
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Klinkosz, W., Sękowski, A.E. (2013). Inwentarz Motywacji Osiagnięć H. Schulera, G. C. Thorntona, A. Frintrupa i M. Prochaski. LMI Podręcznik. Warszawa: Pracownia Testów Psychologicznych PTP.



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





**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

******
* Odwrócenie itemów

RECODE LMI1 LMI5 LMI8 LMI15 LMI16 LMI19 LMI23 LMI25 LMI33 LMI35 LMI36 LMI40 LMI41 LMI42 
LMI43 LMI47 LMI50 LMI52 LMI53 LMI55 LMI57 LMI59 LMI60 LMI64 LMI66 LMI67 LMI69 LMI74 LMI75 
LMI76 LMI77 LMI82 LMI84 LMI85 LMI86 LMI88 LMI92 LMI100 LMI101 LMI105 LMI109 LMI111 LMI119 
LMI126 LMI128 LMI139 LMI142 LMI143 LMI144 LMI145 LMI153 LMI156 LMI159 LMI165 (1=7) (2=6) (3=5) (4=4) (5=3) (6=2) (7=1) 
INTO 
LMI1R LMI5R LMI8R LMI15R LMI16R LMI19R LMI23R LMI25R LMI33R LMI35R LMI36R LMI40R LMI41R LMI42R 
LMI43R LMI47R LMI50R LMI52R LMI53R LMI55R LMI57R LMI59R LMI60R LMI64R LMI66R LMI67R LMI69R LMI74R LMI75R 
LMI76R LMI77R LMI82R LMI84R LMI85R LMI86R LMI88R LMI92R LMI100R LMI101R LMI105R LMI109R LMI111R LMI119R 
LMI126R LMI128R LMI139R LMI142R LMI143R LMI144R LMI145R LMI153R LMI156R LMI159R LMI165R .
EXECUTE.


******************
* Skale zsumowane
************************************************************************


*******************************************
* LMI


* elastyczność

compute ELAS = sum(LMI1R, LMI18, LMI35R, LMI52R, LMI69R, LMI87, LMI104, LMI121, LMI138, LMI155).
execute.

* odwaga

compute ODW = sum(LMI5R, LMI23R, LMI40R, LMI57R, LMI75R, LMI92R, LMI109R, LMI126R, LMI142R, LMI159R).
execute.

* preferowanie trudnych zadań

compute PTZ = sum(LMI9, LMI26, LMI43R, LMI60R, LMI78, LMI95, LMI112, LMI129, LMI145R, LMI162).
execute.

* niezależność

compute NIEZ = sum(LMI15R, LMI33R, LMI49, LMI66R, LMI85R, LMI101R, LMI118, LMI135, LMI152, LMI168).
execute.

* wiara w sukces

compute WIARS = sum(LMI10, LMI27, LMI44, LMI61, LMI80, LMI96, LMI113, LMI130, LMI147, LMI163).
execute.

* dominacja

compute DOMI = sum(LMI13, LMI31, LMI47R, LMI64R, LMI83, LMI99, LMI116, LMI133, LMI150, LMI166).
execute.

* zapał do nauki

compute ZAPN = sum(LMI14, LMI32, LMI48, LMI65, LMI84R, LMI100R, LMI117, LMI134, LMI151, LMI167).
execute.

* ukierunkowanie na cel

compute UKCEL = sum(LMI7, LMI17, LMI51, LMI68, LMI74R, LMI103, LMI120, LMI137, LMI154, LMI170).
execute.

* wysiłek kompensacyjny

compute WSKOM = sum(LMI11, LMI29, LMI45, LMI62, LMI81, LMI97, LMI114, LMI131, LMI148, LMI164).
execute.

* dbanie o prestiż

compute DPRES = sum(LMI20, LMI28, LMI37, LMI54, LMI71, LMI79, LMI89, LMI106, LMI123, LMI146).
execute.

* satysfakcja z osiągnięć

compute SATOS= sum(LMI4, LMI22, LMI39, LMI56, LMI73, LMI91, LMI108, LMI125, LMI141, LMI158).
execute.

* zaangażowanie

compute ZANG = sum(LMI12, LMI30, LMI46, LMI63, LMI82R, LMI98, LMI115, LMI132, LMI149, LMI165R).
execute.

* nastawienie na rywalizację

compute NARYW = sum(LMI6, LMI24, LMI41R, LMI58, LMI76R, LMI93, LMI110, LMI127, LMI143R, LMI160).
execute.

* flow

compute FLOW = sum(LMI3, LMI21, LMI38, LMI55R, LMI72, LMI90, LMI107, LMI124, LMI140, LMI157).
execute.

* internalizacja

compute INTER = sum(LMI8R, LMI25R, LMI42R, LMI59R, LMI77R, LMI94, LMI111R, LMI128R, LMI144R, LMI161).
execute.

* wytrwałość

compute WTR = sum(LMI2, LMI19R, LMI36R, LMI53R, LMI70, LMI88R, LMI105R, LMI122, LMI139R, LMI156R).
execute.

* samokontrola
 
compute SAM = sum(LMI16R, LMI34, LMI50R, LMI67R, LMI86R, LMI102, LMI119R, LMI136, LMI153R, LMI169).
execute.

VARIABLE LABELS  ELAS 'Elastyczność' ODW 'Odwaga', PTZ 'Preferowanie trudnych zadań'  NIEZ 'Niezależność' 
WIARS 'Wwiara w sukces' DOMI 'dominacja' ZAPN 'Zapał do nauki' UKCEL 'Uukierunkowanie na cel'
WSKOM 'Wysiłek kompensacyjny' DPRES 'Dbanie o prestiż' SATOS 'Satysfakcja z osiągnięć' ZANG 'Zaangażowanie' 
NARYW 'Nastawienie na rywalizację' FLOW 'Flow' INTER 'Internalizacja' WTR 'Wytrwałość' SAM 'Samokontrola'.
execute.




******
* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

* UWAGA! 
Niekiedy jest potrzeba obliczenia skal uśrednionych, a nie zsumowanych, 
jednak nie jest to standadowe postępowanie i należy z niego korzystać w wyjątkowych sytuacjach!
Standardowo, obliczamy skale jako sumy.
************************************************************************

* elastyczność

compute ELAS = mean(LMI1R, LMI18, LMI35R, LMI52R, LMI69R, LMI87, LMI104, LMI121, LMI138, LMI155).
execute.

* odwaga

compute ODW = mean(LMI5R, LMI23R, LMI40R, LMI57R, LMI75R, LMI92R, LMI109R, LMI126R, LMI142R, LMI159R).
execute.

* preferowanie trudnych zadań

compute PTZ = mean(LMI9, LMI26, LMI43R, LMI60R, LMI78, LMI95, LMI112, LMI129, LMI145R, LMI162).
execute.

* niezależność

compute NIEZ = mean(LMI15R, LMI33R, LMI49, LMI66R, LMI85R, LMI101R, LMI118, LMI135, LMI152, LMI168).
execute.

* wiara w sukces

compute WIARS = mean(LMI10, LMI27, LMI44, LMI61, LMI80, LMI96, LMI113, LMI130, LMI147, LMI163).
execute.

* dominacja

compute DOMI = mean(LMI13, LMI31, LMI47R, LMI64R, LMI83, LMI99, LMI116, LMI133, LMI150, LMI166).
execute.

* zapał do nauki

compute ZAPN = mean(LMI14, LMI32, LMI48, LMI65, LMI84R, LMI100R, LMI117, LMI134, LMI151, LMI167).
execute.

* ukierunkowanie na cel

compute UKCEL = mean(LMI7, LMI17, LMI51, LMI68, LMI74R, LMI103, LMI120, LMI137, LMI154, LMI170).
execute.

* wysiłek kompensacyjny

compute WSKOM = mean(LMI11, LMI29, LMI45, LMI62, LMI81, LMI97, LMI114, LMI131, LMI148, LMI164).
execute.

* dbanie o prestiż

compute DPRES = mean(LMI20, LMI28, LMI37, LMI54, LMI71, LMI79, LMI89, LMI106, LMI123, LMI146).
execute.

* satysfakcja z osiągnięć

compute SATOS= mean(LMI4, LMI22, LMI39, LMI56, LMI73, LMI91, LMI108, LMI125, LMI141, LMI158).
execute.

* zaangażowanie

compute ZANG = mean(LMI12, LMI30, LMI46, LMI63, LMI82R, LMI98, LMI115, LMI132, LMI149, LMI165R).
execute.

* nastawienie na rywalizację

compute NARYW = mean(LMI6, LMI24, LMI41R, LMI58, LMI76R, LMI93, LMI110, LMI127, LMI143R, LMI160).
execute.

* flow

compute FLOW = mean(LMI3, LMI21, LMI38, LMI55R, LMI72, LMI90, LMI107, LMI124, LMI140, LMI157).
execute.

* internalizacja

compute INTER = mean(LMI8R, LMI25R, LMI42R, LMI59R, LMI77R, LMI94, LMI111R, LMI128R, LMI144R, LMI161).
execute.

* wytrwałość

compute WTR = mean(LMI2, LMI19R, LMI36R, LMI53R, LMI70, LMI88R, LMI105R, LMI122, LMI139R, LMI156R).
execute.

* samokontrola
 
compute SAM = mean(LMI16R, LMI34, LMI50R, LMI67R, LMI86R, LMI102, LMI119R, LMI136, LMI153R, LMI169).
execute.




**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

* Elastyczność

RELIABILITY
  /VARIABLES=LMI1R LMI18 LMI35R LMI52R LMI69R LMI87 LMI104 LMI121 LMI138 LMI155
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Odwaga

RELIABILITY
  /VARIABLES=LMI5R LMI23R LMI40R LMI57R LMI75R LMI92R LMI109R LMI126R LMI142R LMI159R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Preferowanie trudnych zadań

RELIABILITY
  /VARIABLES=LMI9 LMI26 LMI43R LMI60R LMI78 LMI95 LMI112 LMI129 LMI145R LMI162
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Niezależność

RELIABILITY
  /VARIABLES=LMI15R LMI33R LMI49 LMI66R LMI85R LMI101R LMI118 LMI135 LMI152 LMI168
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Wiara w sukces

RELIABILITY
  /VARIABLES=LMI10 LMI27 LMI44 LMI61 LMI80 LMI96 LMI113 LMI130 LMI147 LMI163
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Dominacja

RELIABILITY
  /VARIABLES=LMI13 LMI31 LMI47R LMI64R LMI83 LMI99 LMI116 LMI133 LMI150 LMI166
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Zapał do nauki

RELIABILITY
  /VARIABLES=LMI14 LMI32 LMI48 LMI65 LMI84R LMI100R LMI117 LMI134 LMI151 LMI167
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Ukierunkowanie na cel

RELIABILITY
  /VARIABLES=LMI7 LMI17 LMI51 LMI68 LMI74R LMI103 LMI120 LMI137 LMI154 LMI170
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Wysiłek kompensacyjny

RELIABILITY
  /VARIABLES=LMI11 LMI29 LMI45 LMI62 LMI81 LMI97 LMI114 LMI131 LMI148 LMI164
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Dbanie o prestiż

RELIABILITY
  /VARIABLES=LMI20 LMI28 LMI37 LMI54 LMI71 LMI79 LMI89 LMI106 LMI123 LMI146
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Satysfakcja z osiągnięć

RELIABILITY
  /VARIABLES=LMI4 LMI22 LMI39 LMI56 LMI73 LMI91 LMI108 LMI125 LMI141 LMI158
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Zaangażowanie

RELIABILITY
  /VARIABLES=LMI12 LMI30 LMI46 LMI63 LMI82R LMI98 LMI115 LMI132 LMI149 LMI165R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Nastawienie na rywalizację

RELIABILITY
  /VARIABLES=LMI6 LMI24 LMI41R LMI58 LMI76R LMI93 LMI110 LMI127 LMI143R LMI160
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Flow

RELIABILITY
  /VARIABLES=LMI3 LMI21 LMI38 LMI55R LMI72 LMI90 LMI107 LMI124 LMI140 LMI157
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Internalizacja

RELIABILITY
  /VARIABLES=LMI8R LMI25R LMI42R LMI59R LMI77R LMI94 LMI111R LMI128R LMI144R LMI161
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.





* Wytrwałość

RELIABILITY
  /VARIABLES=LMI2 LMI19R LMI36R LMI53R LMI70 LMI88R LMI105R LMI122 LMI139R LMI156R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Samokontrola

RELIABILITY
  /VARIABLES=LMI16R LMI34 LMI50R LMI67R LMI86R LMI102 LMI119R LMI136 LMI153R LMI169
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

