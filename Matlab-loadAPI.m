% find NextFEM Designer installation
APIpath = strtrim ( replace(winqueryreg('HKEY_LOCAL_MACHINE','SOFTWARE\Classes\NextFEM Designer\shell\open\command',''),'Designer64.exe "%l"','') );
disp('Installation found in ' + convertCharsToStrings(APIpath));
% load NextFEM API
NET.addAssembly(strcat(APIpath , 'NextFEMapi.dll'));
NF=NextFEMapi.API;
disp("NextFEM API version " + NF.getVersion())