      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
          03 COMM-EYE                  PIC X(4).                        00070000
          03 COMM-SCODE                PIC X(6).                        00080000
          03 COMM-CUSTNO               PIC X(10).                       00090000
          03 COMM-NAME                 PIC X(60).                       00100000
          03 COMM-ADDR                 PIC X(160).                      00110000
          03 COMM-DOB                  PIC 9(8).                        00120000
          03 COMM-DOB-GROUP REDEFINES COMM-DOB.                         00130000
             05 COMM-BIRTH-DAY               PIC 99.                    00140000
             05 COMM-BIRTH-MONTH             PIC 99.                    00150000
             05 COMM-BIRTH-YEAR              PIC 9999.                  00160000
          03 COMM-CREDIT-SCORE         PIC 9(3).                        00170000
          03 COMM-CS-REVIEW-DATE       PIC 9(8).                        00180000
          03 COMM-CS-GROUP REDEFINES COMM-CS-REVIEW-DATE.               00190000
             05 COMM-CS-DAY                  PIC 99.                    00200000
             05 COMM-CS-MONTH                PIC 99.                    00210000
             05 COMM-CS-YEAR                 PIC 9999.                  00220000
          03 COMM-UPD-SUCCESS          PIC X.                           00230000
          03 COMM-UPD-FAIL-CD          PIC X.                           00240000
