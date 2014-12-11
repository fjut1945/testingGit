SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ufnGetOrderStatus](@OrderID int)
RETURNS int 
AS 
-- Returns the stock level for the product.
BEGIN
    DECLARE @ret char(1);
    SELECT @ret = O.OrderStatus
    FROM [dbo].[Order] O where O.OrderID = @OrderID 
     IF (@ret IS NULL) 
        SET @ret = '';
    RETURN @ret;
END;


GO
