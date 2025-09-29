      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
          03 INQCUST-EYE                  PIC X(4).                     00070000
          03 INQCUST-SCODE                PIC X(6).                     00080000
          03 INQCUST-CUSTNO               PIC 9(10).                    00090000
          03 INQCUST-NAME                 PIC X(60).                    00100000
          03 INQCUST-ADDR                 PIC X(160).                   00110000
          03 INQCUST-DOB.                                               00120000
            05 INQCUST-DOB-DD             PIC 99.                       00130000
            05 INQCUST-DOB-MM             PIC 99.                       00140000
            05 INQCUST-DOB-YYYY           PIC 9999.                     00150000
          03 INQCUST-CREDIT-SCORE         PIC 999.                      00160000
          03 INQCUST-CS-REVIEW-DT.                                      00170000
            05 INQCUST-CS-REVIEW-DD       PIC 99.                       00180000
            05 INQCUST-CS-REVIEW-MM       PIC 99.                       00190000
            05 INQCUST-CS-REVIEW-YYYY     PIC 9999.                     00200000
          03 INQCUST-INQ-SUCCESS          PIC X.                        00210000
          03 INQCUST-INQ-FAIL-CD          PIC X.                        00220000
          03 INQCUST-PCB-POINTER          POINTER.                      00230000
