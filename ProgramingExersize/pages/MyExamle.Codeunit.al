codeunit 55101 MyExampleCodeunit
{
    trigger OnRun()
    begin
        String1 := 'HelloWorldOfManyManyCharactersInTheString';
        String2 := CopyStr(String1, 1, MaxStrLen(String2));

        Message('String2: %1', String1);
    end;

    var
        String1: Text[60];
        String2: Text[30];
}