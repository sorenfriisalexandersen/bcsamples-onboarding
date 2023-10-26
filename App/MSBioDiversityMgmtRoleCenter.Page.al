page 70074178 MS_BioDiversityMgmtRoleCenter
{
    PageType = RoleCenter;
    Caption = 'Bio Diversity Management Setup';

    layout
    {
        area(RoleCenter)
        {
            part(Control139; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }

            group(BioDiversity)
            {
                Caption = 'Bio Diversity Management';
                ShowCaption = true;

                part("Bio Diversity - Activities"; MS_BioDiversityMgmtPlantsCue)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Activities';
                }
                part("Bio Diversity - Risks"; MS_BioDivMgmtThreatenedPlants)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Plants at risk';
                }
            }

        }
    }
}
