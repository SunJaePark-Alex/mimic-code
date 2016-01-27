OPTIONS (
skip=1,
errors=0,
direct=true,
multithreading=true 
)
LOAD DATA
INFILE 'OUTPUTEVENTS.csv' "str '\n'"
BADFILE 'logfile.bad'
DISCARDFILE 'logfile.discard'
APPEND
INTO TABLE outputevents
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING nullcols
(
ROW_ID, 
SUBJECT_ID,
HADM_ID,
ICUSTAY_ID,
CHARTTIME DATE "YYYY-MM-DD HH24:MI:SS",
ITEMID,
VALUE,
VALUEUOM,
STORETIME,
CGID,
STOPPED,
NEWBOTTLE,
ISERROR
)