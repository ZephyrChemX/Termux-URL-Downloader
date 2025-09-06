#!/data/data/com.termux/files/usr/bin/bash
# Installer untuk termux-url-opener

set -e

echo "[*] Membuat folder ~/bin ..."
mkdir -p ~/bin

echo "[*] Menyalin skrip termux-url-opener ..."
cp termux-url-opener ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener

echo "[*] Menambahkan folder Movies & Music ..."
mkdir -p /sdcard/Movies /sdcard/Music /sdcard/Movies/TikTok /sdcard/Movies/Instagram

echo "✅ Instalasi selesai! Sekarang coba Share link ke Termux."
