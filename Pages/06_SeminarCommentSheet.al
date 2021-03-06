page 50106 "CSD Seminar Comment Sheet"
//Bruk
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Date) { }
                field(Code; Code) { Visible = false; }
                field(Comment; Comment) { }


            }
        }
    }



    //var
    //   myInt: Integer;
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        SetupNewLine;
    end;
}