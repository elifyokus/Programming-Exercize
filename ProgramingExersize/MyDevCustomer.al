table 55100 MyDevCustomer
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
    }

    keys
    {
    }

    fieldgroups
    {
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    var
        "No.": Integer;
        Name, City : boolean;
}
