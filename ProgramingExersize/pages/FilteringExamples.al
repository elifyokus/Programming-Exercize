page 55105 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("1_Get")
            {
                ApplicationArea = All;
                ToolTip = '1_Get';
                Caption = '1_Get';
                Image = Return;
                trigger OnAction()
                var
                    Customer: Record Customer;

                begin
                    if Customer.get('10000') then
                        Message('%1', Customer);
                end;
            }
            action("GetItem")
            {
                ApplicationArea = All;
                ToolTip = 'Get Item 1900-S';
                Caption = 'Get Item 1900-S';
                Image = Find;

                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    IF Item.GET('1900-S') THEN
                        MESSAGE('%1', Item);
                end;
            }
            action("2_SetRange")
            {
                ApplicationArea = All;
                ToolTip = '2_SetRange';
                Caption = '2_SetRange';
                Image = Return;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetRange("No.", '10000', '40000');
                    Customer.SetRange(City, 'Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
            action("3_SetFilter")
            {
                ApplicationArea = All;
                ToolTip = '3_SetFilter';
                Caption = '3_SetFilter';
                Image = Return;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetFilter("No.", '10000', '40000');
                    Customer.SetFilter(City, 'Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
            action("GetCustomersFromAtlanta")
            {
                ApplicationArea = All;
                ToolTip = 'Get Customers From Atlanta';
                Caption = 'Get Customers From Atlanta';
                Image = Find;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetRange(City, 'Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
            action("GetCustomersNotFromAtlanta")
            {
                ApplicationArea = All;
                ToolTip = 'Get Customers Not From Atlanta';
                Caption = 'Get Customers Not From Atlanta';
                Image = Find;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetFilter(City, '<>%1', 'Atlanta');
                    if Customer.FindSet() then
                        repeat
                            Message('%1', Customer);
                        until Customer.Next() = 0;
                end;
            }
            action("Insert")
            {
                ApplicationArea = All;
                ToolTip = 'Insert';
                Caption = 'Insert';
                Image = Return;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Clear(customer);
                    Customer.name := 'Test 1';
                    Customer.City := 'Atlanta';
                    Customer.Insert();

                    Clear(Customer);
                    Customer.name := 'Test 2';
                    Customer.City := 'Atlanta';
                    Customer.Insert(true);
                end;
            }
            action("Modify")
            {
                ApplicationArea = All;
                ToolTip = 'Modify';
                Caption = 'Modify';
                Image = Return;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer.SetRange(Name, 'Test 1');
                    if Customer.FindFirst() then begin
                        Customer.Name := 'Test 1 Modified';
                        Customer.Modify();
                    end;

                    Clear(Customer);
                    Customer.SetRange(Name, 'Test 2');
                    if Customer.FindFirst() then begin
                        Customer.Name := 'Test 2 Modified';
                        Customer.validate(City, 'Miamy');
                        Customer.Modify();
                    end;
                end;
            }
            action("Delete")
            {
                ApplicationArea = All;
                ToolTip = 'Delete';
                Caption = 'Delete';
                Image = Return;
                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Clear(customer);
                    Customer.SetRange(Name, 'Test 1');
                    if Customer.FindFirst() then
                        Customer.Delete();

                    Clear(Customer);
                    Customer.SetFilter(Name, 'Test*');
                    Customer.DeleteAll();
                end;
            }
        }
    }
}