#!/bin/bash

if [ -d "$HOME/.local/share/VSCode-linux-x64" ]; then
  rm -rf "$HOME/.local/share/VSCode-linux-x64"
fi

if [ -h "$HOME/.local/bin/code" ]; then
  unlink "$HOME/.local/bin/code"
fi

if [ -h "$HOME/.local/bin/code-tunnel" ]; then
  unlink "$HOME/.local/bin/code-tunnel"
fi

version="$(curl -s "https://github.com/microsoft/vscode/tags" | grep "Link--primary Link" | awk -F '</a>' '{print $1}' | awk -F '>' '{print $NF}' | tr -d 'v' | head -n 1)"
url="https://update.code.visualstudio.com/${version}/linux-x64/stable"
outDir="$HOME/.local/share"

wget -q -O- --progress="bar" $url | tar xz -C "$outDir"

ln -s "$outDir/VSCode-linux-x64/code" "$XDG_BIN_HOME"
ln -s "$outDir/VSCode-linux-x64/bin/code-tunnel" "$XDG_BIN_HOME"

cat << EOF > "$HOME/.local/share/applications/vscode.desktop"
[Desktop Entry]
Name=Code
Comment=Code Editing. Redefined.
GenericName=Text Editor
Exec=code
Icon=code
Type=Application
StartupNotify=false
StartupWMClass=Code
Categories=TextEditor;Development;IDE;
MimeType=application/x-code-workspace;
Actions=new-empty-window;
Keywords=vscode;

[Desktop Action new-empty-window]
Name=New Empty Window
Name[de]=Neues leeres Fenster
Name[es]=Nueva ventana vacía
Name[fr]=Nouvelle fenêtre vide
Name[it]=Nuova finestra vuota
Name[ja]=新しい空のウィンドウ
Name[ko]=새 빈 창
Name[ru]=Новое пустое окно
Name[zh_CN]=新建空窗口
Name[zh_TW]=開新空視窗
Exec=code --new-window %F
Icon=code
EOF
