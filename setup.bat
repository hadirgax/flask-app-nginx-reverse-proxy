@echo off

set "PROJECT_NAME=flask-app"
set "CONDAENV_NAME=%PROJECT_NAME%"

for /f "delims=" %%i in ('conda info --base') do set "CONDA_BASE_PATH=%%i"
set "CONDAENV_PATH=%CONDA_BASE_PATH%\envs\%CONDAENV_NAME%"

echo ">>> Remove conda environment." && ^
conda remove -n %CONDAENV_NAME% --all -y && ^
echo ">>> Create conda environment." && ^
conda create -n %CONDAENV_NAME% -c conda-forge -y python=3.12 pip=24 && ^
echo ">>> Installing uv package." && ^
%CONDAENV_PATH%\python -m pip install uv && ^
echo ">>> Installing requirements." && ^
%CONDAENV_PATH%\python -m uv pip install -r requirements.txt && ^
echo # && ^
echo # To activate this environment, use: && ^
echo # && ^
echo #    conda activate %CONDAENV_NAME% && ^
echo # && ^
echo # To deactivate an active environment, use: && ^
echo # && ^
echo #    conda deactivate
goto :eof

:end
endlocal