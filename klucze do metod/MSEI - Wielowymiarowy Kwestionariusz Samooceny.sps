
 * MSEI
**************************************************************************
* Syntaks do programu IBM SPSS Statistics do obliczania syników surowych i przeliczonych na steny dla MSEI
* Został opracowany w oparciu o normy i wskazówki z podręcznika:
Fecenec, D. (2008). Wielowymiarowy kwestionariusz samooceny MSEI. Polska adaptacja. Pracownia Testów Psychologicznych, Warszawa.


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

RECODE MSEI1 MSEI3 MSEI4 MSEI7 MSEI8 MSEI9 MSEI12 MSEI15 MSEI16 MSEI17 MSEI19 MSEI20 MSEI21 MSEI23 MSEI25 MSEI28 MSEI29 MSEI33 MSEI34
MSEI37 MSEI38 MSEI39 MSEI40 MSEI43 MSEI45 MSEI46 MSEI47 MSEI51 MSEI52 MSEI53 MSEI55 MSEI58 MSEI59 MSEI60 MSEI63 MSEI64 MSEI66 MSEI68 
MSEI71 MSEI72 MSEI74 MSEI76 MSEI77 MSEI81 MSEI84 MSEI85 MSEI88 MSEI90 MSEI96 MSEI97 MSEI99 MSEI100 MSEI104 MSEI107 MSEI108 MSEI109 MSEI113
(1=5) (2=4) (3=3) (4=2) (5=1) INTO 
MSEI1R MSEI3R MSEI4R MSEI7R MSEI8R MSEI9R MSEI12R MSEI15R MSEI16R MSEI17R MSEI19R MSEI20R MSEI21R MSEI23R MSEI25R MSEI28R MSEI29R 
MSEI33R MSEI34MSEI37R MSEI38R MSEI39R MSEI40R MSEI43R MSEI45R MSEI46R MSEI47R MSEI51R MSEI52R MSEI53R MSEI55R MSEI58R MSEI59R MSEI60R 
MSEI63R MSEI64R MSEI66R MSEI68R MSEI71R MSEI72R MSEI74R MSEI76R MSEI77R MSEI81R MSEI84R MSEI85R MSEI88R MSEI90R MSEI96R MSEI97R MSEI99R 
MSEI100R MSEI104R MSEI107R MSEI108R MSEI109R MSEI113R.
EXECUTE.


******************
* Skale zsumowane
************************************************************************

* Samoocena ogólna

COMPUTE OS=sum(MSEI3R, MSEI16R, MSEI29R, MSEI42, MSEI54, MSEI68R, MSEI80, MSEI92, MSEI103, MSEI113R).
EXECUTE.

* Kompetencje

COMPUTE K=sum(MSEI11, MSEI24, MSEI37R, MSEI50, MSEI62, MSEI74R, MSEI86, MSEI97R, MSEI107R, MSEI114).
EXECUTE.

* Bycie Kochanym

COMPUTE BK=sum(MSEI4R, MSEI17R, MSEI30, MSEI43R, MSEI55R, MSEI65, MSEI77R, MSEI89, MSEI100R, MSEI110). 
EXECUTE.

* Popularność

COMPUTE P=sum(MSEI6, MSEI19R, MSEI32, MSEI45R, MSEI57, MSEI66R, MSEI78, MSEI90R, MSEI101, MSEI111).
EXECUTE.

* Zdolności Przywódcze

COMPUTE ZP=sum(MSEI10, MSEI23R, MSEI36, MSEI49, MSEI63R, MSEI75, MSEI87, MSEI98, MSEI108R, MSEI115).
EXECUTE.

* Samokontrola

COMPUTE S=sum(MSEI8R, MSEI21R, MSEI34R, MSEI47R, MSEI59R, MSEI67, MSEI79, MSEI91, MSEI102, MSEI112).
EXECUTE.

* Samoakceptacja moralna

COMPUTE SM=sum(MSEI1R, MSEI14, MSEI27, MSEI40R, MSEI52R, MSEI60R, MSEI71R, MSEI83, MSEI95, MSEI106).
EXECUTE.

* Atrakcyjność Fizyczna

COMPUTE AF=sum(MSEI2, MSEI15R, MSEI28R, MSEI41, MSEI53R, MSEI61, MSEI69, MSEI81R, MSEI93, MSEI104R). 
EXECUTE.

* Witalność

COMPUTE W=sum(MSEI13, MSEI26, MSEI39R, MSEI70, MSEI82, MSEI94, MSEI105, MSEI72R, MSEI84R, MSEI96R).
EXECUTE.

* Integracja Tożsamości

COMPUTE IT=sum(MSEI9R, MSEI22, MSEI35, MSEI48, MSEI12R, MSEI25R, MSEI38R, MSEI51R, MSEI73, MSEI85R).
EXECUTE.

* Obronne Wzmacnianie Samooceny

COMPUTE OWS=sum(MSEI5, MSEI18, MSEI31, MSEI44, MSEI56, MSEI7R, MSEI20R, MSEI33R, MSEI46R, MSEI58R, MSEI64R, MSEI76R, MSEI88R, MSEI99R, MSEI109R, MSEI116).
EXECUTE.

VARIABLE LABELS  OS 'Samoocena ogólna' K 'Kompetencje' BK 'Bycie Kochanym' P 'Popularność' ZP 'Zdolności Przywódcze' S 'Samokontrola' 
SM 'Samoakceptacja Moralna' AF 'Atrakcyjność Fizyczna' W 'Witalność' IT 'Integracja Tożsamości' OWS 'Obronne Wzmacnianie Samooceny'.
execute.




******
* Skale uśrednione - nie rekomendowane do dalszego przeliczania na normy!!! 
************************

* UWAGA! 
Niekiedy jest potrzeba obliczenia skal uśrednionych, a nie zsumowanych, 
jednak nie jest to standadowe postępowanie i należy z niego korzystać w wyjątkowych sytuacjach!
Standardowo, obliczamy skale jako sumy.
************************************************************************

* Samoocena ogólna

COMPUTE OS=mean(MSEI3R, MSEI16R, MSEI29R, MSEI42, MSEI54, MSEI68R, MSEI80, MSEI92, MSEI103, MSEI113R).
EXECUTE.

* Kompetencje

COMPUTE K=mean(MSEI11, MSEI24, MSEI37R, MSEI50, MSEI62, MSEI74R, MSEI86, MSEI97R, MSEI107R, MSEI114).
EXECUTE.

* Bycie Kochanym

COMPUTE BK=mean(MSEI4R, MSEI17R, MSEI30, MSEI43R, MSEI55R, MSEI65, MSEI77R, MSEI89, MSEI100R, MSEI110). 
EXECUTE.

* Popularność

COMPUTE P=mean(MSEI6, MSEI19R, MSEI32, MSEI45R, MSEI57, MSEI66R, MSEI78, MSEI90R, MSEI101, MSEI111).
EXECUTE.

* Zdolności Przywódcze

COMPUTE ZP=mean(MSEI10, MSEI23R, MSEI36, MSEI49, MSEI63R, MSEI75, MSEI87, MSEI98, MSEI108R, MSEI115).
EXECUTE.

* Samokontrola

COMPUTE S=mean(MSEI8R, MSEI21R, MSEI34R, MSEI47R, MSEI59R, MSEI67, MSEI79, MSEI91, MSEI102, MSEI112).
EXECUTE.

* Samoakceptacja moralna

COMPUTE SM=mean(MSEI1R, MSEI14, MSEI27, MSEI40R, MSEI52R, MSEI60R, MSEI71R, MSEI83, MSEI95, MSEI106).
EXECUTE.

* Atrakcyjność Fizyczna

COMPUTE AF=mean(MSEI2, MSEI15R, MSEI28R, MSEI41, MSEI53R, MSEI61, MSEI69, MSEI81R, MSEI93, MSEI104R). 
EXECUTE.

* Witalność

COMPUTE W=mean(MSEI13, MSEI26, MSEI39R, MSEI70, MSEI82, MSEI94, MSEI105, MSEI72R, MSEI84R, MSEI96R).
EXECUTE.

* Integracja Tożsamości

COMPUTE IT=mean(MSEI9R, MSEI22, MSEI35, MSEI48, MSEI12R, MSEI25R, MSEI38R, MSEI51R, MSEI73, MSEI85R).
EXECUTE.

* Obronne Wzmacnianie Samooceny

COMPUTE OWS=mean(MSEI5, MSEI18, MSEI31, MSEI44, MSEI56, MSEI7R, MSEI20R, MSEI33R, MSEI46R, MSEI58R, MSEI64R, MSEI76R, MSEI88R, MSEI99R, MSEI109R, MSEI116).
EXECUTE.




**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************

* Samoocena ogólna

RELIABILITY
  /VARIABLES=MSEI3R MSEI16R MSEI29R MSEI42 MSEI54 MSEI68R MSEI80 MSEI92 MSEI103 MSEI113R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetencje

RELIABILITY
  /VARIABLES=MSEI11 MSEI24 MSEI37R MSEI50 MSEI62 MSEI74R MSEI86 MSEI97R MSEI107R MSEI114
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Bycie Kochanym

RELIABILITY
  /VARIABLES=MSEI4R MSEI17R MSEI30 MSEI43R MSEI55R MSEI65 MSEI77R MSEI89 MSEI100R MSEI110
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Popularność

RELIABILITY
  /VARIABLES=MSEI6 MSEI19R MSEI32 MSEI45R MSEI57 MSEI66R MSEI78 MSEI90R MSEI101 MSEI111
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Zdolności Przywódcze

RELIABILITY
  /VARIABLES=MSEI10 MSEI23R MSEI36 MSEI49 MSEI63R MSEI75 MSEI87 MSEI98 MSEI108R MSEI115
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Samokontrola

RELIABILITY
  /VARIABLES=MSEI8R MSEI21R MSEI34R MSEI47R MSEI59R MSEI67 MSEI79 MSEI91 MSEI102 MSEI112
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Samoakceptacja moralna

RELIABILITY
  /VARIABLES=MSEI1R MSEI14 MSEI27 MSEI40R MSEI52R MSEI60R MSEI71R MSEI83 MSEI95 MSEI106
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Atrakcyjność Fizyczna

RELIABILITY
  /VARIABLES=MSEI2 MSEI15R MSEI28R MSEI41 MSEI53R MSEI61 MSEI69 MSEI81R MSEI93 MSEI104R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Witalność

RELIABILITY
  /VARIABLES=MSEI13 MSEI26 MSEI39R MSEI70 MSEI82 MSEI94 MSEI105 MSEI72R MSEI84R MSEI96R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Integracja Tożsamości

RELIABILITY
  /VARIABLES=MSEI9R MSEI22 MSEI35 MSEI48 MSEI12R MSEI25R MSEI38R MSEI51R MSEI73 MSEI85R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Obronne Wzmacnianie Samooceny

RELIABILITY
  /VARIABLES=MSEI5 MSEI18 MSEI31 MSEI44 MSEI56 MSEI7R MSEI20R MSEI33R MSEI46R MSEI58R MSEI64R MSEI76R MSEI88R MSEI99R MSEI109R MSEI116
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.





