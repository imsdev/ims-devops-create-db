//UNPACK JOB (ACCTINFO),CLASS=A,MSGCLASS=1,
//             MSGLEVEL=(1,1),REGION=0M,NOTIFY=PAUL
//***********************************************************@SCPYRT**
// EXPORT SYMLIST=(DSNTERSE,DSNCNTL)
// SET DSNTERSE='PAUL.DEMO.SETUP.TERSE'
// SET DSNCNTL='PAUL.DEMO.SETUP.CNTL'
//***********************************************************@SCPYRT**
//DEL0     EXEC PGM=IDCAMS,REGION=1024K
//SYSPRINT DD   SYSOUT=*
//SYSIN    DD   *,SYMBOLS=(JCLONLY,SYSPRINT)
 DELETE &DSNCNTL
 SET MAXCC=0
//*-------------------------------------------------------------------
//********************************************************************
//* UNTERSE THE DATASET
//********************************************************************
//TERSE    EXEC PGM=AMATERSE,PARM=UNPACK
//SYSPRINT DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=133,BLKSIZE=12901)
//SYSUT1   DD DISP=SHR,DSN=&DSNTERSE
//SYSUT2   DD DISP=(NEW,PASS),DSN=&&UNTERSED,
//            SPACE=(CYL,(10,5),RLSE)
//********************************************************************
//*  COPY FROM ONE DATASET TO ANOTHER
//********************************************************************
//COPY0    EXEC PGM=IEBCOPY,REGION=0M
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=(OLD,PASS),DSN=&&UNTERSED
//SYSUT2   DD  DISP=(NEW,CATLG,DELETE),DSN=&DSNCNTL,
//             SPACE=(CYL,(60,10,20),RLSE),STORCLAS=MEDIUM,
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=32000),
//             DSNTYPE=LIBRARY