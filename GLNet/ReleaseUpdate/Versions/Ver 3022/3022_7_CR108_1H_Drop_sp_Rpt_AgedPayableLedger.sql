IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Rpt_AgedPayableLedger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Rpt_AgedPayableLedger]