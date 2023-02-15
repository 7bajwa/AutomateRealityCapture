::Project name , you want to save it as
set proj_name=1_proj

:: path to Project Folder, wehre you want to save it
set proj_path=C:\Projects\Scan\1_proj

:: path to images Folder, will be imported in RC
set img_path=C:\Projects\Scan\1

:: path to reality Capture application
set rc_path=C:\Program Files\Capturing Reality\RealityCapture\RealityCapture.exe





:: Capturing Reality
"%rc_path%" -newScene ^
-save %proj_path%\%proj_name%.rcproj ^
-addFolder %img_path% ^
-align ^
-setReconstructionRegionAuto ^
-mvs ^
-modelSelectMarginalTriangles ^
-modelRemoveSelectedTriangles ^
-calculateVertexColors ^
-unwrap ^
-calculateTexture ^
-save %proj_path%\%proj_name%.rcproj ^
-quit

exit
