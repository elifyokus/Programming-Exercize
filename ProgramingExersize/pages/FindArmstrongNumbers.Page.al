page 55103 "Get Armstrong Numbers"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get Armstrong Numbers';

    layout
    {
        area(Content)
        {
            group(Information)
            {
                Caption = 'Enter a start and end number';
                field(StartNumber; StartNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Start Number';
                    ToolTip = 'Start Number';
                }
                field(EndNumber; EndNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Start Number';
                    ToolTip = 'Start Number';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetArmstrongNumbers)
            {
                ApplicationArea = All;
                Caption = 'Get Armstrong Numbers';
                ToolTip = 'Get Armstrong Numbers';
                Promoted = true;
                PromotedIsBig = true;
                Image = Find;

                trigger OnAction()
                var
                    Armstrong: Codeunit Armstrong;
                begin
                    if (StartNumber = 0) OR (EndNumber = 0) then
                        exit;
                    message(Armstrong.FinfAllArmstrongNumbers(StartNumber, EndNumber));
                end;

            }
        }
    }

    var
        StartNumber, EndNumber : Integer;
}
