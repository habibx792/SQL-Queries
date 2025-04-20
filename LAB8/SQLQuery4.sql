

select *from OrderTable;

EXEC sp_rename 'ORDERLINE_TAVLE', 'OrderLineTable';
use OrderPlaceMent;
go
select name as TotalTable
from sys.tables
order by name;
EXEC sp_rename 'Cutommer_table.cutomerName', 'customerName', 'COLUMN';
select* from Cutommer_table;

