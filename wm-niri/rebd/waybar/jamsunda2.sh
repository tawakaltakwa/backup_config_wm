#!/bin/sh
xjam=$(date +%H)
xmenit=$(date +%M)
jam_int=$((10#$xjam))
menit_int=$((10#$xmenit))
if (("$jam_int" == 0 && "$menit_int" >= 30)) || (("$jam_int" == 0 && "$menit_int" <= 59)); then
    ngaranjam="Tumorek"
fi
if (("$jam_int" == 1 && "$menit_int" >= 0)) || (("$jam_int" == 1 && "$menit_int" <= 29)); then
    ngaranjam="Janari Sapi"
fi
if (("$jam_int" == 1 && "$menit_int" >= 30)) || (("$jam_int" == 1 && "$menit_int" <= 59)); then
    ngaranjam="Janari Leutik"
fi
if (("$jam_int" == 2 && "$menit_int" >= 0)) || (("$jam_int" == 2 && "$menit_int" <= 29)); then
    ngaranjam="Janari Gedé"
fi
if (("$jam_int" == 2 && "$menit_int" >= 30)) || (("$jam_int" == 2 && "$menit_int" <= 29)); then
    ngaranjam="Disada Rorongkéng"
fi
if (("$jam_int" == 3 && "$menit_int" >= 30)) || (("$jam_int" == 3 && "$menit_int" <= 59)); then
    ngaranjam="Haliwawar"
fi
if (("$jam_int" == 4 && "$menit_int" >= 0)) || (("$jam_int" == 4 && "$menit_int" <= 59)); then
    ngaranjam="Janari"
fi
if (("$jam_int" == 5 && "$menit_int" >= 0)) || (("$jam_int" == 5 && "$menit_int" <= 29)); then
    ngaranjam="Balébat"
fi
if (("$jam_int" == 5 && "$menit_int" >= 30)) || (("$jam_int" == 6 && "$menit_int" <= 59)); then
    ngaranjam="Carangcang Tihang"
fi
if (("$jam_int" == 7 && "$menit_int" >= 0)) || (("$jam_int" == 7 && "$menit_int" <= 59)); then
    ngaranjam="Murag Ciibun/Meleték Sarangéngé"
fi
if (("$jam_int" == 8 && "$menit_int" >= 0)) || (("$jam_int" == 8 && "$menit_int" <= 59)); then
    ngaranjam="Haneut Moyan/Laér Kanjut"
fi
if (("$jam_int" == 9 && "$menit_int" >= 0)) || (("$jam_int" == 9 && "$menit_int" <= 59)); then
    ngaranjam="Rumangsang"
fi
if (("$jam_int" == 10 && "$menit_int" >= 0)) || (("$jam_int" == 11 && "$menit_int" <= 59)); then
    ngaranjam="Pecat Sawed"
fi
if (("$jam_int" == 12 && "$menit_int" >= 0)) || (("$jam_int" == 13 && "$menit_int" <= 59)); then
    ngaranjam="Manceran/Tengah Poé"
fi
if (("$jam_int" == 14 && "$menit_int" >= 0)) || (("$jam_int" == 14 && "$menit_int" <= 59)); then
    ngaranjam="Lingsir Ngulon"
fi
if (("$jam_int" == 15 && "$menit_int" >= 0)) || (("$jam_int" == 15 && "$menit_int" <= 59)); then
    ngaranjam="Panonpoé Satungtung"
fi
if (("$jam_int" == 16 && "$menit_int" >= 0)) || (("$jam_int" == 16 && "$menit_int" <= 59)); then
    ngaranjam="Tunggang Gunung"
fi
if (("$jam_int" == 17 && "$menit_int" >= 0)) || (("$jam_int" == 17 && "$menit_int" <= 29)); then
    ngaranjam="Sariak Layung"
fi
if (("$jam_int" == 17 && "$menit_int" >= 30)) || (("$jam_int" == 17 && "$menit_int" <= 59)); then
    ngaranjam="Erang-érang"
fi
if (("$jam_int" == 18 && "$menit_int" >= 0)) || (("$jam_int" == 19 && "$menit_int" <= 59)); then
    ngaranjam="Sareupna/Harieum Beungeut"
fi
if (("$jam_int" == 19 && "$menit_int" >= 0)) || (("$jam_int" == 20 && "$menit_int" <= 59)); then
    ngaranjam="Sareureuh Gaang"
fi
if (("$jam_int" == 21 && "$menit_int" >= 0)) || (("$jam_int" == 21 && "$menit_int" <= 59)); then
    ngaranjam="Sareureuh Budak"
fi
if (("$jam_int" == 22 && "$menit_int" >= 0)) || (("$jam_int" == 23 && "$menit_int" <= 59)); then
    ngaranjam="Sareureuh Kolot"
fi
if (("$jam_int" == 0 && "$menit_int" >= 0)) || (("$jam_int" == 0 && "$menit_int" <= 29)); then
    ngaranjam="Tengah Peuting"
fi
jam=$(date +"%H:%M")" - "
while getopts "ptf:" opt; do
    case "$opt" in
    h|\?)
        echo "Pemakaian: $0 [-t] [-p] [-f 12/24]"
        echo "t=tanggal, nampilkeun tanggal"
        echo "p=poe, nampilkeun nami poe ayeuna"
        echo "f=format, 12 jam atawa 24 jam (default: 24 jam)"
        exit 0
        ;;
    p)  p=1
        case "$(date +%A)" in
            Sunday | Minggu )
            poe="Minggu, "
            ;;
            Monday | Senin )
            poe="Senén, "
            ;;
            Tuesday | Selasa )
            poe="Salasa, "
            ;;
            Wednesday | Rabu )
            poe="Rebo, "
            ;;
            Thursday | Kamis )
            poe="Kemis, "
            ;;
            Friday | Jumat | Jum\'at )
            poe="Juma'ah, "
            ;;
            Saturday | Sabtu )
            poe="Saptu, "
            ;;
        esac
        ;;
    t)  t=1
        tanggal=$(date +"%d-%b-%Y")" | "
        ;;
    f)  f=$OPTARG
        case "$f" in
            12)
            jam=$(date +"%I:%M %p")" - "
            ;;
        esac
        ;;
    esac
done
echo "$tanggal$poe$jam$ngaranjam"
