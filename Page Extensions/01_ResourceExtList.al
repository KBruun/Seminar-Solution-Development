pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Velociraptor
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Particiants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;

            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }
    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: Boolean;

    trigger OnOpenPage()

    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(type::Machine));
        FilterGroup(0);
    end;



}