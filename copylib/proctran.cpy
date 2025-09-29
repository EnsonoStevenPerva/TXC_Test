      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
           03 PROC-TRAN-DATA.                                           00070000
              05 PROC-TRAN-EYE-CATCHER        PIC X(4).                 00080000
              88 PROC-TRAN-VALID VALUE 'PRTR'.                          00090000
              05 PROC-TRAN-LOGICAL-DELETE-AREA REDEFINES                00100000
                 PROC-TRAN-EYE-CATCHER.                                 00110000
                 07 PROC-TRAN-LOGICAL-DELETE-FLAG PIC X.                00120000
                 88 PROC-TRAN-LOGICALLY-DELETED VALUE X'FF'.            00130000
                 07 FILLER PIC X(3).                                    00140000
              05 PROC-TRAN-ID.                                          00150000
                 07 PROC-TRAN-SORT-CODE       PIC 9(6).                 00160000
                 07 PROC-TRAN-NUMBER          PIC 9(8).                 00170000
              05 PROC-TRAN-DATE               PIC 9(8).                 00180000
              05 PROC-TRAN-DATE-GRP REDEFINES PROC-TRAN-DATE.           00190000
                 07 PROC-TRAN-DATE-GRP-YYYY   PIC 9999.                 00200000
                 07 PROC-TRAN-DATE-GRP-MM     PIC 99.                   00210000
                 07 PROC-TRAN-DATE-GRP-DD     PIC 99.                   00220000
              05 PROC-TRAN-TIME               PIC 9(6).                 00230000
              05 PROC-TRAN-TIME-GRP REDEFINES PROC-TRAN-TIME.           00240000
                 07 PROC-TRAN-TIME-GRP-HH     PIC 99.                   00250000
                 07 PROC-TRAN-TIME-GRP-MM     PIC 99.                   00260000
                 07 PROC-TRAN-TIME-GRP-SS     PIC 99.                   00270000
              05 PROC-TRAN-REF                PIC 9(12).                00280000
              05 PROC-TRAN-TYPE               PIC X(3).                 00290000
              88 PROC-TY-CHEQUE-ACKNOWLEDGED      VALUE 'CHA'.          00300000
              88 PROC-TY-CHEQUE-FAILURE           VALUE 'CHF'.          00310000
              88 PROC-TY-CHEQUE-PAID-IN           VALUE 'CHI'.          00320000
              88 PROC-TY-CHEQUE-PAID-OUT          VALUE 'CHO'.          00330000
              88 PROC-TY-CREDIT                   VALUE 'CRE'.          00340000
              88 PROC-TY-DEBIT                    VALUE 'DEB'.          00350000
              88 PROC-TY-WEB-CREATE-ACCOUNT       VALUE 'ICA'.          00360000
              88 PROC-TY-WEB-CREATE-CUSTOMER      VALUE 'ICC'.          00370000
              88 PROC-TY-WEB-DELETE-ACCOUNT       VALUE 'IDA'.          00380000
              88 PROC-TY-WEB-DELETE-CUSTOMER      VALUE 'IDC'.          00390000
              88 PROC-TY-BRANCH-CREATE-ACCOUNT    VALUE 'OCA'.          00400000
              88 PROC-TY-BRANCH-CREATE-CUSTOMER   VALUE 'OCC'.          00410000
              88 PROC-TY-BRANCH-DELETE-ACCOUNT    VALUE 'ODA'.          00420000
              88 PROC-TY-BRANCH-DELETE-CUSTOMER   VALUE 'ODC'.          00430000
              88 PROC-TY-CREATE-SODD              VALUE 'OCS'.          00440000
              88 PROC-TY-PAYMENT-CREDIT           VALUE 'PCR'.          00450000
              88 PROC-TY-PAYMENT-DEBIT            VALUE 'PDR'.          00460000
              88 PROC-TY-TRANSFER                 VALUE 'TFR'.          00470000
              05 PROC-TRAN-DESC               PIC X(40).                00480000
              05 PROC-TRAN-DESC-XFR REDEFINES PROC-TRAN-DESC.           00490000
                07 PROC-TRAN-DESC-XFR-HEADER PIC X(26).                 00500000
                88 PROC-TRAN-DESC-XFR-FLAG                              00510000
                   VALUE 'TRANSFER'.                                    00520000
                07 PROC-TRAN-DESC-XFR-SORTCODE                          00530000
                   PIC 9(6).                                            00540000
                07 PROC-TRAN-DESC-XFR-ACCOUNT                           00550000
                   PIC 9(8).                                            00560000
              05 PROC-TRAN-DESC-DELACC REDEFINES PROC-TRAN-DESC.        00570000
                07 PROC-DESC-DELACC-CUSTOMER PIC 9(10).                 00580000
                07 PROC-DESC-DELACC-ACCTYPE PIC X(8).                   00590000
                07 PROC-DESC-DELACC-LAST-DD PIC 99.                     00600000
                07 PROC-DESC-DELACC-LAST-MM PIC 99.                     00610000
                07 PROC-DESC-DELACC-LAST-YYYY PIC 9999.                 00620000
                07 PROC-DESC-DELACC-NEXT-DD PIC 99.                     00630000
                07 PROC-DESC-DELACC-NEXT-MM PIC 99.                     00640000
                07 PROC-DESC-DELACC-NEXT-YYYY PIC 9999.                 00650000
                07 PROC-DESC-DELACC-FOOTER PIC X(6).                    00660000
                88 PROC-DESC-DELACC-FLAG                                00670000
                   VALUE 'DELETE'.                                      00680000
              05 PROC-TRAN-DESC-CREACC REDEFINES PROC-TRAN-DESC.        00690000
                07 PROC-DESC-CREACC-CUSTOMER PIC 9(10).                 00700000
                07 PROC-DESC-CREACC-ACCTYPE PIC X(8).                   00710000
                07 PROC-DESC-CREACC-LAST-DD PIC 99.                     00720000
                07 PROC-DESC-CREACC-LAST-MM PIC 99.                     00730000
                07 PROC-DESC-CREACC-LAST-YYYY PIC 9999.                 00740000
                07 PROC-DESC-CREACC-NEXT-DD PIC 99.                     00750000
                07 PROC-DESC-CREACC-NEXT-MM PIC 99.                     00760000
                07 PROC-DESC-CREACC-NEXT-YYYY PIC 9999.                 00770000
                07 PROC-DESC-CREACC-FOOTER PIC X(6).                    00780000
                88 PROC-DESC-CREACC-FLAG                                00790000
                   VALUE 'CREATE'.                                      00800000
              05 PROC-TRAN-DESC-DELCUS REDEFINES PROC-TRAN-DESC.        00810000
                07 PROC-DESC-DELCUS-SORTCODE PIC 9(6).                  00820000
                07 PROC-DESC-DELCUS-CUSTOMER PIC 9(10).                 00830000
                07 PROC-DESC-DELCUS-NAME     PIC X(14).                 00840000
                07 PROC-DESC-DELCUS-DOB-YYYY  PIC 9999.                 00850000
                07 PROC-DESC-DELCUS-FILLER    PIC X.                    00860000
                88 PROC-DESC-DELCUS-FILLER-SET VALUE '-'.               00870000
                07 PROC-DESC-DELCUS-DOB-MM    PIC 99.                   00880000
                07 PROC-DESC-DELCUS-FILLER2   PIC X.                    00890000
                88 PROC-DESC-DELCUS-FILLER2-SET VALUE '-'.              00900000
                07 PROC-DESC-DELCUS-DOB-DD    PIC 99.                   00910000
              05 PROC-TRAN-DESC-CRECUS REDEFINES PROC-TRAN-DESC.        00920000
                07 PROC-DESC-CRECUS-SORTCODE PIC 9(6).                  00930000
                07 PROC-DESC-CRECUS-CUSTOMER PIC 9(10).                 00940000
                07 PROC-DESC-CRECUS-NAME     PIC X(14).                 00950000
                07 PROC-DESC-CRECUS-DOB-YYYY  PIC 9999.                 00960000
                07 PROC-DESC-CRECUS-FILLER    PIC X.                    00970000
                88 PROC-DESC-CRECUS-FILLER-SET VALUE '-'.               00980000
                07 PROC-DESC-CRECUS-DOB-MM    PIC 99.                   00990000
                07 PROC-DESC-CRECUS-FILLER2   PIC X.                    01000000
                88 PROC-DESC-CRECUS-FILLER2-SET VALUE '-'.              01010000
                07 PROC-DESC-CRECUS-DOB-DD    PIC 99.                   01020000
              05 PROC-TRAN-AMOUNT             PIC S9(10)V99.            01030000
