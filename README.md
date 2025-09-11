# Termux URL Downloader
Mudah download video/audio via **Share → Termux** dari:
**YouTube, TikTok, Instagram, Twitter/X, Reddit, Bilibili**

Backend: `yt-dlp` + `ffmpeg` + `aria2c` (khusus non‑YouTube).

---

## ✨ Fitur
- **Menu utama**:
  - `1` → **MP4** (pilih subtitle → pilih resolusi, **tanpa embed thumbnail**)
  - `2` → **MP3** (audio terbaik, **embed thumbnail** sebagai cover art)
  - `3` → **Thumbnail Only** (gambar asli: jpg/png/webp)
- **MP4 (Playlist & Non-playlist, urutan sama)**:
  - **Pilih subtitle**:
    - `1` Indonesia
    - `2` English
    - `3` Japanese
    - `4` Tanpa subtitle
  - **Pilih resolusi**:
    - `1` **Terbaik (best available)**
    - `2` **1080p** (prioritas **60fps**; fallback 30fps)
    - `3` **720p** (prioritas **60fps**; fallback 30fps)
    - `4` **480p**
  - Subtitle yang dipilih **akan di-embed** ke video (jika tersedia di sumber).
- **Downloader pintar**:
  - **YouTube** → downloader bawaan `yt-dlp` (**tanpa** aria2c) untuk kecepatan/stabilitas lebih baik.
  - **TikTok/Instagram/Twitter/Reddit/Bilibili** → **aria2c** koneksi moderat (`-x4 -s4`) agar stabil di Android.
- **Folder keluaran rapi per situs**:
  - YouTube → `/sdcard/Movies/YouTube`
  - TikTok → `/sdcard/Movies/TikTok`
  - Instagram → `/sdcard/Movies/Instagram`
  - Twitter/X → `/sdcard/Movies/Twitter`
  - Reddit → `/sdcard/Movies/Reddit`
  - Bilibili → `/sdcard/Movies/Bilibili`
  - MP3 semua situs → `/sdcard/Music`
  - Thumbnail Only → `/sdcard/Pictures/Thumbnails`
- **Cookies per situs** (opsional) untuk login/restricted:
  - `/sdcard/Download/youtube_cookies.txt`
  - `/sdcard/Download/instagram_cookies.txt`
  - `/sdcard/Download/twitter_cookies.txt`
  - `/sdcard/Download/reddit_cookies.txt`
  - `/sdcard/Download/bilibili_cookies.txt`

---

## 🚀 Instalasi
```bash
git clone https://github.com/ZephyrChemX/Termux-URL-Downloader.git
cd Termux-URL-Downloader
bash install.sh
```
Installer akan:
- `termux-setup-storage`
- `pkg install python git ffmpeg aria2`
- `pip install -U yt-dlp`
- menyalin skrip ke `~/bin/termux-url-opener`
- membuat semua folder output

---

## 📖 Cara Pakai
1. Buka YouTube / TikTok / Instagram / Twitter / Reddit / Bilibili.
2. **Share → Termux**.
3. Pilih:
   ```
   1) MP4 (subtitle + resolusi)
   2) MP3 (audio)
   3) Thumbnail saja
   ```

### MP4 (Playlist & Non-playlist)
- Submenu **subtitle**:
  ```
  1) Indonesia
  2) English
  3) Japanese
  4) Tanpa subtitle
  ```
- Submenu **resolusi**:
  ```
  1) Terbaik (best)
  2) 1080p (prioritas 60fps)
  3) 720p  (prioritas 60fps)
  4) 480p
  ```
- **Catatan**: MP4 **tidak** meng-embed thumbnail. Hanya subtitle yang di-embed.

### MP3
- Diambil kualitas terbaik, **thumbnail di-embed** sebagai cover art.

### Thumbnail Only
- Mengunduh **gambar asli** (jpg/png/webp), tanpa konversi.

---

## 🔑 Cookies (opsional)
Ekspor cookies (format **Netscape**) dengan ekstensi seperti **Get cookies.txt** dari browser, lalu simpan ke:
```
/sdcard/Download/youtube_cookies.txt
/sdcard/Download/instagram_cookies.txt
/sdcard/Download/twitter_cookies.txt
/sdcard/Download/reddit_cookies.txt
/sdcard/Download/bilibili_cookies.txt
```
Jika file ada, skrip otomatis menggunakannya.

---

## ⚡ Tips
- Koneksi lambat → ubah koneksi aria2c di skrip: `-x4 -s4` → `-x2 -s2`, atau matikan aria2c total.
- Update yt-dlp rutin: `pip install -U yt-dlp`.
- Beberapa situs tidak menyediakan subtitle; jika tidak tersedia, proses embed otomatis dilewati.

---

## 🧾 Lisensi
MIT License — gunakan untuk konten legal/pribadi.

