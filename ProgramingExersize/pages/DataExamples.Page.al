page 55104 DataManipulationExamples
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'DataManipulationExamples';

    layout
    {
        area(Content)
        {
        }
    }

    actions
    {
        area(Processing)
        {
            action(FindSomeRecords)
            {
                ApplicationArea = All;
                Caption = 'FindSomeRecords';
                ToolTip = 'FindSomeRecords';
                Image = Find;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    //Customer.FindFirst();  //1 record
                    //Customer.find('-');
                    //Customer.FindLast();
                    //Customer.find('+');
                    Customer.FindSet();  //multiple records in a loop
                    repeat
                        Message('%1', Customer);
                    until Customer.Next() = 0;
                end;
            }
            action(LoopOverAllVendors)
            {
                ApplicationArea = All;
                Caption = 'Loop Over All Vendors';
                ToolTip = 'Loop Over All Vendors';
                Image = Find;
                trigger OnAction()
                var
                    Vendor: Record Vendor;
                begin
                    Vendor.FindSet();
                    repeat
                        Message('Vendor Name: %1', Vendor);
                    until Vendor.Next = 0;
                end;
            }
        }
    }
}