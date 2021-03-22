* Encoding: UTF-8.

*******************************************
* Wydajność pracy

compute JOB_PERF=sum(JP1, JP2, JP3).
execute.

VARIABLE LABELS JOB_PERF 'Wydajność pracy'.
execute.


RELIABILITY
  /VARIABLES=JP1 JP2 JP3
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.