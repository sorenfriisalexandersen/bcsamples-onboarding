page 70074179 MS_BioDivMgmtThreatenedPlants
{
    ApplicationArea = All;
    Caption = 'Plants with least occurrences';
    PageType = ListPart;

    SourceTable = MS_BioDiversityMgmtPlant;
    SourceTableView = sorting(Occurrences) order(ascending)
                        where(Occurrences = filter(> 1 & < 50));

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {


                }
                field(Occurrences; Rec.Occurrences)
                {

                }
            }
        }
    }
}