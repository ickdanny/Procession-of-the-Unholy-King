$ErrorActionPreference = "Stop"

# Clean
Remove-Item -Recurse -Force build,EU05_POTUK,EU05_POTUK.zip -ErrorAction SilentlyContinue

# Make dirs
mkdir build
mkdir EU05_POTUK

# Use Cmake to build
cd build
cmake --version
cmake ..
cmake --build . --config Release
cd ..
 
# Copy everything into dir
cp build\Release\ProcessEngine.exe EU05_POTUK\EU05_POTUK.exe
cp build\*.cso EU05_POTUK\
# Cannot copy the base res dir because build process involves copying over scripts
cp -r build\Release\res EU05_POTUK\res
cp -r packaging\* EU05_POTUK\

# Zip it up
Compress-Archive -Path EU05_POTUK -DestinationPath EU05_POTUK.zip