﻿
 * FCZ-KT
Zawadzki, B., & Strelau, J. (1997). Formalna charakterystyka zachowania-kwestionariusz temperamentu (FCZ-KT): 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że Tak = 1, Nie = 2, to należy skorzystać z tej części syntaksu, 
aby odpowiedzi na Nie przybrały wartość 0, zgodnie z rekomendacją w metodzie

RECODE EPQR1 EPQR2 EPQR3 EPQR4 EPQR5 EPQR6 EPQR7 EPQR8 EPQR9 EPQR10 EPQR11 
    EPQR12 EPQR13 EPQR14 EPQR15 EPQR16 EPQR17 EPQR18 EPQR19 EPQR20 EPQR21 EPQR22 
    EPQR23 EPQR24 EPQR25 EPQR26 EPQR27 EPQR28 EPQR29 EPQR30 EPQR31 EPQR32 EPQR33 
    EPQR34 EPQR35 EPQR36 EPQR37 EPQR38 EPQR39 EPQR40 EPQR41 EPQR42 EPQR43 EPQR44 
    EPQR45 EPQR46 EPQR47 EPQR48 EPQR49 EPQR50 EPQR51 EPQR52 EPQR53 EPQR54 EPQR55 
    EPQR56 EPQR57 EPQR58 EPQR59 EPQR60 EPQR61 EPQR62 EPQR63 EPQR64 EPQR65 EPQR66 
    EPQR67 EPQR68 EPQR69 EPQR70 EPQR71 EPQR72 EPQR73 EPQR74 EPQR75 EPQR76 EPQR77 
    EPQR78 EPQR79 EPQR80 EPQR81 EPQR82 EPQR83 EPQR84 EPQR85 EPQR86 EPQR87 EPQR88 
    EPQR89 EPQR90 EPQR91 EPQR92 EPQR93 EPQR94 EPQR95 EPQR96 EPQR97 EPQR98 EPQR99 
    EPQR100 EPQR101 EPQR102 EPQR103 EPQR104 EPQR105 EPQR106 (2=0) (1=1).
EXECUTE.

******
* Odwrócenie itemów

* Ekstrawersja

RECODE EPQR24 EPQR33 EPQR47 (1=0) (0=1) 
INTO EPQR24R EPQR33R EPQR47R.
EXECUTE.

* Psychotyzm

RECODE EPQR2 EPQR5 EPQR7 EPQR9 EPQR12 EPQR14 EPQR18 EPQR21 EPQR41 EPQR54 
EPQR59 EPQR64 EPQR68 EPQR79 EPQR81 EPQR85 EPQR88 EPQR96 EPQR99 (1=0) (0=1) 
INTO EPQR2R EPQR5R EPQR7R EPQR9R EPQR12R EPQR14R EPQR18R EPQR21R EPQR41R 
EPQR54R EPQR59R EPQR64R EPQR68R EPQR79R EPQR81R EPQR85R EPQR88R EPQR96R EPQR99R.
EXECUTE.

* Kłamstwo

RECODE EPQR4 EPQR10 EPQR19 EPQR27 EPQR32 EPQR44 EPQR49 
EPQR53 EPQR57 EPQR66 EPQR71 EPQR77 EPQR82 EPQR89 EPQR93 (1=0) (0=1) 
INTO EPQR4R EPQR10R EPQR19R EPQR27R EPQR32R EPQR44R EPQR49R 
EPQR53R EPQR57R EPQR66R EPQR71R EPQR77R EPQR82R EPQR89R EPQR93R.
EXECUTE.

* Skłonność do Uzależnień

RECODE EPQR2 EPQR15 EPQR16 EPQR20 EPQR36 EPQR58 EPQR68 EPQR101 EPQR102 (1=0) (0=1) 
INTO EPQR2R EPQR15R EPQR16R EPQR20R EPQR36R EPQR58R EPQR68R EPQR101R EPQR102R
EXECUTE.

* Skłonność do Przestępstw

RECODE 
EPQR2 EPQR59 EPQR64 EPQR101 EPQR102 (1=0) (0=1) 
INTO EPQR2R EPQR59R EPQR64R EPQR101R EPQR102R.
EXECUTE.



******
* Formowanie skali
* Skale uśrednione


* Skala Neurotyzmu

COMPUTE N=mean(EPQR3, EPQR8, EPQR13, EPQR17, EPQR22, EPQR26, EPQR31, EPQR35, EPQR38, EPQR43, EPQR46, 
EPQR52, EPQR60, EPQR65, EPQR70, EPQR74, EPQR76, EPQR80, EPQR83, EPQR84, EPQR87, EPQR92, EPQR97, EPQR100).
EXECUTE.


* Skala Ekstrawersji

COMPUTE E=mean(EPQR1, EPQR6, EPQR11, EPQR16, EPQR20, EPQR24R, EPQR28, EPQR33R, EPQR36, EPQR40, EPQR45, 
EPQR47R, EPQR51, EPQR55, EPQR58, EPQR61, EPQR63, EPQR67, EPQR69, EPQR72, EPQR78, EPQR90, EPQR94).
EXECUTE.


* Skala Psychotyzmu

COMPUTE P=mean(EPQR2R, EPQR5R, EPQR7R, EPQR9R, EPQR12R, EPQR14R, EPQR18R, EPQR21R, EPQR25, EPQR29, 
EPQR30, EPQR34, EPQR37, EPQR41R, EPQR42, EPQR48, EPQR50, EPQR54R, EPQR56, EPQR59R, EPQR64R, EPQR68R, 
EPQR73, EPQR75, EPQR79R, EPQR81R, EPQR85R, EPQR88R, EPQR91, EPQR95, EPQR96R, EPQR99R). 
EXECUTE.


* Skala Kłamstwa

COMPUTE K=mean(EPQR4R, EPQR10R, EPQR15, EPQR19R, EPQR23, EPQR27R, EPQR32R, EPQR39, EPQR44R, EPQR49R, 
EPQR53R, EPQR57R, EPQR62, EPQR66R, EPQR71R, EPQR77R, EPQR82R, EPQR86, EPQR89R, EPQR93R, EPQR98).
EXECUTE.


* Skłonność do Uzależnień

COMPUTE SDU=mean(EPQR2R, EPQR3, EPQR8, EPQR10, EPQR15R, EPQR16R, EPQR20R, EPQR25, EPQR26, EPQR27, 
EPQR31, EPQR34, EPQR35, EPQR36R, EPQR38, EPQR46, EPQR58R, EPQR60, EPQR65, EPQR68R, EPQR70, EPQR71, 
EPQR73, EPQR76, EPQR77, EPQR83, EPQR84, EPQR89, EPQR101R, EPQR102R, EPQR104, EPQR105).
EXECUTE.


* Skłonność do Przestępstw

COMPUTE SDP=mean(EPQR2R, EPQR3, EPQR8, EPQR13, EPQR17, EPQR22, EPQR25, EPQR26, EPQR31, EPQR34, EPQR35, 
EPQR37, EPQR38, EPQR43, EPQR46, EPQR51, EPQR52, EPQR59R, EPQR60, EPQR64R, EPQR65, EPQR70, EPQR73, EPQR76, 
EPQR78, EPQR83, EPQR84, EPQR95, EPQR101R, EPQR102R, EPQR103, EPQR104, EPQR105, EPQR106).
EXECUTE.



******
* Skale zsumowane

* Skala Neurotyzmu

COMPUTE N=sum(EPQR3, EPQR8, EPQR13, EPQR17, EPQR22, EPQR26, EPQR31, EPQR35, EPQR38, EPQR43, EPQR46, 
EPQR52, EPQR60, EPQR65, EPQR70, EPQR74, EPQR76, EPQR80, EPQR83, EPQR84, EPQR87, EPQR92, EPQR97, EPQR100).
EXECUTE.


* Skala Ekstrawersji

COMPUTE E=sum(EPQR1, EPQR6, EPQR11, EPQR16, EPQR20, EPQR24R, EPQR28, EPQR33R, EPQR36, EPQR40, EPQR45, 
EPQR47R, EPQR51, EPQR55, EPQR58, EPQR61, EPQR63, EPQR67, EPQR69, EPQR72, EPQR78, EPQR90, EPQR94).
EXECUTE.


* Skala Psychotyzmu

COMPUTE P=sum(EPQR2R, EPQR5R, EPQR7R, EPQR9R, EPQR12R, EPQR14R, EPQR18R, EPQR21R, EPQR25, EPQR29, 
EPQR30, EPQR34, EPQR37, EPQR41R, EPQR42, EPQR48, EPQR50, EPQR54R, EPQR56, EPQR59R, EPQR64R, EPQR68R, 
EPQR73, EPQR75, EPQR79R, EPQR81R, EPQR85R, EPQR88R, EPQR91, EPQR95, EPQR96R, EPQR99R). 
EXECUTE.


* Skala Kłamstwa

COMPUTE K=sum(EPQR4R, EPQR10R, EPQR15, EPQR19R, EPQR23, EPQR27R, EPQR32R, EPQR39, EPQR44R, EPQR49R, 
EPQR53R, EPQR57R, EPQR62, EPQR66R, EPQR71R, EPQR77R, EPQR82R, EPQR86, EPQR89R, EPQR93R, EPQR98).
EXECUTE.


* Skłonność do Uzależnień

COMPUTE SDU=sum(EPQR2R, EPQR3, EPQR8, EPQR10, EPQR15R, EPQR16R, EPQR20R, EPQR25, EPQR26, EPQR27, 
EPQR31, EPQR34, EPQR35, EPQR36R, EPQR38, EPQR46, EPQR58R, EPQR60, EPQR65, EPQR68R, EPQR70, EPQR71, 
EPQR73, EPQR76, EPQR77, EPQR83, EPQR84, EPQR89, EPQR101R, EPQR102R, EPQR104, EPQR105).
EXECUTE.


* Skłonność do Przestępstw

COMPUTE SDP=sum(EPQR2R, EPQR3, EPQR8, EPQR13, EPQR17, EPQR22, EPQR25, EPQR26, EPQR31, EPQR34, EPQR35, 
EPQR37, EPQR38, EPQR43, EPQR46, EPQR51, EPQR52, EPQR59R, EPQR60, EPQR64R, EPQR65, EPQR70, EPQR73, EPQR76, 
EPQR78, EPQR83, EPQR84, EPQR95, EPQR101R, EPQR102R, EPQR103, EPQR104, EPQR105, EPQR106).
EXECUTE.



VARIABLE LABELS N 'Neurotyzm' E 'Ekstrawersja' K 'Skala Kłamstwa' P 'Psychotyzm' SDU 'Skłonność do Uzależnień' SDP 'Skłonność do Przestępstw'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


* Skala Neurotyzmu

RELIABILITY
  /VARIABLES=EPQR3 EPQR8 EPQR13 EPQR17 EPQR22 EPQR26 EPQR31 EPQR35 EPQR38 EPQR43 EPQR46 
EPQR52 EPQR60 EPQR65 EPQR70 EPQR74 EPQR76 EPQR80 EPQR83 EPQR84 EPQR87 EPQR92 EPQR97 EPQR100
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skala Ekstrawersji

RELIABILITY
  /VARIABLES=EPQR1 EPQR6 EPQR11 EPQR16 EPQR20 EPQR24R EPQR28 EPQR33R EPQR36 EPQR40 EPQR45 
EPQR47R EPQR51 EPQR55 EPQR58 EPQR61 EPQR63 EPQR67 EPQR69 EPQR72 EPQR78 EPQR90 EPQR94
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Skala Psychotyzmu

RELIABILITY
  /VARIABLES=EPQR2R EPQR5R EPQR7R EPQR9R EPQR12R EPQR14R EPQR18R EPQR21R EPQR25 EPQR29 
EPQR30 EPQR34 EPQR37 EPQR41R EPQR42 EPQR48 EPQR50 EPQR54R EPQR56 EPQR59R EPQR64R EPQR68R 
EPQR73 EPQR75 EPQR79R EPQR81R EPQR85R EPQR88R EPQR91 EPQR95 EPQR96R EPQR99R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skala Kłamstwa

RELIABILITY
  /VARIABLES=EPQR4R EPQR10R EPQR15 EPQR19R EPQR23 EPQR27R EPQR32R EPQR39 EPQR44R EPQR49R 
EPQR53R EPQR57R EPQR62 EPQR66R EPQR71R EPQR77R EPQR82R EPQR86 EPQR89R EPQR93R EPQR98
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skłonność do Uzależnień

RELIABILITY
  /VARIABLES=EPQR2R EPQR3 EPQR8 EPQR10 EPQR15R EPQR16R EPQR20R EPQR25 EPQR26 EPQR27 
EPQR31 EPQR34 EPQR35 EPQR36R EPQR38 EPQR46 EPQR58R EPQR60 EPQR65 EPQR68R EPQR70 EPQR71 
EPQR73 EPQR76 EPQR77 EPQR83 EPQR84 EPQR89 EPQR101R EPQR102R EPQR104 EPQR105
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skłonność do Przestępstw

RELIABILITY
  /VARIABLES=EPQR2R EPQR3 EPQR8 EPQR13 EPQR17 EPQR22 EPQR25 EPQR26 EPQR31 EPQR34 EPQR35 
EPQR37 EPQR38 EPQR43 EPQR46 EPQR51 EPQR52 EPQR59R EPQR60 EPQR64R EPQR65 EPQR70 EPQR73 EPQR76 
EPQR78 EPQR83 EPQR84 EPQR95 EPQR101R EPQR102R EPQR103 EPQR104 EPQR105 EPQR106
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




**************************************************************************
* Przeliczanie na wyniki standaryzowane (staniny)
**************************************************************************
Na podstawie tabel s.175 - 185 z podręcznika

* Poniżej między Define i Enddefine wpisz zmienną określającą płeć i uruchom całą część syntaksu.

DEFINE X1 ()
Plec
!ENDDEFINE.

DEFINE X2 ()
Wiek
!ENDDEFINE.




DO IF (X1=1).
- DO IF (15 <= X2 & X2 <= 19).
  recode Żwaw
  (0 thru 8=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (20 <= X2 & X2 <= 29).
  recode Żwaw
  (0 thru 5=1) (6 thru 8=2) (9 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (30 <= X2 & X2 <= 39).
  recode Żwaw
  (0 thru 6=1) (7 thru 8=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (40 <= X2 & X2 <= 49).
  recode Żwaw
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (50 <= X2 & X2 <= 59).
  recode Żwaw
  (0 thru 6=1) (7 thru 9=2) (10 thru 11=3) 
  (12 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (60 <= X2 & X2 <= 80).
  recode Żwaw
  (0 thru 6=1) (7=2) (8 thru 10=3) 
  (11 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- END IF.
ELSE IF (X1=2).
- DO IF (15 <= X2 & X2 <= 19).
  recode Żwaw
  (0 thru 8=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (20 <= X2 & X2 <= 29).
  recode Żwaw
  (0 thru 5=1) (6 thru 8=2) (9 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (30 <= X2 & X2 <= 39).
  recode Żwaw
  (0 thru 6=1) (7 thru 8=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (40 <= X2 & X2 <= 49).
  recode Żwaw
  (0 thru 7=1) (8 thru 10=2) (11 thru 12=3) 
  (13 thru 15=4) (16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (50 <= X2 & X2 <= 59).
  recode Żwaw
  (0 thru 6=1) (7 thru 9=2) (10 thru 11=3) 
  (12 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- ELSE IF  (60 <= X2 & X2 <= 80).
  recode Żwaw
  (0 thru 6=1) (7=2) (8 thru 10=3) 
  (11 thru 13=4) (14 thru 15=5) (16 thru 17=6) 
  (18=7) (19=8) (20=9) INTO ŻwawST.
- END IF.
END IF.
EXECUTE.


* normy kobiet X2=2 niezweryfikowane



VARIABLE LABELS  Żwaw 'Żwawość (skala staninowa)'.
execute.

