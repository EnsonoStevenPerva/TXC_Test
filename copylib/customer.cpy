      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                 00040000
      *                                                                *00050000
      ******************************************************************00060000
           03 CUSTOMER-RECORD.                                          00070000
              05 CUSTOMER-EYECATCHER                 PIC X(4).          00080000
                 88 CUSTOMER-EYECATCHER-VALUE        VALUE 'CUST'.      00090000
              05 CUSTOMER-KEY.                                          00100000
                 07 CUSTOMER-SORTCODE                PIC 9(6) DISPLAY.  00110000
                 07 CUSTOMER-NUMBER                  PIC 9(10) DISPLAY. 00120000
              05 CUSTOMER-NAME                       PIC X(60).         00130000
              05 CUSTOMER-ADDRESS                    PIC X(160).        00140000
              05 CUSTOMER-DATE-OF-BIRTH              PIC 9(8).          00150000
              05 CUSTOMER-DOB-GROUP REDEFINES CUSTOMER-DATE-OF-BIRTH.   00160000
                 07 CUSTOMER-BIRTH-DAY               PIC 99.            00170000
                 07 CUSTOMER-BIRTH-MONTH             PIC 99.            00180000
                 07 CUSTOMER-BIRTH-YEAR              PIC 9999.          00190000
              05 CUSTOMER-CREDIT-SCORE               PIC 999.           00200000
              05 CUSTOMER-CS-REVIEW-DATE             PIC 9(8).          00210000
              05 CUSTOMER-CS-GROUP                                      00220000
                 REDEFINES CUSTOMER-CS-REVIEW-DATE.                     00230000
                 07 CUSTOMER-CS-REVIEW-DAY           PIC 99.            00240000
                 07 CUSTOMER-CS-REVIEW-MONTH         PIC 99.            00250000
                 07 CUSTOMER-CS-REVIEW-YEAR          PIC 9999.          00260000
