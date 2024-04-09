page 55101 PriceCalculator
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Price Calculator';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'Quantity';
                    ToolTip = 'Quantity';
                }
                field(Price; Price)
                {
                    ApplicationArea = All;
                    Caption = 'Price';
                    ToolTip = 'Price';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                Editable = false;
                field(Result; Result)
                {
                    ApplicationArea = All;
                }
                field(TotalSales; TotalSales)
                {
                    ApplicationArea = All;
                }
                field(TotalCredits; TotalCredits)
                {
                    ApplicationArea = All;
                }
                field(GrandTotal; GrandTotal)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                ToolTip = 'Execute';
                Image = ExecuteBatch;
                Promoted = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    if Quantity = 0 then exit;
                    Result := Quantity * Price;
                    if Result < 0 then begin
                        TotalCredits += Result;
                    end
                    else
                        TotalSales += Result;
                    GrandTotal += Result;
                end;
            }
            action(Clear)
            {
                ApplicationArea = All;
                Caption = 'Clear';
                ToolTip = 'Clear';
                Image = ClearLog;
                Promoted = true;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }
    }

    var

        Quantity, Price, Result, TotalSales, TotalCredits, GrandTotal : decimal;
}