000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. test-cob.
000300 AUTHOR. Joe Diamond.

000400 DATA DIVISION.
000500 WORKING-STORAGE SECTION.
000600 01 X PIC 9(2) VALUE 1.

000700 PROCEDURE DIVISION.
000701 	DISPLAY "This is COBOL"
000800 	PERFORM 10 TIMES
000900 		DISPLAY "This is number ", X, "!"
000901 		ADD 1 TO X
000902 	END-PERFORM.
000903 	STOP RUN.