@echo off
SET RESULT_DIR=.\result
SET OUTPUT_DIR=.\temp
SET FILE=protocol

del /S /Q %OUTPUT_DIR%
rmdir %OUTPUT_DIR%
del /S /Q %RESULT_DIR%
rmdir %RESULT_DIR%