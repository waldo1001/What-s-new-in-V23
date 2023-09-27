namespace Microsoft.Sales.History;

using Microsoft.Sales.Customer;
using Microsoft.Inventory.Item;

query 50100 "Item On Invoice for Customers"
{
    Caption = 'Items on invoice for customers';
    QueryType = Normal;
    Access = Public;
    DataAccessIntent = ReadOnly;
    UsageCategory = Lists;
    QueryCategory = 'Customer List', 'Item List'; //Add Query as a view on list pages
    // UIEnabled = true; //Not yet available

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.") { Caption = 'CustomerNo'; }
            column(Name; Name) { }

            filter(Blocked; Blocked) { }
            filter(Balance__LCY_; "Balance (LCY)") { }

            dataitem(Sales_Invoice_Header; "Sales Invoice Header")
            {
                DataItemLink = "Bill-to Customer No." = Customer."No.";
                column(InvoiceNo_; "No.") { Caption = 'InvoiceNo'; }

                column(Order_No_; "Order No.") { }

                dataitem(Sales_Invoice_Line; "Sales Invoice Line")
                {
                    DataItemLink = "Document No." = Sales_Invoice_Header."No.";
                    DataItemTableFilter = Type = filter(Item);

                    dataitem(Item; Item)
                    {
                        DataItemLink = "No." = Sales_Invoice_Line."No.";


                        column(No_; "No.") { }
                        column(Description; Description) { }
                        column(Inventory; Inventory) { }  //even the value of a flowfield will be retrieved within that one query!

                    }

                }
            }
        }
    }
}