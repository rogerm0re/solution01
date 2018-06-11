pageextension 123456703 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-06-11 - rogerm0re
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD Quantity per Day";"CSD Quantity per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD Maximum Participants";"CSD Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;
    var

        [InDataSet]
        ShowMaxField: Boolean;
}