namespace waldo.Demo.Coding;

using Microsoft.Sales.Customer;

page 50100 "Customers"
{
    PageType = List;
    SourceTable = Customer;
    SourceTableView = sorting("No."); //List

    layout
    {

    }

    trigger OnAfterGetRecord()
    var
        Cust: Record Customer;
    begin
        // Cust.SetCurrentKey(Key);
    end;
}