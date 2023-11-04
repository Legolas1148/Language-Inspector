SELECT * FROM OPENROWSET (BULK 'C:\Users\Legolas1148\Documents\MakeUC\Spell-Check\google-books-common-words.txt', SINGLE_CLOB) AS Word_List;

USE [Spell-Check-Word-Reopository];

BULK INSERT Spelling_Frequencies
	FROM 'C:\Users\Legolas1148\Documents\MakeUC\Spell-Check\google-books-common-words.txt'
	WITH(
		FIELDTERMINATOR = '\t',
		ROWTERMINATOR = '0x0a'
	);

SELECT * FROM Spelling_Frequencies;