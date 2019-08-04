#!/bin/bash
#Variables

g="\033[32m"
b="\033[1;34m"
r="\033[1;31m"
clear
echo "  _        _           _       _      _____    "             
echo " | |      (_)         | |     | |    / ____|                "
echo " | |       _    __ _  | |__   | |_  | (___    _   _   _ __  "
echo " | |      | |  / _` | | '_ \  | __|  \___ \  | | | | | '_ \"
echo " | |____  | | | (_| | | | | | | |_   ____) | | |_| | | | | | "
echo " |______| |_|  \__, | |_| |_|  \__| |_____/   \__,_| |_| |_| "
echo "                __/ |     "                                  
echo "               |___/ "

###################################################
# CTRL + C
###################################################
ctrl_c() {
clear
echo $r"(Ctrl + C ) Detected, Trying To Exit ... "


get_url=$(curl -s http://zlucifer.com/api/nik.php)
cek='curl -s '$get_url # check status
zlucifer="user-agent: zlucifer"
response=`curl -H "$zlucifer" -m "60" -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *HACKER* ]]; then
    echo
    echo "Masukan angka 1 untuk tips, dan 2 untuk melakukan pengecekan"
    echo $b " [ 01 ]$g Tips"
    echo $b " [ 02 ]$g Cek"
    echo $b " [ 00 ]$r Exit"
    read info
    if [ $info = "01" ]; then
        echo $g "TIPS : "
        echo $g " Minta Nomor Rekening (Atas Nama) Dan "
        echo $g " NIK Penjual Untuk Di Cek Keasliannya"
        echo
        echo $g " Penjual Tidak Mau Memberi NIK = $r Waspada"
        echo $g " Nama pemilik NIK Tidak Muncul = $r Waspada"
        echo $g " Nama Pemilik NIK Dan Nama Pemilik Rekening Berbeda = $r Waspada"
        echo $g " Nama Pemilik NIK Sama Dengan Nama Pemilik Rekening = $r Penjual Asli"
        echo $g " Meskipun Penjual Asli, Tetap $r Waspada"
     else
            echo
            echo $g "Silahkan Masukan NIK Target"
            echo $g " Contoh 1234567890876543"
            read target # masukin NIK
            echo
            echo $g Apakah NIK $target "sudah benar?"
            echo $g y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                echo Melakukan Pengecekan NIK $target
                cek_target=`curl -s $get_url/nik.php?nik=$target`
                echo -e $cek_target
            else
                echo Kesalahan, Silahkan Coba Lagi
if [ $exit = "00" ]; then
echo $g "Created By NoGuardian"
echo $g "Made Tools By HackBae"
exit

            fi
     fi
fi


