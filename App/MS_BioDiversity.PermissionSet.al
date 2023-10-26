permissionset 70074170 MS_BioSample
{
    Access = Public;
    Assignable = true;
    Caption = 'Bio Sample App';
    Permissions =
        tabledata MS_BioDiversityMgmtPlant = RIMD,
        tabledata MS_BioDiversityMgmtInsect = RIMD;
}
