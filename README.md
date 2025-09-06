# Termux URL Downloader (YouTube, TikTok, Instagram)

Skrip `termux-url-opener` untuk Termux agar bisa download video/audio dari YouTube, TikTok, dan Instagram langsung lewat fitur Share.

## ✨ Fitur
- Pilih format saat Share → Termux:
  - `1` = MP4 (video+audio terbaik)
  - `2` = MP3 (audio terbaik)
- Output otomatis ke folder:
  - YouTube → `/sdcard/Movies` atau `/sdcard/Music`
  - TikTok → `/sdcard/Movies/TikTok`
  - Instagram → `/sdcard/Movies/Instagram`

## 🚀 Instalasi
```bash
pkg update && pkg upgrade
pkg install python ffmpeg aria2 git
pip install -U yt-dlp
termux-setup-storage
git clone https://github.com/ZephyrChemX/termux-ytdlp-downloader.git
cd termux-ytdlp-downloader
bash install.sh
