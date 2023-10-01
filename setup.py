import sys
import os

from cx_Freeze import setup, Executable

files = ['env','config.json','database','importantes','models','resources','ui','utils','view']

exe = Executable(script="main.py", base="Win32GUI")

setup(
    name="SutrakomaqV2",
    version="1.0.0",
    description ="Application for managing you Sistem",
    author="Edwards_BC",
    options={'build_exe': {'include_files': files}},
    executables=[exe]
)