
 * KKS
Matczak, A. (2001). Kwestionariusz kompetencji społecznych. Podręcznik. Warszawa: Pracownia Testów Psychologicznych Polskiego Towarzystwa Psychologicznego.

* Brak itemów do odwracania!

******
* Formowanie skali
* Skale uśrednione


* Kompetencje w sytuacjach intymnych

COMPUTE KKS.I=mean(KKS9, KKS13, KKS17, KKS18, KKS23, KKS29, KKS36, KKS37, KKS51, KKS54, KKS62, KKS70, KKS73, KKS79, KKS82).
EXECUTE.


* Kompetencje w sytuacjach ekspozycji społecznej

COMPUTE KKS.ES=mean(KKS1, KKS3, KKS5, KKS8, KKS10, KKS12, KKS14, KKS21, KKS22, KKS31, KKS38, KKS40, KKS43, KKS47, KKS59, KKS67, KKS75, KKS90).
EXECUTE.


* Kompetencje w sytuacjach wymagających asertywności

COMPUTE KKS.A=mean(KKS4, KKS20, KKS27, KKS32, KKS48, KKS55, KKS56, KKS57, KKS58, KKS63, KKS65, KKS69, KKS71, KKS74, KKS78, KKS83, KKS89). 
EXECUTE.


* Kompetncje społeczne (wynik ogólny)

COMPUTE KKS=mean(KKS1, KKS3, KKS4, KKS5, KKS8, KKS9, KKS10, KKS12, KKS13, KKS14, KKS17, KKS18, KKS20, KKS21, KKS22, KKS23, KKS25, KKS27, KKS29, 
KKS30, KKS31, KKS32, KKS34, KKS36, KKS37, KKS38, KKS40, KKS41, KKS42, KKS43, KKS47, KKS48, KKS51, KKS54, KKS55, KKS56, KKS57, KKS58, KKS59, KKS62, 
KKS63, KKS65, KKS67, KKS68, KKS69, KKS70, KKS71, KKS72, KKS73, KKS74, KKS75, KKS78, KKS79, KKS82, KKS83, KKS86, KKS87, KKS88, KKS89, KKS90).
EXECUTE.




******
* Skale zsumowane



* Kompetencje w sytuacjach intymnych

COMPUTE KKS.I=sum(KKS9, KKS13, KKS17, KKS18, KKS23, KKS29, KKS36, KKS37, KKS51, KKS54, KKS62, KKS70, KKS73, KKS79, KKS82).
EXECUTE.


* Kompetencje w sytuacjach ekspozycji społecznej

COMPUTE KKS.ES=sum(KKS1, KKS3, KKS5, KKS8, KKS10, KKS12, KKS14, KKS21, KKS22, KKS31, KKS38, KKS40, KKS43, KKS47, KKS59, KKS67, KKS75, KKS90).
EXECUTE.


* Kompetencje w sytuacjach wymagających asertywności

COMPUTE KKS.A=sum(KKS4, KKS20, KKS27, KKS32, KKS48, KKS55, KKS56, KKS57, KKS58, KKS63, KKS65, KKS69, KKS71, KKS74, KKS78, KKS83, KKS89).
EXECUTE.


* Kompetncje społeczne (wynik ogólny)

COMPUTE KKS=sum(KKS1, KKS3, KKS4, KKS5, KKS8, KKS9, KKS10, KKS12, KKS13, KKS14, KKS17, KKS18, KKS20, KKS21, KKS22, KKS23, KKS25, KKS27, KKS29, 
KKS30, KKS31, KKS32, KKS34, KKS36, KKS37, KKS38, KKS40, KKS41, KKS42, KKS43, KKS47, KKS48, KKS51, KKS54, KKS55, KKS56, KKS57, KKS58, KKS59, KKS62, 
KKS63, KKS65, KKS67, KKS68, KKS69, KKS70, KKS71, KKS72, KKS73, KKS74, KKS75, KKS78, KKS79, KKS82, KKS83, KKS86, KKS87, KKS88, KKS89, KKS90).
EXECUTE.




VARIABLE LABELS  KKS.I 'Kompetencje w sytuacjach intymnych' KKS.ES 'Kompetencje w sytuacjach ekspozycji społecznej' 
KKS.A 'Kompetencje w sytuacjach wymagających asertywności' KKS 'Kompetncje społeczne (wynik ogólny)'. 
execute.



**************************************************************************
* Rzetelności skali
**************************************************************************

* Kompetencje w sytuacjach intymnych

RELIABILITY
  /VARIABLES=KKS9 KKS13 KKS17 KKS18 KKS23 KKS29 KKS36 KKS37 KKS51 KKS54 KKS62 KKS70 KKS73 KKS79 KKS82
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetencje w sytuacjach ekspozycji społecznej

RELIABILITY
  /VARIABLES=KKS1 KKS3 KKS5 KKS8 KKS10 KKS12 KKS14 KKS21 KKS22 KKS31 KKS38 KKS40 KKS43 KKS47 KKS59 KKS67 KKS75 KKS90
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetencje w sytuacjach wymagających asertywności

RELIABILITY
  /VARIABLES=KKS4 KKS20 KKS27 KKS32 KKS48 KKS55 KKS56 KKS57 KKS58 KKS63 KKS65 KKS69 KKS71 KKS74 KKS78 KKS83 KKS89
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.


* Kompetncje społeczne (wynik ogólny)

RELIABILITY
  /VARIABLES=KKS1 KKS3 KKS4 KKS5 KKS8 KKS9 KKS10 KKS12 KKS13 KKS14 KKS17 KKS18 KKS20 KKS21 KKS22 KKS23 KKS25 KKS27 KKS29 
KKS30 KKS31 KKS32 KKS34 KKS36 KKS37 KKS38 KKS40 KKS41 KKS42 KKS43 KKS47 KKS48 KKS51 KKS54 KKS55 KKS56 KKS57 KKS58 KKS59 KKS62 
KKS63 KKS65 KKS67 KKS68 KKS69 KKS70 KKS71 KKS72 KKS73 KKS74 KKS75 KKS78 KKS79 KKS82 KKS83 KKS86 KKS87 KKS88 KKS89 KKS90
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.




**************************************************************************
* Przeliczanie na wyniki standaryzowane (steny)
**************************************************************************
Na podstawie tabel s.175 - 185 z podręcznika

* Poniżej między Define i Enddefine wpisz zmienną określającą płeć i uruchom całą część syntaksu.

DEFINE X1 ()
Plec
!ENDDEFINE.



*********
* Definiowanie docelowej grupy normalizacyjnej. Grupy normalizacyjne dla KKS:
1 = Uczniowie szkół średnich w wieku 15 - 19 lat
2 = Studenci
3 = Dorośli

Wprowadź ponizej jedną z liczb w zależności od grupy normalizacyjnej.

DEFINE X2 ()
2
!ENDDEFINE.


* Kompetencje w sytuacjach intymnych

DO IF (X1=1).
- DO IF (X2 = 1).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- ELSE IF (X2 = 2).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- ELSE IF (X2 = 3).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- ELSE IF (X2 = 2).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- ELSE IF (X2 = 3).
  recode KKS.I
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.IST.
- END IF.
END IF.
EXECUTE.



* Kompetencje w sytuacjach ekspozycji społecznej

DO IF (X1=1).
- DO IF (X2 = 1).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- ELSE IF (X2 = 2).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- ELSE IF (X2 = 3).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- ELSE IF (X2 = 2).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- ELSE IF (X2 = 3).
  recode KKS.ES
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.ESST.
- END IF.
END IF.
EXECUTE.


* Kompetencje w sytuacjach wymagających asertywności

DO IF (X1=1).
- DO IF (X2 = 1).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- ELSE IF (X2 = 2).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- ELSE IF (X2 = 3).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- ELSE IF (X2 = 2).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- ELSE IF (X2 = 3).
  recode KKS.A
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKS.AST.
- END IF.
END IF.
EXECUTE.


* Kompetncje społeczne (wynik ogólny)

DO IF (X1=1).
- DO IF (X2 = 1).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- ELSE IF (X2 = 2).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- ELSE IF (X2 = 3).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- ELSE IF (X2 = 2).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- ELSE IF (X2 = 3).
  recode KKS
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) INTO KKSST.
- END IF.
END IF.
EXECUTE.


VARIABLE LABELS  Żwaw 'Żwawość (skala staninowa)'.
execute.



**************************************************************************
* Wyznaczanie przedziałów ufności 85% (wyniki surowe)
**************************************************************************


* Kompetencje w sytuacjach intymnych

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- ELSE IF (X2 = 2).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- ELSE IF (X2 = 3).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- ELSE IF (X2 = 2).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- ELSE IF (X2 = 3).
compute KKS.I85Lo = KKS.I - 4.
compute KKS.I85Hi = KKS.I + 4.
- END IF.
END IF.
EXECUTE.


* Kompetencje w sytuacjach ekspozycji społecznej

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- ELSE IF (X2 = 2).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- ELSE IF (X2 = 3).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- ELSE IF (X2 = 2).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- ELSE IF (X2 = 3).
compute KKS.ES85Lo = KKS.ES - 4.
compute KKS.ES85Hi = KKS.ES + 4.
- END IF.
END IF.
EXECUTE.



* Kompetencje w sytuacjach wymagających asertywności

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- ELSE IF (X2 = 2).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- ELSE IF (X2 = 3).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- ELSE IF (X2 = 2).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- ELSE IF (X2 = 3).
compute KKS.A85Lo = KKS.A - 4.
compute KKS.A85Hi = KKS.A + 4.
- END IF.
END IF.
EXECUTE.



* Kompetncje społeczne (wynik ogólny)

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS85Lo = KKS - 8.
compute KKS85Hi = KKS + 8.
- ELSE IF (X2 = 2).
compute KKS85Lo = KKS - 8.
compute KKS85Hi = KKS + 8.
- ELSE IF (X2 = 3).
compute KKS85Lo = KKS - 7.
compute KKS85Hi = KKS + 7.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS85Lo = KKS - 8.
compute KKS85Hi = KKS + 8.
- ELSE IF (X2 = 2).
compute KKS85Lo = KKS - 8.
compute KKS85Hi = KKS + 8.
- ELSE IF (X2 = 3).
compute KKS85Lo = KKS - 8.
compute KKS85Hi = KKS + 8.
- END IF.
END IF.
EXECUTE.



**************************************************************************
* Wyznaczanie przedziałów ufności 95%
**************************************************************************


* Kompetencje w sytuacjach intymnych

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.I95Lo = KKS.I - 6.
compute KKS.I95Hi = KKS.I + 6.
- ELSE IF (X2 = 2).
compute KKS.I95Lo = KKS.I - 5.
compute KKS.I95Hi = KKS.I + 5.
- ELSE IF (X2 = 3).
compute KKS.I95Lo = KKS.I - 5.
compute KKS.I95Hi = KKS.I + 5.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.I95Lo = KKS.I - 6.
compute KKS.I95Hi = KKS.I + 6.
- ELSE IF (X2 = 2).
compute KKS.I95Lo = KKS.I - 6.
compute KKS.I95Hi = KKS.I + 6.
- ELSE IF (X2 = 3).
compute KKS.I95Lo = KKS.I - 5.
compute KKS.I95Hi = KKS.I + 5.
- END IF.
END IF.
EXECUTE.


* Kompetencje w sytuacjach ekspozycji społecznej

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.ES95Lo = KKS.ES - 6.
compute KKS.ES95Hi = KKS.ES + 6.
- ELSE IF (X2 = 2).
compute KKS.ES95Lo = KKS.ES - 5.
compute KKS.ES95Hi = KKS.ES + 5.
- ELSE IF (X2 = 3).
compute KKS.ES95Lo = KKS.ES - 5.
compute KKS.ES95Hi = KKS.ES + 5.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.ES95Lo = KKS.ES - 5.
compute KKS.ES95Hi = KKS.ES + 5.
- ELSE IF (X2 = 2).
compute KKS.ES95Lo = KKS.ES - 5.
compute KKS.ES95Hi = KKS.ES + 5.
- ELSE IF (X2 = 3).
compute KKS.ES95Lo = KKS.ES - 5.
compute KKS.ES95Hi = KKS.ES + 5.
- END IF.
END IF.
EXECUTE.



* Kompetencje w sytuacjach wymagających asertywności

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS.A95Lo = KKS.A - 6.
compute KKS.A95Hi = KKS.A + 6.
- ELSE IF (X2 = 2).
compute KKS.A95Lo = KKS.A - 6.
compute KKS.A95Hi = KKS.A + 6.
- ELSE IF (X2 = 3).
compute KKS.A95Lo = KKS.A - 6.
compute KKS.A95Hi = KKS.A + 6.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS.A95Lo = KKS.A - 6.
compute KKS.A95Hi = KKS.A + 6.
- ELSE IF (X2 = 2).
compute KKS.A95Lo = KKS.A - 6.
compute KKS.A95Hi = KKS.A + 6.
- ELSE IF (X2 = 3).
compute KKS.A95Lo = KKS.A - 5.
compute KKS.A95Hi = KKS.A + 5.
- END IF.
END IF.
EXECUTE.



* Kompetncje społeczne (wynik ogólny)

DO IF (X1=1).
- DO IF (X2 = 1).
compute KKS95Lo = KKS - 11.
compute KKS95Hi = KKS + 11.
- ELSE IF (X2 = 2).
compute KKS95Lo = KKS - 11.
compute KKS95Hi = KKS + 11.
- ELSE IF (X2 = 3).
compute KKS95Lo = KKS - 10.
compute KKS95Hi = KKS + 10.
- END IF.
ELSE IF (X1=2).
- DO IF (X2 = 1).
compute KKS95Lo = KKS - 11.
compute KKS95Hi = KKS + 11.
- ELSE IF (X2 = 2).
compute KKS95Lo = KKS - 11.
compute KKS95Hi = KKS + 11.
- ELSE IF (X2 = 3).
compute KKS95Lo = KKS - 10.
compute KKS95Hi = KKS + 10.
- END IF.
END IF.
EXECUTE.





* Kompetncje społeczne (wynik ogólny)

DO IF (X1=1).
- DO IF (X2 = 1).
  recode KKS KKS85Hi KKS85Lo KKS95Hi KKS95Lo
  (Lowest thru 32=1) (9 thru 10=2) (11 thru 12=3) 
  (13 thru 14=4) (15 thru 16=5) (17=6) 
  (18=7) (19=8) (20=9) (56 thru Highest=10) 
INTO KKSST  KKS95Hi KKS95Lo.
- ELSE IF (X2 = 2).
  recode KKS
