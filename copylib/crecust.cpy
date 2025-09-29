      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
          03 COMM-EYECATCHER                 PIC X(4).                  00070000
          03 COMM-KEY.                                                  00080000
             05 COMM-SORTCODE                PIC 9(6) DISPLAY.          00090000
             05 COMM-NUMBER                  PIC 9(10) DISPLAY.         00100000
          03 COMM-NAME                       PIC X(60).                 00110000
          03 COMM-ADDRESS                    PIC X(160).                00120000
          03 COMM-DATE-OF-BIRTH              PIC 9(8).                  00130000
          03 COMM-DOB-GROUP REDEFINES COMM-DATE-OF-BIRTH.               00140000
             05 COMM-BIRTH-DAY               PIC 99.                    00150000
             05 COMM-BIRTH-MONTH             PIC 99.                    00160000
             05 COMM-BIRTH-YEAR              PIC 9999.                  00170000
          03 COMM-CREDIT-SCORE               PIC 999.                   00180000
          03 COMM-CS-REVIEW-DATE             PIC 9(8).                  00190000
          03 COMM-CS-REVIEW-DATE-GROUP REDEFINES COMM-CS-REVIEW-DATE.   00200000
             05 COMM-CS-REVIEW-DD            PIC 99.                    00210000
             05 COMM-CS-REVIEW-MM            PIC 99.                    00220000
             05 COMM-CS-REVIEW-YYYY          PIC 9999.                  00230000
          03 COMM-SUCCESS                    PIC X.                     00240000
          03 COMM-FAIL-CODE                  PIC X.                     00250000
