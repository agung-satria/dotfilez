# Mengaktifkan Kompatibilitas /etc/rc.local dengan Systemd

Mengaktifkan Kompatibilitas /etc/rc.local dengan Systemd. Untuk sistem operasi modern saat ini lebih banyak yang menggunakan Systemd. Fungsinya sama, hanya lebih kompleks. Nah, bagi system operasi lama kita biasanya menggunakan /etc/rc.local untuk menjalankan perintah tertentu saat booting.

Kita bisa saja menjalankan satu baris perintah yang kita butuhkan agar berjalan saat booting dengan cara membuat service di Systemd. Baca:
Membuat Daemon Process dengan Systemd

Nah, masalahnya bakal ribet banget kalau hanya satu baris perintah saja harus dibuatkan satu service khusus. Solusinya adalah dengan mengaktifkan kembali fitur /etc/rc.local di systemd. Di beberapa sistem operasi misalnya Kali Linux, fitur ini sudah langsung aktif. Namun di Ubuntu 18.04 terakhir saya coba fitur ini belum aktif.

Kita bisa cek terlebih dahulu dengan command:

```sh
sudo systemctl status rc-local
```

Jika statusnya failed atau error, selanjutnya ikuti cara dibawah.

Pertama, kita buat terlebih dahulu file script bash /etc/rc.local nya.

```sh
printf '%s\n' '#!/bin/bash' 'exit 0' | sudo tee -a /etc/rc.local
```

Selanjutnya beri hak eksekusi ke file tersebut.

```sh
sudo chmod +x /etc/rc.local
```

Lanjut buat service Systemd nya.

```
sudo nvim /etc/systemd/system/rc-local.service
```

Lalu isinya:

```
[Unit]
Description=/etc/rc.local Compatibility
ConditionPathExists=/etc/rc.local

[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99

[Install]
WantedBy=multi-user.target
```

Lalu aktifkan service nya.

```
sudo systemctl daemon-reload
sudo systemctl enable rc-local
sudo systemctl start rc-local

```

Sekarang kalian bisa memasukkan command yang ingin langsung dieksekusi saat bootingg di /etc/rc.local. Masukkan sebelum exit 0. Contoh, disini saya menyisipkan command untuk mengeksekusi perintah agar backlight di Asus x412da saya langsung dapat di akses untuk adjustment brightness (karena sebelumnya setiap pertama boot ownership nya selalu root).

```
#!/bin/bash
sudo chown agung:agung /sys/class/backlight/amdgpu_bl0/*
exit 0

```

> source [linuxsec.org](https://www.linuxsec.org/2020/12/mengaktifkan-kompatibilitas-etcrclocal.html)
