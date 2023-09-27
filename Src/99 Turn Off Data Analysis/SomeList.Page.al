namespace waldo.Demo.Coding;

using Microsoft.Purchases.Vendor;

Page 50101 SomeList
{
    AnalysisModeEnabled = false; //Disable Analysis mode
    PageType = List;
    SourceTable = Vendor;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Vendors)
            {
                field(No; Rec."No.") { }
                field(Name; Rec.Name) { }
                field(Address; Rec.Address) { }
            }
        }
    }
}

// pageextension 50101 VendorExt extends "Vendor List"
// {
//     AnalysisModeEnabled = false; 
// }