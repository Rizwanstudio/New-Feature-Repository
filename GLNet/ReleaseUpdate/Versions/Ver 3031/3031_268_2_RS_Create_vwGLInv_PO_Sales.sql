create view [dbo].[vwGLInv_PO_Sales] as 
SELECT     tblGlVoucher.voucher_code, tblGlVoucher.voucher_type_id, tblGlVoucher.voucher_month, tblGlVoucher.voucher_date, tblGlVoucherDetail.comments, 
                      tblGlVoucherDetail.debit_amount, tblGlVoucherDetail.credit_amount, tblGlVoucher.voucher_no, tblGlDefFinancialYear.year_code, 
                      tblGlDefVoucherType.voucher_type, tblGlDefLocation.location_name, tblGlCOAMainSubSubDetail.detail_code, tblGlCOAMainSubSubDetail.detail_title, 
                      tblGlVoucher.location_id, tblGlVoucher.voucher_id AS voucherid, tblGlDefGLCostCenter.cost_center_title, tblGlVoucher.cheque_no, 
                      tblGlVoucher.cheque_date, tblGlVoucher.cheque_paid, tblGlVoucher.cheque_paid_date, tblGLContactDirectory.Address
FROM         tblGlVoucher INNER JOIN
                      tblGlVoucherDetail ON tblGlVoucher.voucher_id = tblGlVoucherDetail.voucher_id AND 
                      tblGlVoucher.location_id = tblGlVoucherDetail.location_id INNER JOIN
                      tblGlDefFinancialYear ON tblGlVoucher.finiancial_year_id = tblGlDefFinancialYear.financial_year_id INNER JOIN
                      tblGlDefVoucherType ON tblGlVoucher.voucher_type_id = tblGlDefVoucherType.voucher_type_id INNER JOIN
                      tblGlDefLocation ON tblGlVoucher.location_id = tblGlDefLocation.location_id INNER JOIN
                      tblGlCOAMainSubSubDetail ON tblGlVoucherDetail.coa_detail_id = tblGlCOAMainSubSubDetail.coa_detail_id LEFT OUTER JOIN
                      tblGlDefGLCostCenter ON tblGlVoucherDetail.cost_center_id = tblGlDefGLCostCenter.cost_center_id LEFT OUTER JOIN
                      tblGLContactDirectory ON tblGlVoucherDetail.coa_detail_id = tblGLContactDirectory.Account_id
WHERE     (tblGlVoucher.voucher_id = 11580) AND (tblGlVoucher.location_id = 1)