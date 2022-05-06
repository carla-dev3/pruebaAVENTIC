---------------------------DEFAULT SETTINGS------------------------------------------
Update origins set active=case originid when 2 then 1 else 0 end
--your proyect settings here
---------------------------UPDATE PRODUCT AND SYSTEM INFO SECTION--------------------
Update Settings set SettingValue='Laboratorio' where
SettingName='AutoUpdatePackageId'
Update Settings set SettingValue='D:\Flexygo\NUGET' where SettingName='AutoUpdateURL'
---------------------------LAST LINE FOR SET USER ORIGIN-----------------------------
Update origins set active=case originid when 3 then 1 else 0 end