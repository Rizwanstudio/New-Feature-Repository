IF columnproperty (object_id('TblrptGLPLNotes'), 'Note_Group', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	Note_Group [varchar](10) NULL
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount_Prev [money] NULL
	ALTER TABLE TblrptGLPLNotes ADD	B_ClosingAmount [money] NULL
	ALTER TABLE TblrptGLPLNotes ADD	B_ClosingAmount_Prev [money] NULL
	ALTER TABLE TblrptGLPLNotes ADD	C_ClosingAmount [money] NULL
	ALTER TABLE TblrptGLPLNotes ADD	C_ClosingAmount_Prev [money] NULL
END

IF columnproperty (object_id('TblrptGLPLNotes'), 'A_ClosingAmount', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
END

IF columnproperty (object_id('TblrptGLPLNotes'), 'Note_Group', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
END


IF columnproperty (object_id('TblrptGLPLNotes'), 'Note_Group', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
END


IF columnproperty (object_id('TblrptGLPLNotes'), 'Note_Group', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
END

IF columnproperty (object_id('TblrptGLPLNotes'), 'Note_Group', 'AllowsNull') IS NULL
BEGIN
	ALTER TABLE TblrptGLPLNotes ADD	A_ClosingAmount [money] NULL
END



