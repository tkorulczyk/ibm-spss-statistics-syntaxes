
 * Skala Dyrektywności Raya (D-15)
Brzozowski, P., & Raya, S. D. J. J. (1997). Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.


**************************************************************************
* Odwracanie itemów i obliczanie skal
**************************************************************************

* Jeśli metoda kodowana była w ten sposób, że Nie = 2, ? = 0, to należy skorzystać z tej części syntaksu, 
aby przywrócić je do sposobu kodowania rekomendowanego w metodzie Tak=1; ?=2; Nie=3

RECODE SD1 SD2 SD3 SD4 SD5 SD6 SD7 SD8 SD9 SD10 SD11 SD12 SD13 SD14 SD15 (2=3) (0=2).    
EXECUTE.


* Odwrócenie itemów

RECODE SD1 SD2 SD8 SD10 SD13 (1=3) (2=2) (3=1) INTO SD1R SD2R SD8R SD10R SD13R.
EXECUTE.


******
* Formowanie skali
* Skale uśrednione

COMPUTE Dyrekt=mean(SD1R, SD2R, SD3, SD4, SD5, SD6, SD7, SD8R, SD9, SD10R, SD11, SD12, SD13R, SD14, SD15).
EXECUTE.



* Skale zsumowane

COMPUTE Dyrekt=sum(SD1R, SD2R, SD3, SD4, SD5, SD6, SD7, SD8R, SD9, SD10R, SD11, SD12, SD13R, SD14, SD15).
EXECUTE.


VARIABLE LABELS  Dyrekt 'Dyrektywność'.
execute.



**************************************************************************
* Rzetelności skali
**************************************************************************

RELIABILITY
  /VARIABLES=SD1R SD2R SD3 SD4 SD5 SD6 SD7 SD8R SD9 SD10R SD11 SD12 SD13R SD14 SD15
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




**************************************************************************
* Przeliczanie na wyniki standaryzowane (steny)
**************************************************************************
Na podstawie tabel s.85 z Brzozowski, P., & Raya, S. D. J. J. (1997). Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

* Poniżej między Define i Enddefine wpisz zmienną określającą płeć i uruchom całą część syntaksu.

DEFINE X1 ()
Plec
!ENDDEFINE.


DO IF (X1=1).
recode Dyrekt
(15 thru 16=1) (17 thru 19=2) (20 thru 24=3) 
(25 thru 28=4) (29 thru 31=5) (32 thru 34=6) 
(35 thru 38=7) (39 thru 42=8) (43=9) 
(44 thru 45=10) INTO DyrektST.
ELSE IF (X1=2).
recode Dyrekt
(15 thru 16=1) (17 thru 18=2) (19 thru 20=3) 
(21 thru 24=4) (25 thru 27=5) (28 thru 31=6) 
(32 thru 36=7) (37 thru 39=8) (40 thru 41=9) 
(42 thru 45=10) INTO DyrektST.
END IF.
EXECUTE.


VARIABLE LABELS  DyrektST 'Dyrektywność (skala stenowa)'.
execute.

