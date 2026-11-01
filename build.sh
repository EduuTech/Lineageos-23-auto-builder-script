#!/usr/bin/env bash
set -euo pipefail

#  MIT License
#
#  Copyright (c) 2026 Dudu-gsh
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
echo "$WELCOME"

path() {
  echo "$ASK"
read -rp "$WRITE" PASTA
}

ASK(){
echo "$ASK"
echo "$EX_CODE"
read -rp "$WRITE" CODENOME
clear
echo "$WAIT_CODE"
sleep 3
}

# Baixa pacotes
run "$APT" sudo apt update
sudo apt install -y bc bison build-essential \
ccache curl flex g++-multilib gcc-multilib git \
git-lfs gnupg gperf imagemagick protobuf-compiler \
python3-protobuf lib32readline-dev \
lib32z1-dev libdw-dev libelf-dev libgnutls-dev \
lz4 libsdl1.2-dev libssl-dev libxml2 \
libxml2-utils lzop pngcrush rsync schedtool \
squashfs-tools xsltproc xxd zip zlib1g-dev \
python-is-python3 jq coreutils
# Cria pastas e baixa repo
mkdir -p ~/bin
PATH="$HOME/bin:$PATH"
mkdir -p ~/android/lineage

curl -fLo ~/bin/repo https://storage.googleapis.com/git-repo-downloads/repo
chmod a+x ~/bin/repo
clear
# Usar ccache
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
# Pede nome e email pro repo
read -rp "$ASK_EMAIL" EMAIL 
read -rp "$ASK_NAME" NAME 
clear
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
git lfs install
git config --global trailer.changeid.key "Change-Id"
ccache -M 30G
ccache -o compression=true
# Baixa coisas
cd ~/android/lineage
run "$REPO" repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs --no-clone-bundle
repo sync -c -j"$CORES"
clear
# Baixa mais coisas
source build/envsetup.sh
ASK
while ! breakfast "$CODENOME"; do
    echo "$ERROR_CODE"
    ASK
done
export CODENAME ERROR_DOWN
./zip_download.sh

path
while [[ ! -d "$PASTA" ]]; do
echo "$ERROR_BLOB"
path
done
# Extrai blobs do .zip
cd "$PASTA"
if [[ -f "./extract-files.sh" ]]; then
    ./extract-files.sh "$ZIP_NAME"
elif [[ -f ./extract-files.py ]]; then
   ./extract-files.py "$ZIP_NAME"
  else
  echo "Arquivo importante nao encontrado!!!"
  exit 1
fi
# Compila
croot
read -rp "..."
clear
#    if [[ "$USE_KERNELSU" == true ]]; then
#    run "KSU_INSTALL" cd "$(find kernel -type d -name "$CODENOME").."
# curl -algo https://algum.site
#    fi
read -rp "$ASK_SIGN" SIGNED
   if [[ $SIGNED =~ ^[YySs].*$ ]]; then
cd "$DIR"
export CODENAME
exec ./sign_"$LANG".sh

   elif [[ $SIGNED =~ ^[Nn]$ ]]; then 
run "$BUILD" brunch "$CODENOME"
  else
echo "$THINK_SIGN"
