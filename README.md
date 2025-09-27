# Termux URL Downloader

Downloader berbasis Termux untuk menyimpan video atau audio langsung dari menu **Share → Termux**.

**Didukung:** YouTube, TikTok, Instagram, Threads, Twitter/X, Reddit, Bilibili, Facebook, SoundCloud, dan Twitch.

**Backend utama:** `yt-dlp`, `gallery-dl` (foto), `ffmpeg`, serta `aria2c` untuk sumber non-YouTube.

---

## ✨ Fitur Utama

### Menu utama

| Input | Aksi | Catatan |
|-------|------|---------|
| `1` | **MP4** | Pilih subtitle → pilih resolusi, tanpa embed thumbnail |
| `2` | **WEBM** | Pilih subtitle → pilih resolusi, tanpa embed thumbnail |
| `3` | **MP3** | Audio terbaik, thumbnail PNG di-embed sebagai cover art |
| `4` | **M4A** | Audio terbaik, thumbnail PNG di-embed sebagai cover art |
| `5` | **Thumbnail / Foto** | Thumbnail video via `yt-dlp`, foto tunggal/carousel via `gallery-dl` lalu dikonversi ke JPEG oleh `ffmpeg` |

### MP4/WEBM (playlist & non-playlist)

* Pilihan subtitle: `1` Indonesia · `2` English · `3` Japanese · `4` Tanpa subtitle.
* Pilihan resolusi: `1` Terbaik · `2` 1080p (prioritas 60 fps) · `3` 720p (prioritas 60 fps) · `4` 480p.
* Subtitle yang dipilih otomatis di-embed jika tersedia dari sumber.
* Video non-playlist berdurasi < 1 menit langsung menggunakan kualitas terbaik tanpa submenu.

### Downloader pintar

* **YouTube** menggunakan downloader bawaan `yt-dlp` (tanpa aria2c) demi kecepatan dan stabilitas.
* **TikTok, Instagram/Threads, Twitter/X, Reddit, Bilibili, Facebook, SoundCloud, Twitch** memanfaatkan `aria2c` (`-x4 -s4`) agar lebih stabil di Android.

### Struktur folder output

| Konten | Lokasi |
|--------|--------|
| Video YouTube | `/sdcard/Movies/YouTube` |
| Video TikTok | `/sdcard/Movies/TikTok` |
| Video Instagram / Threads | `/sdcard/Movies/Instagram` |
| Video Twitter/X | `/sdcard/Movies/Twitter` |
| Video Reddit | `/sdcard/Movies/Reddit` |
| Video Bilibili | `/sdcard/Movies/Bilibili` |
| Video Facebook | `/sdcard/Movies/Facebook` |
| Video SoundCloud | `/sdcard/Movies/SoundCloud` |
| Video Twitch | `/sdcard/Movies/Twitch` |
| Audio (MP3/M4A) semua situs | `/sdcard/Music` |
| Thumbnail / foto | `/sdcard/Pictures/Thumbnails` |

### File cookies opsional

| Situs | Path file |
|-------|-----------|
| YouTube | `/sdcard/Download/youtube_cookies.txt` |
| Instagram / Threads | `/sdcard/Download/instagram_cookies.txt` |
| Twitter/X | `/sdcard/Download/twitter_cookies.txt` |
| Reddit | `/sdcard/Download/reddit_cookies.txt` |
| Bilibili | `/sdcard/Download/bilibili_cookies.txt` |
| Facebook | `/sdcard/Download/facebook_cookies.txt` |
| SoundCloud | `/sdcard/Download/soundcloud_cookies.txt` |
| Twitch | `/sdcard/Download/twitch_cookies.txt` |

---

## 🚀 Instalasi

```bash
git clone https://github.com/ZephyrChemX/Termux-URL-Downloader.git
cd Termux-URL-Downloader
pkg install deno
bash install.sh
```

Installer akan otomatis:

1. Menjalankan `termux-setup-storage`.
2. Menginstal dependensi: `pkg install python git ffmpeg aria2 deno`.
3. Memperbarui `yt-dlp` (beserta solver JavaScript YouTube) dan `gallery-dl` melalui `pip install -U "yt-dlp[default]" gallery-dl`.
4. Menyalin skrip ke `~/bin/termux-url-opener`.
5. Membuat seluruh folder output yang dibutuhkan.

> ℹ️ Mulai 2024, YouTube menuntut runtime JavaScript eksternal untuk memecahkan tantangan pemutakhiran. `yt-dlp[default]` membutuhkan Deno (atau runtime JS lain) agar unduhan YouTube tetap berfungsi.

---

## 📖 Cara Pakai

### Mode Share → Termux

1. Buka salah satu aplikasi yang didukung (YouTube, TikTok, Instagram, Threads, Twitter/X, Reddit, Bilibili, Facebook, SoundCloud, atau Twitch).
2. Pilih menu **Share → Termux**.
3. Tentukan opsi yang diinginkan (lihat tabel menu utama di atas).

### Detail opsi

* **MP4/WEBM** – pilih subtitle dan resolusi, lalu video disimpan tanpa thumbnail embed.
* **MP3/M4A** – mengambil kualitas audio terbaik dan meng-embed thumbnail PNG sebagai cover art.
* **Thumbnail / Foto** – dapatkan thumbnail video atau seluruh foto carousel, kemudian dikonversi ke JPEG oleh `ffmpeg`.

### Mode manual (tanpa menu Share)

Jika aplikasi tidak memiliki fitur Share, jalankan skrip secara manual:

```bash
termux-url-opener 'https://soundcloud.com/user/sets/playlist-ku'
```

Atau gunakan URL dari clipboard:

```bash
termux-url-opener "$(termux-clipboard-get)"
```

Skrip tetap memproses tautan sesuai prosedur biasa.

---

## 🔑 Cookies (opsional)

Ekspor cookies (format **Netscape**) dengan ekstensi browser seperti **Get cookies.txt**, lalu simpan ke path yang tercantum pada tabel cookies. Jika file tersedia, skrip otomatis menggunakannya untuk mengakses konten login/restricted.

---

## ⚡ Tips

* Koneksi lambat? Kurangi koneksi paralel aria2c di skrip (`-x4 -s4` → `-x2 -s2`) atau nonaktifkan aria2c sama sekali.
* Perbarui `yt-dlp` dan `gallery-dl` secara berkala: `pip install -U "yt-dlp[default]" gallery-dl`.
* Tidak semua situs menyediakan subtitle; jika tidak ada, proses embed akan dilewati otomatis.

---

## 🧾 Lisensi

MIT License — gunakan untuk konten legal atau pribadi.
