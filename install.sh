#!/data/data/com.termux/files/usr/bin/bash
# Installer untuk termux-url-opener (yt-dlp universal downloader)
# Support: YouTube, TikTok, Instagram, Twitter/X, Reddit, Bilibili, Facebook, SoundCloud, Twitch

set -e

echo "====================================="
echo " 🚀 Termux URL Downloader Installer "
echo "====================================="

# Setup storage (jika belum)
if [ ! -d "/sdcard" ]; then
  echo "[*] Menyiapkan akses storage..."
  termux-setup-storage
fi

# Update paket
echo "[*] Update paket..."
pkg update -y && pkg upgrade -y

# Install dependensi
echo "[*] Install dependensi (python, git, ffmpeg, aria2)..."
pkg install -y python git ffmpeg aria2

# Install/upgrade yt-dlp via pip
echo "[*] Install/upgrade yt-dlp..."
pip install -U yt-dlp

# Buat folder ~/bin jika belum ada
mkdir -p ~/bin

# Salin skrip termux-url-opener
if [ -f "termux-url-opener" ]; then
  echo "[*] Menyalin skrip termux-url-opener..."
  cp termux-url-opener ~/bin/termux-url-opener
  chmod +x ~/bin/termux-url-opener
else
  echo "[!] File termux-url-opener tidak ditemukan di folder ini!"
  echo "    Pastikan kamu menjalankan install.sh dari repo yang benar."
  exit 1
fi

# Buat semua folder output
echo "[*] Membuat folder hasil unduhan..."
mkdir -p /sdcard/Movies/YouTube \
         /sdcard/Movies/TikTok \
         /sdcard/Movies/Instagram \
         /sdcard/Movies/Twitter \
         /sdcard/Movies/Reddit \
         /sdcard/Movies/Bilibili \
         /sdcard/Movies/Facebook \
         /sdcard/Movies/SoundCloud \
         /sdcard/Movies/Twitch \
         /sdcard/Music \
         /sdcard/Pictures/Thumbnails

echo "====================================="
echo " ✅ Instalasi selesai!"
echo " Share dari YouTube/TikTok/Instagram/Twitter/Reddit/Bilibili/Facebook/SoundCloud/Twitch → Termux,"
echo " lalu pilih MP4/MP3/Thumbnail."
echo "====================================="

