      ******************************************************************00010000
      *                                                                *00020000
      *  Copyright IBM Corp. 2023                                      *00030000
      *                                                                *00040000
      *                                                                *00050000
      ******************************************************************00060000
           EXEC SQL DECLARE PROCTRAN TABLE                              00070000
              (                                                         00080000
               PROCTRAN_EYECATCHER             CHAR(4),                 00090000
               PROCTRAN_SORTCODE               CHAR(6) NOT NULL,        00100000
               PROCTRAN_NUMBER                 CHAR(8) NOT NULL,        00110000
               PROCTRAN_DATE                   CHAR(8),                 00120000
               PROCTRAN_TIME                   CHAR(6),                 00130000
               PROCTRAN_REF                    CHAR(12),                00140000
               PROCTRAN_TYPE                   CHAR(3),                 00150000
               PROCTRAN_DESC                   CHAR(40),                00160000
               PROCTRAN_AMOUNT                 DECIMAL(12, 2)           00170000
              )                                                         00180000
           END-EXEC.                                                    00190000
