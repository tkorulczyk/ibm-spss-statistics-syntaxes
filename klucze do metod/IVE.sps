
 * IVE
Zawadzki, B., & Strelau, J. (1997). Formalna charakterystyka zachowania-kwestionariusz temperamentu (FCZ-KT): 
podręcznik. Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że Tak = 1, Nie = 2, to należy skorzystać z tej części syntaksu, 
aby odpowiedzi na Nie przybrały wartość 0, zgodnie z rekomendacją w metodzie

RECODE IVE1 IVE2 IVE3 IVE4 IVE5 IVE6 IVE7 IVE8 IVE9 IVE10 IVE11 
    IVE12 IVE13 IVE14 IVE15 IVE16 IVE17 IVE18 IVE19 IVE20 IVE21 IVE22 
    IVE23 IVE24 IVE25 IVE26 IVE27 IVE28 IVE29 IVE30 IVE31 IVE32 IVE33 
    IVE34 IVE35 IVE36 IVE37 IVE38 IVE39 IVE40 IVE41 IVE42 IVE43 IVE44 
    IVE45 IVE46 IVE47 IVE48 IVE49 IVE50 IVE51 IVE52 IVE53 IVE54 (2=0) (1=1).
EXECUTE.


******
* Odwrócenie itemów

RECODE 
IVE8 IVE13 IVE29 IVE32 IVE19 IVE44 IVE48 IVE2 IVE12 IVE28 IVE34 IVE47
(1=0) (0=1) INTO 
IVE8R IVE13R IVE29R IVE32R IVE19R IVE44R IVE48R IVE2R IVE12R IVE28R IVE34R IVE47R
EXECUTE.



******
* Formowanie skali
* Skale uśrednione


* Empatia

COMPUTE Emp=mean(IVE3, IVE5, IVE8R, IVE10, IVE13R, IVE15, IVE18, IVE21, IVE23, IVE24, IVE29R, IVE32R, IVE37, IVE40, IVE45, IVE50, IVE51, IVE53, IVE54).
EXECUTE.


* Impulsywność

COMPUTE Imp=mean(IVE7, IVE9, IVE11, IVE16, IVE19R, IVE22, IVE25, IVE26, IVE27, IVE31, IVE33, IVE35, IVE38, IVE42, IVE43, IVE44R, IVE48R, IVE49, IVE52).
EXECUTE.


* Skłonność do ryzyka

COMPUTE SkR=mean(IVE1, IVE2R, IVE4, IVE6, IVE12R, IVE14, IVE17, IVE20, IVE28R, IVE30, IVE34R, IVE36, IVE39, IVE41, IVE46, IVE47R). 
EXECUTE.




******
* Skale zsumowane

* Empatia

COMPUTE Emp=sum(IVE3, IVE5, IVE8R, IVE10, IVE13R, IVE15, IVE18, IVE21, IVE23, IVE24, IVE29R, IVE32R, IVE37, IVE40, IVE45, IVE50, IVE51, IVE53, IVE54).
EXECUTE.


* Impulsywność

COMPUTE Imp=sum(IVE7, IVE9, IVE11, IVE16, IVE19R, IVE22, IVE25, IVE26, IVE27, IVE31, IVE33, IVE35, IVE38, IVE42, IVE43, IVE44R, IVE48R, IVE49, IVE52).
EXECUTE.


* Skłonność do ryzyka

COMPUTE SkR=sum(IVE1, IVE2R, IVE4, IVE6, IVE12R, IVE14, IVE17, IVE20, IVE28R, IVE30, IVE34R, IVE36, IVE39, IVE41, IVE46, IVE47R). 
EXECUTE.


VARIABLE LABELS Emp 'Empatia' Imp 'Impulsywność' SkR 'Skłonność do ryzyka'.
execute.


**************************************************************************
* Rzetelności skali
**************************************************************************

* Empatia

RELIABILITY
  /VARIABLES=IVE3 IVE5 IVE8R IVE10 IVE13R IVE15 IVE18 IVE21 IVE23 IVE24 IVE29R IVE32R IVE37 IVE40 IVE45 IVE50 IVE51 IVE53 IVE54
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Impulsywność

RELIABILITY
  /VARIABLES=IVE7 IVE9 IVE11 IVE16 IVE19R IVE22 IVE25 IVE26 IVE27 IVE31 IVE33 IVE35 IVE38 IVE42 IVE43 IVE44R IVE48R IVE49 IVE52
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

* Skłonność do ryzyka

RELIABILITY
  /VARIABLES=IVE1 IVE2R IVE4 IVE6 IVE12R IVE14 IVE17 IVE20 IVE28R IVE30 IVE34R IVE36 IVE39 IVE41 IVE46 IVE47R
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


