codeunit 55102 Armstrong
{
    procedure FinfAllArmstrongNumbers(FromNumber: Integer; ToNumber: Integer): Text
    var
        CurrentNumber: Integer;
        ArmstrongNumbers: Text;
        Dialog: Dialog;

    begin
        Clear(ArmstrongNumbers);

        Dialog.Open('#1###########################\\' + '#2###################################');

        Dialog.Update(1, 'title...');

        for CurrentNumber := FromNumber to ToNumber do begin

            Dialog.Update(2, CurrentNumber);

            Sleep(100);



            if IsArmstrongNumber(CurrentNumber) then
                ArmstrongNumbers += format(CurrentNumber) + '\';



        end;

        Dialog.Close();

        exit(ArmstrongNumbers);

    end;



    local procedure IsArmstrongNumber(CurrentNumber: Integer): Boolean

    var

        PositionOfLastDigit: Integer;

        txtThePower: Text;

        ThePower: Integer;

        PositionOfIndividualDigit: Integer;

        IndividualDigit: Integer;

        txtIndividualDigit: Text;

        IntermediateResult: Integer;

    begin


        PositionOfLastDigit := StrLen(format(CurrentNumber));

        txtThePower := CopyStr(format(CurrentNumber), PositionOfLastDigit, 1);

        Evaluate(ThePower, txtThePower);




        for PositionOfIndividualDigit := 1 to StrLen(format(CurrentNumber)) do begin




            txtIndividualDigit := CopyStr(format(CurrentNumber), PositionOfIndividualDigit, 1);

            Evaluate(IndividualDigit, txtIndividualDigit);




            IntermediateResult += Power(IndividualDigit, ThePower);

        end;




        if IntermediateResult = CurrentNumber then
            exit(true);

        Clear(IntermediateResult);

    end;


}