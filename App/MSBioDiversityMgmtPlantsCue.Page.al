page 70074175 MS_BioDiversityMgmtPlantsCue
{
    PageType = CardPart;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(group1)
            {
                Caption = 'Plants';

                field(AllPlants; AllPlants)
                {
                    Caption = 'Tracking';
                    ApplicationArea = All;
                    StyleExpr = TrackingPlantsStyle;

                    trigger OnDrillDown()
                    var
                        Plants: Record MS_BioDiversityMgmtPlant;
                        PlantList: Page MS_BioDiversityMgmtPlants;
                    begin
                        Plants.Reset();
                        PlantList.SetTableView(Plants);
                        PlantList.Run();
                    end;
                }
                field(MissingPlants; MissingPlants)
                {
                    Caption = 'Missing';
                    ApplicationArea = All;
                    StyleExpr = MissingStyle;

                    trigger OnDrillDown()
                    var
                        Plants: Record MS_BioDiversityMgmtPlant;
                        PlantList: Page MS_BioDiversityMgmtPlants;
                    begin
                        Plants.SetFilter(Occurrences, '<1');
                        PlantList.SetTableView(Plants);
                        PlantList.Run();
                    end;
                }
                field(ThreatenedPlants; ThreatenedPlants)
                {
                    Caption = 'Threatened';
                    ApplicationArea = All;
                    StyleExpr = ThreatenedPlantsStyle;

                    trigger OnDrillDown()
                    var
                        Plants: Record MS_BioDiversityMgmtPlant;
                        PlantList: Page MS_BioDiversityMgmtPlants;
                    begin
                        Plants.SetFilter(Occurrences, '>1 & <50');
                        PlantList.SetTableView(Plants);
                        PlantList.Run();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        Plants: Record MS_BioDiversityMgmtPlant;
    begin
        Plants.Reset();
        AllPlants := Plants.Count;
        if AllPlants < 1 then
            TrackingPlantsStyle := 'Unfavorable'
        else
            TrackingPlantsStyle := 'Favorable';

        Plants.Reset();
        Plants.SetFilter(Occurrences, '<1');
        MissingPlants := Plants.Count;

        if MissingPlants > 0 then
            MissingStyle := 'Unfavorable';

        Plants.Reset();
        Plants.SetFilter(Occurrences, '>1 & <50');
        ThreatenedPlants := Plants.Count;

        if ThreatenedPlants > 0 then
            ThreatenedPlantsStyle := 'Ambiguous';


    end;

    var
        AllPlants: Integer;
        MissingPlants: Integer;
        ThreatenedPlants: Integer;
        TrackingPlantsStyle: Text;
        MissingStyle: Text;
        ThreatenedPlantsStyle: Text;

}