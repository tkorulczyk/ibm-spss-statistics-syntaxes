
 * EPQ-R(S)
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
    EPQR45 EPQR46 EPQR47 EPQR48 (2=0) (1=1).
EXECUTE.


******
* Odwrócenie itemów

RECODE 
EPQR27 EPQR41 EPQR2 EPQR6 EPQR18 EPQR26 EPQR28 EPQR35 EPQR43 
EPQR8 EPQR12 EPQR20 EPQR24 EPQR29 EPQR33 EPQR37 EPQR40 EPQR47
(1=0) (0=1) INTO 
EPQR27R EPQR41R EPQR2R EPQR6R EPQR18R EPQR26R EPQR28R EPQR35R EPQR43R 
EPQR8R EPQR12R EPQR20R EPQR24R EPQR29R EPQR33R EPQR37R EPQR40R EPQR47R.
EXECUTE.


******
* Formowanie skali
* Skale uśrednione


* Skala Neurotyzmu

COMPUTE N=mean(EPQR1, EPQR5, EPQR9, EPQR13, EPQR17, EPQR21, EPQR25, EPQR30, EPQR34, EPQR38, EPQR42, EPQR46).
EXECUTE.


* Skala Ekstrawersji

COMPUTE E=mean(EPQR3, EPQR7, EPQR11, EPQR15, EPQR19, EPQR23, EPQR27R, EPQR32, EPQR36, EPQR41R, EPQR44, EPQR48).
EXECUTE.


* Skala Psychotyzmu

COMPUTE P=mean(EPQR2R, EPQR6R, EPQR10, EPQR14, EPQR18R, EPQR22, EPQR26R, EPQR28R, EPQR31, EPQR35R, EPQR39, EPQR43R). 
EXECUTE.


* Skala Kłamstwa

COMPUTE K=mean(EPQR4, EPQR8R, EPQR12R, EPQR16, EPQR20R, EPQR24R, EPQR29R, EPQR33R, EPQR37R, EPQR40R, EPQR45, EPQR47R).
EXECUTE.



******
* Skale zsumowane

* Skala Neurotyzmu

COMPUTE N=sum(EPQR1, EPQR5, EPQR9, EPQR13, EPQR17, EPQR21, EPQR25, EPQR30, EPQR34, EPQR38, EPQR42, EPQR46).
EXECUTE.


* Skala Ekstrawersji

COMPUTE E=sum(EPQR3, EPQR7, EPQR11, EPQR15, EPQR19, EPQR23, EPQR27R, EPQR32, EPQR36, EPQR41R, EPQR44, EPQR48).
EXECUTE.


* Skala Psychotyzmu

COMPUTE P=sum(EPQR2R, EPQR6R, EPQR10, EPQR14, EPQR18R, EPQR22, EPQR26R, EPQR28R, EPQR31, EPQR35R, EPQR39, EPQR43R). 
EXECUTE.


* Skala Kłamstwa

COMPUTE K=sum(EPQR4, EPQR8R, EPQR12R, EPQR16, EPQR20R, EPQR24R, EPQR29R, EPQR33R, EPQR37R, EPQR40R, EPQR45, EPQR47R).
EXECUTE.


VARIABLE LABELS N 'Neurotyzm' E 'Ekstrawersja' K 'Skala Kłamstwa' P 'Psychotyzm'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************


* Skala Neurotyzmu

RELIABILITY
  /VARIABLES=EPQR1 EPQR5 EPQR9 EPQR13 EPQR17 EPQR21 EPQR25 EPQR30 EPQR34 EPQR38 EPQR42 EPQR46
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skala Ekstrawersji

RELIABILITY
  /VARIABLES=EPQR3 EPQR7 EPQR11 EPQR15 EPQR19 EPQR23 EPQR27R EPQR32 EPQR36 EPQR41R EPQR44 EPQR48
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Skala Psychotyzmu

RELIABILITY
  /VARIABLES=EPQR2R EPQR6R EPQR10 EPQR14 EPQR18R EPQR22 EPQR26R EPQR28R EPQR31 EPQR35R EPQR39 EPQR43R
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Skala Kłamstwa

RELIABILITY
  /VARIABLES=EPQR4 EPQR8R EPQR12R EPQR16 EPQR20R EPQR24R EPQR29R EPQR33R EPQR37R EPQR40R EPQR45 EPQR47R
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


