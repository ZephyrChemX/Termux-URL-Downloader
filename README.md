# Termux URL Downloader (YouTube, TikTok, Instagram)

Skrip **termux-url-opener** untuk [Termux](https://github.com/termux/termux-app)  
agar bisa download video/audio dari **YouTube, TikTok, dan Instagram** langsung lewat menu **Share → Termux**.

---

## ✨ Fitur
- ✅ Pilihan saat Share:
  - `1` → MP4 (video + audio terbaik)
  - `2` → MP3 (audio terbaik)
- ✅ Output otomatis ke folder:
  - YouTube → `/sdcard/Movies` (MP4) atau `/sdcard/Music` (MP3)
  - TikTok → `/sdcard/Movies/TikTok`
  - Instagram → `/sdcard/Movies/Instagram`
- ✅ Support [aria2c](https://aria2.github.io/) untuk download cepat (multi-connection).
- ✅ Subtitle, chapters, merge audio-video via ffmpeg (bila tersedia).
- ✅ Instagram private/restricted bisa pakai cookies.

---

## 🚀 Instalasi

1. Pasang Termux + Termux:API (dari F-Droid).
2. Update paket & pasang dependensi:
   ```bash
   pkg update && pkg upgrade
   pkg install python ffmpeg aria2 git
   pip install -U yt-dlp
   termux-setup-storage

3. Clone repo ini:

git clone https://github.com/ZephyrChemX/termux-ytdlp-downloader.git
cd termux-ytdlp-downloader


4. Jalankan installer:

bash install.sh




---

📖 Cara Pakai

1. Buka YouTube / TikTok / Instagram.


2. Tekan Share → Termux.


3. Di Termux akan muncul pilihan:

Pilih format download:
1) MP4 (video+audio terbaik)
2) MP3 (audio terbaik)
Masukkan pilihan [1/2]:


4. Masukkan angka 1 atau 2, lalu Enter.


5. Hasil:

Video MP4 → /sdcard/Movies/...

Audio MP3 → /sdcard/Music/...





---

🔑 Instagram Cookies (opsional)

Untuk konten Instagram private/restricted:

1. Ekspor cookies Instagram dari browser (pakai extension Get cookies.txt atau Cookie-Editor).


2. Simpan file ke:

/sdcard/Download/instagram_cookies.txt


3. Skrip otomatis akan pakai cookies jika file tersedia.




---

📷 Screenshot

Pilih format



Hasil di folder Movies




---

⚡ Tips

Jaringan lemot → ubah -x16 -s16 di skrip jadi -x8 -s8.

Tambahkan logging dengan mengedit skrip:

>> "/sdcard/Download/yt-dlp.log" 2>&1

Kalau hanya mau MP4 otomatis tanpa ditanya → edit skrip, hapus menu input, langsung pakai mode default.



---

📜 Lisensi

MIT License.
Gunakan dengan bijak, hanya untuk konten legal atau pribadi.
