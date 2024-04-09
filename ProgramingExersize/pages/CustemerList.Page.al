codeunit 55100 VariablesAndDatatypes
{
    var
        Color: option Red,Green,Blue;
        LoopNo: Integer;
        MyDate: Date;
        MyText: Text;
        LoopNoDec: Decimal;

    trigger OnRun()
    begin
        Message('The value of %1 is %2', 'LoopNo', LoopNo);
    end;

}
pageextension 55100 "Customer List Ext" extends "Customer List"
{
    actions
    {
        addfirst("&Customer")
        {
            action(RunVariablesAndDatatypes)
            {
                ApplicationArea = All;
                Caption = 'Run Variables and Datatypes';
                ToolTip = 'Run Variables and Datatypes';
                Image = Action;
                trigger OnAction()
                var
                    VariablesAndDatatypes: Codeunit VariablesAndDatatypes;
                begin
                    Codeunit.Run(Codeunit::VariablesAndDatatypes);
                end;
            }
        }
    }
}
