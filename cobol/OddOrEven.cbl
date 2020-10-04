*> =======================================================
*>
*>	Cobol Program for cerner_2^5_2020
*>
*> =======================================================

IDENTIFICATION DIVISION.
PROGRAM-ID. ODD_EVEN.

DATA DIVISION.

	WORKING-STORAGE SECTION.
	01	WS_NUMBER	PIC	9(3).
	01	WS_FACTOR	PIC	9(3).
	01	WS_RESULT	PIC	9(3).

PROCEDURE DIVISION.
	
	FIRST-PARAGRAPH.
		
		ACCEPT WS_NUMBER. 
		MOVE WS_NUMBER TO WS_FACTOR.
		
		PERFORM UNTIL WS_FACTOR IS LESS THAN 2
			SUBTRACT 2 FROM WS_FACTOR
		END-PERFORM.

		IF WS_FACTOR IS EQUAL TO 0 THEN
			DISPLAY 'The number ' WS_NUMBER ' is even.'
		ELSE
			DISPLAY 'The number ' WS_NUMBER ' is odd.'
		END-IF.

	STOP RUN.