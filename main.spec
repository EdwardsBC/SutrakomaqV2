# -*- mode: python ; coding: utf-8 -*-


block_cipher = None


a = Analysis(
    ['main.py'],
    pathex=[],
    binaries=[],
    datas=[('D:\\@Trabajo\\Sutrakomaq\\app\\database', 'app\\database'), ('D:\\@Trabajo\\Sutrakomaq\\app\\models', 'app\\models'), ('D:\\@Trabajo\\Sutrakomaq\\app\\resources', 'app\\resources'), ('D:\\@Trabajo\\Sutrakomaq\\app\\ui', 'app\\ui'), ('D:\\@Trabajo\\Sutrakomaq\\app\\utils', 'app\\utils'), ('D:\\@Trabajo\\Sutrakomaq\\app\\view', 'app\\view')],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
    noarchive=False,
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.zipfiles,
    a.datas,
    [],
    name='main',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
