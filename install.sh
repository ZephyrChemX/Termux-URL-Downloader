#!/data/data/com.termux/files/usr/bin/bash
# Installer untuk termux-url-opener (yt-dlp universal downloader)
# Support: YouTube, TikTok, Instagram, Threads, Twitter/X, Reddit, Bilibili, Facebook, SoundCloud, Twitch

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
echo "[*] Install dependensi (python, git, ffmpeg, aria2, deno)..."
pkg install -y python git ffmpeg aria2 deno

# Install/upgrade yt-dlp, gallery-dl, & curl_cffi (untuk anti-bot TikTok)
echo "[*] Install/upgrade yt-dlp, gallery-dl, & curl_cffi..."
pip install -U "yt-dlp[default]" gallery-dl curl_cffi

# Buat folder ~/bin & ~/.termux jika belum ada
mkdir -p ~/bin
mkdir -p ~/.termux

# Salin skrip termux-url-opener ke ~/bin dan ~/.termux
if [ -f "termux-url-opener" ]; then
  echo "[*] Menyalin skrip termux-url-opener..."
  cp termux-url-opener ~/bin/termux-url-opener
  cp termux-url-opener ~/.termux/termux-url-opener
  chmod +x ~/bin/termux-url-opener ~/.termux/termux-url-opener
else
  echo "[!] File termux-url-opener tidak ditemukan di folder ini!"
  echo "    Pastikan kamu menjalankan install.sh dari repo yang benar."
  exit 1
fi

# Buat semua folder output (termasuk Threads)
echo "[*] Membuat folder hasil unduhan..."
mkdir -p /sdcard/Movies/YouTube \
         /sdcard/Movies/TikTok \
         /sdcard/Movies/Instagram \
         /sdcard/Movies/Threads \
         /sdcard/Movies/Twitter \
         /sdcard/Movies/Reddit \
         /sdcard/Movies/Bilibili \
         /sdcard/Movies/Facebook \
         /sdcard/Movies/SoundCloud \
         /sdcard/Movies/Twitch \
         /sdcard/Music \
         /sdcard/Pictures/Thumbnails \
         /sdcard/Pictures/YouTube \
         /sdcard/Pictures/TikTok \
         /sdcard/Pictures/Instagram \
         /sdcard/Pictures/Threads \
         /sdcard/Pictures/Twitter \
         /sdcard/Pictures/Reddit \
         /sdcard/Pictures/Bilibili \
         /sdcard/Pictures/Facebook \
         /sdcard/Pictures/SoundCloud \
         /sdcard/Pictures/Twitch \
         /sdcard/Pictures/Lainnya

echo "====================================="
echo " ✅ Instalasi selesai!"
echo " Share dari YouTube/TikTok/Instagram/Threads/Twitter/Reddit/Bilibili/Facebook/SoundCloud/Twitch → Termux,"
echo " lalu pilih MP4/WEBM/MP3/M4A/Thumbnail/Quick Download."
echo "====================================="
