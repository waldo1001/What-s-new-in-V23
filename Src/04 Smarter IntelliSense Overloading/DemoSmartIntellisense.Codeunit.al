namespace waldo.Demo.Coding;

codeunit 50101 "Demo Smart Intellisense"
{
    trigger OnRun()
    var
        result: Decimal;
    begin
        result := sum(1, 2, 3)
    end;

    procedure Sum(a: Decimal; b: Decimal; c: Decimal; d: Decimal; e: Decimal): Decimal
    begin
        exit(a + b + c + d + e);
    end;

    procedure Sum(a: Decimal; b: Decimal; c: Decimal; d: Decimal): Decimal
    begin
        exit(sum(a, b, c, d, 0));
    end;

    procedure Sum(a: Decimal; b: Decimal; c: Decimal): Decimal
    begin
        exit(sum(a, b, c, 0, 0));
    end;

    procedure Sum(a: Decimal; b: Decimal): Decimal
    begin
        exit(Sum(a, b, 0, 0, 0));
    end;
}