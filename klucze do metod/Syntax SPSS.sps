* Autistic Quotient

Recode AQ1 AQ3 AQ8 AQ10 AQ14 AQ15 AQ17 AQ20 AQ24 AQ25 AQ27 AQ28 AQ29 AQ30 AQ31 AQ32 AQ34 AQ36 AQ37 AQ38 AQ40 AQ41 AQ44 AQ46 AQ47 AQ48 AQ49 AQ50 
(1=4) (2=3) (3=2) (4=1).
Execute.
.
Recode AQ1 AQ2 AQ3 AQ4 AQ5 AQ6 AQ7 AQ8 AQ9 AQ10 AQ11 AQ12 AQ13 AQ14 AQ15 AQ16 AQ17 AQ18 AQ19 AQ20 AQ21 AQ22 AQ23 AQ24 AQ25 AQ26 AQ27 AQ28 AQ29 AQ30 AQ31 AQ32 AQ33 AQ34 AQ35 AQ36 AQ37 AQ38 AQ39 AQ40 AQ41 AQ42 AQ43 AQ44 AQ45 AQ46 AQ47 AQ48 AQ49 AQ50 
(1=0) (2=0) (3=1) (4=1).
Execute.


compute SSK = sum(AQ1, AQ11, AQ13, AQ15, AQ22, AQ36, AQ44, AQ45, AQ47, AQ48).
compute ASW = sum(AQ2, AQ4, AQ10, AQ16, AQ25, AQ32, AQ34, AQ37, AQ43, AQ46).
compute ATD = sum(AQ5, AQ6, AQ9, AQ12, AQ19, AQ23, AQ28, AQ29, AQ30, AQ49). 
compute CM = sum(AQ7, AQ17, AQ18, AQ26, AQ27, AQ31, AQ33, AQ35, AQ38, AQ39). 
compute IMA = sum(AQ3, AQ8, AQ14, AQ20, AQ21, AQ24, AQ40, AQ41, AQ42, AQ50).
Variable labels SSK 'Social Skills' ASW 'Attention Switching' ATD 'Attention to detail' CM 'Communication' IMA 'Imagination'.
Execute.


* Temperament
Note: Most statistics programs will carry out these steps for you.  Users of SPSS can copy the following commands into a syntax file to reverse items and calculate scale scores  
The syntax assumes that items are titled “atq1”, “atq2”, “atq3”, etc.  It is also assumed that no score was entered when caregivers omitted an item or checked “Does not apply”.

COMPUTE atq68r = (8-atq68).
COMPUTE atq75r = (8-atq75).
COMPUTE atq6r = (8-atq6).
COMPUTE atq38r = (8-atq38).
COMPUTE atq58r = (8-atq58).
COMPUTE atq9r = (8-atq9).
COMPUTE atq20r = (8-atq20).
COMPUTE atq34r = (8-atq34).
COMPUTE atq2r = (8-atq2).
COMPUTE atq8r = (8-atq8).
COMPUTE atq72r = (8-atq72).
COMPUTE atq5r = (8-atq5).
COMPUTE atq29r = (8-atq29).
COMPUTE atq40r = (8-atq40).
COMPUTE atq50r = (8-atq50).
COMPUTE atq53r = (8-atq53).
COMPUTE atq60r = (8-atq60).
COMPUTE atq63r = (8-atq63).
COMPUTE atq14r = (8-atq14).
COMPUTE atq46r = (8-atq46).
COMPUTE atq7r = (8-atq7).
COMPUTE atq44r = (8-atq44).
COMPUTE atq77r = (8-atq77).
COMPUTE atq16r = (8-atq16).
COMPUTE atq70r = (8-atq70).
COMPUTE atq10r = (8-atq10).
COMPUTE atq33r = (8-atq33).
COMPUTE atq71r = (8-atq71).
COMPUTE atq66r = (8-atq66).
execute.

COMPUTE fea = mean (atq1, atq12, atq22, atq51, atq61, atq68r, atq75r).
COMPUTE fru = mean (atq6r, atq17, atq31, atq38r, atq48, atq58r).
COMPUTE sad = mean (atq9r, atq20r, atq25, atq34r, atq45, atq56, atq65).
COMPUTE dis = mean (atq4, atq32, atq36, atq42, atq54, atq59).
COMPUTE acv = mean (atq2r, atq8r, atq15, atq27, atq47, atq55, atq72r).
COMPUTE att = mean (atq5r, atq29r, atq35, atq40r, atq50r).
COMPUTE inh = mean (atq11, atq26, atq43, atq53r, atq60r, atq63r, atq76).
COMPUTE soc = mean (atq14r, atq19, atq37, atq46r, atq67).
COMPUTE hig = mean (atq7r, atq23, atq30, atq44r, atq64, atq73, atq77r).
COMPUTE pos = mean (atq3, atq16r, atq28, atq49, atq70r).
COMPUTE nps = mean (atq10r, atq21, atq33r, atq52, atq71r).
COMPUTE aps = mean (atq13, atq18, atq57, atq66r, atq69).
COMPUTE ase = mean (atq24, atq39, atq41, atq62, atq74).
EXECUTE.
