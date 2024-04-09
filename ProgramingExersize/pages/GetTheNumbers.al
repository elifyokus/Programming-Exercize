page 55102 GetTheNumbers
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get The Numbers';

    layout
    {
        area(Content)
        {
            group(_Input)
            {
                Caption = 'Input';
                field(Input; Input)
                {
                    ApplicationArea = All;
                    Caption = 'Input';
                    ToolTip = 'Input';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetTheNumbers)
            {
                ApplicationArea = All;
                Caption = 'Get The Numbers';
                ToolTip = 'Get TheNumbers';
                Promoted = true;
                PromotedIsBig = true;
                Image = Action;

                trigger OnAction()
                begin
                    Clear(Result);
                    for i := 1 to StrLen(Input) do begin
                        temp := CopyStr(Input, i, 1);
                        if temp in ['0' .. '9'] then
                            Result += temp;
                    end;
                    Message('%1', Result);
                end;
            }
        }
    }

    var
        Input, Result, temp : Text;
        i: Integer;
}
