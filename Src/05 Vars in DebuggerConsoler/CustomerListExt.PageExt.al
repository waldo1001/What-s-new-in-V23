namespace waldo.Demo.Debugging;

using microsoft.Sales.Customer;
using Microsoft.Purchases.Vendor;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage()
    var
        vendor: Record Vendor;
        i: Integer;
    begin
        vendor.ReadIsolation := IsolationLevel::ReadUncommitted;
        vendor.SetLoadFields("No.", Name);
        if not vendor.FindSet() then exit;
        i := 1;
        repeat
            i += 1;
        until vendor.next < 1;
    end;
}