codeunit 70074172 MS_BioDiversityMgmtApps
{
    var
        ExampleOfOtherApp: text;

    trigger OnRun()
    var
        ExtensionMarketplace: Codeunit "Extension Management";
    begin
        ExampleOfOtherApp := 'f89b4056-ba61-40e4-be79-b1b78b218f16';


        if not ExtensionMarketplace.IsInstalledByAppId(ExampleOfOtherApp) then
            ExtensionMarketplace.InstallMarketplaceExtension(ExampleOfOtherApp);
    end;
}

