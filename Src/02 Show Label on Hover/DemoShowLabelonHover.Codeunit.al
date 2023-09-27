namespace waldo.Demo.Coding;

codeunit 50102 "Demo Show Label on Hover"
{
    var
        Text0001: label 'Just some label';

    trigger OnRun()
    begin
        Message(Text0001);
    end;
}