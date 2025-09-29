      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
           03 ABND-VSAM-KEY.                                            00070000
              05 ABND-UTIME-KEY                  PIC S9(15) COMP-3.     00080000
              05 ABND-TASKNO-KEY                 PIC 9(4).              00090000
           03 ABND-APPLID                        PIC X(8).              00100000
           03 ABND-TRANID                        PIC X(4).              00110000
           03 ABND-DATE                          PIC X(10).             00120000
           03 ABND-TIME                          PIC X(8).              00130000
           03 ABND-CODE                          PIC X(4).              00140000
           03 ABND-PROGRAM                       PIC X(8).              00150000
           03 ABND-RESPCODE                      PIC S9(8) DISPLAY      00160000
                  SIGN LEADING SEPARATE.                                00170000
           03 ABND-RESP2CODE                     PIC S9(8) DISPLAY      00180000
                  SIGN LEADING SEPARATE.                                00190000
           03 ABND-SQLCODE                       PIC S9(8) DISPLAY      00200000
                  SIGN LEADING SEPARATE.                                00210000
           03 ABND-FREEFORM                      PIC X(600).            00220000
