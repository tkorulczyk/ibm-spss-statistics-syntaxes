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


* Emocjonalna deprywacja.	
COMPUTE YSQEmDep = sum(YSQ_1, YSQ_19, YSQ_37, YSQ_55, YSQ_73).
EXECUTE.
	
* Porzucenie.			
COMPUTE YSQPorzuc = sum(YSQ_2, YSQ_20, YSQ_38, YSQ_56, YSQ_74).
EXECUTE.
						
* Nieufność.		
COMPUTE YSQNieufn = sum(YSQ_3, YSQ_21, YSQ_39, YSQ_57, YSQ_75).
EXECUTE.
					
* Izolacja społeczna/Wyobcowanie.	
COMPUTE YSQIzSpol = sum(YSQ_4, YSQ_22, YSQ_40, YSQ_58, YSQ_76).
EXECUTE.
						
* Ułomność/”Nie zasługujący na miłość”.		
COMPUTE YSQUlomn = sum(YSQ_5, YSQ_23, YSQ_41, YSQ_59, YSQ_77).
EXECUTE.
					
* Porażka w osiągnięciach.		
COMPUTE YSQPoraz = sum(YSQ_6, YSQ_24, YSQ_42, YSQ_60, YSQ_78).
EXECUTE.
							
* Brak kompetencji praktycznych/Zależność	.	
COMPUTE YSQZalezn = sum(YSQ_7, YSQ_25, YSQ_43, YSQ_61, YSQ_79).
EXECUTE.
						
* Podatność na zranienie lub chorobę.	
COMPUTE YSQPodatZr = sum(YSQ_8, YSQ_26, YSQ_44, YSQ_62, YSQ_80).
EXECUTE.
				
* Uwikłanie.			
COMPUTE YSQUwikl = sum(YSQ_9, YSQ_27, YSQ_45, YSQ_63, YSQ_81).
EXECUTE.
		
* Podporządkowanie.				
COMPUTE YSQPodporz = sum(YSQ_10, YSQ_28, YSQ_46, YSQ_64, YSQ_82).
EXECUTE.
		
* Samopoświęcenie.				
COMPUTE YSQSamopos = sum(YSQ_11, YSQ_29, YSQ_47, YSQ_65, YSQ_83).
EXECUTE.
		
* Zahamowanie emocjonalne.			
COMPUTE YSQZahamEm = sum(YSQ_12, YSQ_30, YSQ_48, YSQ_66, YSQ_84).
EXECUTE.
		
* Nieustępliwość w standardach (bezlitosne normy).	
COMPUTE YSQNieuStan = sum(YSQ_13, YSQ_31, YSQ_49, YSQ_67, YSQ_85).
EXECUTE.
		
* Roszczenia/wyższość.			
COMPUTE YSQRoszcz = sum(YSQ_14, YSQ_32, YSQ_50, YSQ_68, YSQ_86).
EXECUTE.
		
* Niewystarczająca samokontrola/samodyscyplina.			
COMPUTE YSQNieSamoktr = sum(YSQ_15, YSQ_33, YSQ_51, YSQ_69, YSQ_87).
EXECUTE.

* Poszukiwanie podziwu/uznania.			
COMPUTE YSQPoszPodziw = sum(YSQ_16, YSQ_34, YSQ_52, YSQ_70, YSQ_88).
EXECUTE.
		
* Pesymizm/Zamartwianie się.		
COMPUTE YSQPesym = sum(YSQ_17, YSQ_35, YSQ_53, YSQ_71, YSQ_89).
EXECUTE.
		
* „Samokaranie” (skłonność do wymierzania sobie kar).	
COMPUTE YSQSamokar = sum(YSQ_18, YSQ_36, YSQ_54, YSQ_72, YSQ_90).
EXECUTE.


/* Disconnection & rejection */.
COMPUTE YSQ_RiO = sum(YSQEmDep, YSQPorzuc, YSQNieufn, YSQIzSpol, YSQUlomn). 
COMPUTE YSQ_OA = sum(YSQZalezn, YSQPoraz, YSQPodatZr, YSQUwikl). 
COMPUTE YSQ_NnI = sum(YSQPodporz, YSQSamopos,YSQPoszPodziw). 
COMPUTE YSQ_UG = sum(YSQRoszcz,  YSQNieSamoktr). 
COMPUTE YSQ_NC = sum(YSQZahamEm,  YSQPesym,  YSQNieuStan,  YSQSamokar). 
Execute.


VARIABLE LABELS
YSQ_RiO 'Rozłączenie i odrzucenie'
YSQ_OA 'Osłabiona autonomia'
YSQ_NnI 'Nakierowanie na innych'
YSQ_UG 'Uszkodzone granice'
YSQ_NC 'Nadmierna czujność'.
Execute.



/* Cała skala - wynik ogólny */.
COMPUTE YSQ = sum(YSQEmDep, YSQPorzuc, YSQNieufn, YSQIzSpol, YSQUlomn, YSQPoraz, 
YSQZalezn, YSQPodatZr, YSQUwikl, YSQPodporz, YSQSamopos, YSQZahamEm, YSQNieuStan, 
YSQRoszcz, YSQNieSamoktr, YSQPoszPodziw, YSQPesym, YSQSamokar).




********
* Nadawanie etykiet z nazwami skal

VARIABLE LABELS
YSQEmDep 'Emocjonalna deprywacja'		
YSQPorzuc 'Porzucenie'	
YSQNieufn 'Nieufność'	
YSQIzSpol 'Izolacja społeczna/Wyobcowanie'
YSQUlomn 'Ułomność/”Nie zasługujący na miłość”'	
YSQPoraz 'Porażka w osiągnięciach'	
YSQZalezn 'Brak kompetencji praktycznych/Zależność'
YSQPodatZr 'Podatność na zranienie lub chorobę'	
YSQUwikl 'Uwikłanie'		
YSQPodporz 'Podporządkowanie'			
YSQSamopos 'Samopoświęcenie'			
YSQZahamEm 'Zahamowanie emocjonalne'		
YSQNieuStan 'Nieustępliwość w standardach (bezlitosne normy)'	
YSQRoszcz 'Roszczenia/wyższość'		
YSQNieSamoktr 'Niewystarczająca samokontrola/samodyscyplina'		
YSQPoszPodziw 'Poszukiwanie podziwu/uznania'	
YSQPesym 'Pesymizm/Zamartwianie się'	
YSQSamokar '„Samokaranie” (skłonność do wymierzania sobie kar)'.
EXECUTE.


**************************************************************************
* Rzetelności skal na próbie własnej
**************************************************************************


* Negative Affect.

RELIABILITY
  /VARIABLES=
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE
  /SUMMARY=TOTAL.

