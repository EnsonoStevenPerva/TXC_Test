      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
           03 CUSTOMER-CONTROL-RECORD.                                  00070000
              05 CUSTOMER-CONTROL-EYECATCHER             PIC X(4).      00080000
                 88 CUSTOMER-CONTROL-EYECATCHER-V        VALUE 'CTRL'.  00090000
              05 CUSTOMER-CONTROL-KEY.                                  00100000
                 07 CUSTOMER-CONTROL-SORTCODE        PIC 9(6) DISPLAY.  00110000
                 07 CUSTOMER-CONTROL-NUMBER          PIC 9(10) DISPLAY. 00120000
              05 NUMBER-OF-CUSTOMERS                 PIC 9(10) DISPLAY. 00130000
              05 LAST-CUSTOMER-NUMBER                PIC 9(10) DISPLAY. 00140000
              05 CUSTOMER-CONTROL-SUCCESS-FLAG       PIC X.             00150000
              88 CUSTOMER-CONTROL-SUCCESS VALUE 'Y'.                    00160000
              05 CUSTOMER-CONTROL-FAIL-CODE PIC X.                      00170000
              05 FILLER                              PIC X(38).         00180000
              05 FILLER                              PIC X(160).        00190000
              05 FILLER                              PIC 9(8).          00200000
              05 FILLER                              PIC 999.           00210000
              05 FILLER                              PIC 9(8).          00220000
