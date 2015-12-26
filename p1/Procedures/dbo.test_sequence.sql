SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
create procedure test_sequence
as
begin
DECLARE @myvar1 int = NEXT VALUE FOR Test.CountBy1
end;
GO
