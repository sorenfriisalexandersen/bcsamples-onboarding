codeunit 70074173 MS_BioDivMgmtOnbSignal implements "Onboarding Signal"
{
    Access = Internal;
    Permissions = tabledata "G/L Entry" = r;

    procedure IsOnboarded(): Boolean
    var
        GuidedExperienceItem: Codeunit "Guided Experience";
    begin
        exit(GuidedExperienceItem.IsAssistedSetupComplete(ObjectType::Page, Page::MS_BioDiversityMgmtPlantGuide));
    end;
}