page 55100 ExpressionCalculator
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Expression Calculator';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(FirstValue; FirstValue)
                {
                    ApplicationArea = All;
                    Caption = 'First';
                }
                field(SecondValue; SecondValue)
                {
                    ApplicationArea = All;
                    Caption = 'Second';
                }
            }
            group(Output)
            {
                Caption = 'Output';
                Editable = false;
                group(Left)
                {
                    Caption = 'Left';
                    field(Result; Result)
                    {
                        ApplicationArea = All;
                    }
                }
                group(Right)
                {
                    Caption = 'Right';
                    field(IsBigger; IsBigger)
                    {
                        ApplicationArea = All;
                    }
                    field(IsSmaller; IsSmaller)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Plus)
            {
                ApplicationArea = All;
                Caption = '+';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue + SecondValue;
                end;
            }
            action(Minus)
            {
                ApplicationArea = All;
                Caption = '-';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue - SecondValue;
                end;
            }
            action(Times)
            {
                ApplicationArea = All;
                Caption = '*';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue * SecondValue;
                end;
            }
            action(Divide)
            {
                ApplicationArea = All;
                Caption = '/';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue / SecondValue;
                end;
            }
            action(Bigger)
            {
                ApplicationArea = All;
                Caption = '>';
                Image = Calculate;
                trigger OnAction()
                begin
                    IsBigger := FirstValue > SecondValue;
                    IsSmaller := FirstValue < SecondValue;
                end;
            }
            action(_Mod)
            {
                ApplicationArea = All;
                Caption = 'MOD';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue MOD SecondValue;
                end;
            }
            action(_Div)
            {
                ApplicationArea = All;
                Caption = 'DIV';
                Image = Calculate;
                trigger OnAction()
                begin
                    Result := FirstValue DIV SecondValue;
                end;
            }
            action(Clear)
            {
                ApplicationArea = All;
                Caption = 'Clear';
                Image = ClearLog;
                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }

    }

    var
        FirstValue, SecondValue, Result : decimal;
        IsBigger, IsSmaller : boolean;

}