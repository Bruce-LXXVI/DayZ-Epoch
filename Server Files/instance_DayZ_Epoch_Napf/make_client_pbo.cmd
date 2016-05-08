@echo off



set home=..\..
set tools=%home%\Tools\arma
Set Deploy=%home%\Deploy
Set ServerHive=%home%\SQF
Set ClientCode=%home%\SQF


%tools%\cpbo.exe -y -p %ServerHive%\dayz_anim %Deploy%\dayz_anim.pbo
%tools%\cpbo.exe -y -p %ServerHive%\dayz_code %Deploy%\dayz_code.pbo
%tools%\cpbo.exe -y -p %ServerHive%\dayz_epoch_b %Deploy%\dayz_epoch_b.pbo
%tools%\cpbo.exe -y -p %ServerHive%\dayz_sfx %Deploy%\dayz_sfx.pbo
%tools%\cpbo.exe -y -p %ServerHive%\redryder %Deploy%\redryder.pbo


net use \\TESTSERVER\dayz_mod /user:administrator Ad.1234
copy "%ClientCode%\mod.cpp" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\"
copy "%Deploy%\dayz_anim.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"
copy "%Deploy%\dayz_code.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"
copy "%Deploy%\dayz_epoch_b.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"
copy "%Deploy%\dayz_sfx.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"
::copy "%Deploy%\redryder.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"
::copy "%Deploy%\anzio.pbo" "\\TESTSERVER\dayz_mod\@DayZ_Epoch106\Addons\"

copy "%ClientCode%\mod.cpp" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\"
copy "%Deploy%\dayz_anim.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_code.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_epoch_b.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_sfx.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
::copy "%Deploy%\redryder.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
::copy "%Deploy%\anzio.pbo" "C:\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"

copy "%ClientCode%\mod.cpp" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\"
copy "%Deploy%\dayz_anim.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_code.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_epoch_b.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
copy "%Deploy%\dayz_sfx.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
::copy "%Deploy%\redryder.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"
::copy "%Deploy%\anzio.pbo" "\\r2\c$\Program Files (x86)\Steam\steamapps\common\ARMA 2 Operation Arrowhead\@DayZ_Epoch106\addons\"


