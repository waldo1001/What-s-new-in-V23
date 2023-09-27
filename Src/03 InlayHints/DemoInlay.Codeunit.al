namespace waldo.Demo.Coding;

using System.Tooling;
using Microsoft.Finance.Dimension;

codeunit 50100 "Demo Inlay"
{
    trigger OnRun()
    var
        BCPTTestSuite: Codeunit "BCPT Test Suite";
    begin
        BCPTTestSuite.CreateTestSuiteHeader(
                    'POS',
                    'Actions with a focus on POS',
                    60,
                    500,
                    1000,
                    20,
                    'CustXYZ - POS Suite');

        BCPTTestSuite.AddLineToTestSuiteHeader(
                    'POS',
                    codeunit::"Check Dimensions",
                    100,
                    'Create Sales Orders',
                    500,
                    1000,
                    5,
                    false,
                    '');
    end;
}