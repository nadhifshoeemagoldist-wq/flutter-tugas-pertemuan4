# Tugas Pertemuan 4 - Personal Profile Card

Aplikasi Flutter sederhana untuk menampilkan kartu profil mahasiswa dan tombol tautan ke profil GitHub pribadi menggunakan `url_launcher`.

## Identitas Mahasiswa
- **Nama**: Nadhif Shoeema Goldist
- **NIM**: 20240801085
- **Program Studi**: Teknik Informatika

---

## Perhitungan Ukuran Spesifikasi (Digit Terakhir NIM = 5)

| Properti | Rumus | Hasil Perhitungan |
| --- | --- | --- |
| Padding card | 16 + d | 21 px |
| Rounded card | 8 + d | 13 px |
| Tinggi tombol | 40 + d | 45 px |
| Rounded tombol | 4 + d | 9 px |
| Ukuran avatar | 40 + 2d | 50 px |
| Jarak nama dan NIM | 8 + d | 13 px |

---

## Struktur Folder

```text
lib/
├── main.dart             # Halaman utama kartu profil
├── theme/
│   └── app_theme.dart    # Konfigurasi tema utama aplikasi
└── widgets/
    └── app_button.dart   # Reusable component tombol dengan intent url_launcher
```

---

## Cara Menjalankan Project

1. Clone repository ini:
   ```bash
   git clone https://github.com/nadhifshoeemagoldist-wq/tugas_pertemuan4.git
   cd tugas_pertemuan4
   ```

2. Unduh dependencies:
   ```bash
   flutter pub get
   ```

3. Jalankan aplikasi:
   ```bash
   flutter run
   ```
