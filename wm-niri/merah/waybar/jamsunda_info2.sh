#!/bin/sh
xjam=$(date +%H)
xmenit=$(date +%M)
jam_int=$((10#$xjam))
menit_int=$((10#$xmenit))
if (("$jam_int" == 0 && "$menit_int" >= 30)) || (("$jam_int" == 0 && "$menit_int" <= 59)); then
    durasi="00:30-00:59"
    ngaranjam="Tumorek"
fi
if (("$jam_int" == 1 && "$menit_int" >= 0)) || (("$jam_int" == 1 && "$menit_int" <= 29)); then
    durasi="01:00-1:29"
    ngaranjam="Janari Sapi"
fi
if (("$jam_int" == 1 && "$menit_int" >= 30)) || (("$jam_int" == 1 && "$menit_int" <= 59)); then
    durasi="01:30-1:59"
    ngaranjam="Janari Leutik"
fi
if (("$jam_int" == 2 && "$menit_int" >= 0)) || (("$jam_int" == 2 && "$menit_int" <= 29)); then
    durasi="02:00-2:29"
    ngaranjam="Janari Gedé"
fi
if (("$jam_int" == 2 && "$menit_int" >= 30)) || (("$jam_int" == 2 && "$menit_int" <= 29)); then
    durasi="02:30-2:29"
    ngaranjam="Disada Rorongkéng"
fi
if (("$jam_int" == 3 && "$menit_int" >= 30)) || (("$jam_int" == 3 && "$menit_int" <= 59)); then
    durasi="03:30-3:59"
    ngaranjam="Haliwawar"
fi
if (("$jam_int" == 4 && "$menit_int" >= 0)) || (("$jam_int" == 4 && "$menit_int" <= 59)); then
    durasi="04:00-4:59"
    ngaranjam="Janari"
fi
if (("$jam_int" == 5 && "$menit_int" >= 0)) || (("$jam_int" == 5 && "$menit_int" <= 29)); then
    durasi="05:00-5:29"
    ngaranjam="Balébat"
fi
if (("$jam_int" == 5 && "$menit_int" >= 30)) || (("$jam_int" == 6 && "$menit_int" <= 59)); then
    durasi="05:30-6:59"
    ngaranjam="Carangcang Tihang"
fi
if (("$jam_int" == 7 && "$menit_int" >= 0)) || (("$jam_int" == 7 && "$menit_int" <= 59)); then
    durasi="07:00-7:59"
    ngaranjam="Murag Ciibun/Meleték Sarangéngé"
fi
if (("$jam_int" == 8 && "$menit_int" >= 0)) || (("$jam_int" == 8 && "$menit_int" <= 59)); then
    durasi="08:00-8:59"
    ngaranjam="Haneut Moyan/Laér Kanjut"
fi
if (("$jam_int" == 9 && "$menit_int" >= 0)) || (("$jam_int" == 9 && "$menit_int" <= 59)); then
    durasi="09:00-9:59"
    ngaranjam="Rumangsang"
fi
if (("$jam_int" == 10 && "$menit_int" >= 0)) || (("$jam_int" == 11 && "$menit_int" <= 59)); then
    durasi="10:00-11:59"
    ngaranjam="Pecat Sawed"
fi
if (("$jam_int" == 12 && "$menit_int" >= 0)) || (("$jam_int" == 13 && "$menit_int" <= 59)); then
    durasi="12:00-13:59"
    ngaranjam="Manceran/Tengah Poé"
fi
if (("$jam_int" == 14 && "$menit_int" >= 0)) || (("$jam_int" == 14 && "$menit_int" <= 59)); then
    durasi="14:00-14:59"
    ngaranjam="Lingsir Ngulon"
fi
if (("$jam_int" == 15 && "$menit_int" >= 0)) || (("$jam_int" == 15 && "$menit_int" <= 59)); then
    durasi="15:00-15:59"
    ngaranjam="Panonpoé Satungtung"
fi
if (("$jam_int" == 16 && "$menit_int" >= 0)) || (("$jam_int" == 16 && "$menit_int" <= 59)); then
    durasi="16:00-16:59"
    ngaranjam="Tunggang Gunung"
fi
if (("$jam_int" == 17 && "$menit_int" >= 0)) || (("$jam_int" == 17 && "$menit_int" <= 29)); then
    durasi="17:00-17:29"
    ngaranjam="Sariak Layung"
fi
if (("$jam_int" == 17 && "$menit_int" >= 30)) || (("$jam_int" == 17 && "$menit_int" <= 59)); then
    durasi="17:30-17:59"
    ngaranjam="Erang-érang"
fi
if (("$jam_int" == 18 && "$menit_int" >= 0)) || (("$jam_int" == 19 && "$menit_int" <= 59)); then
    durasi="18:00-19:59"
    ngaranjam="Sareupna/Harieum Beungeut"
fi
if (("$jam_int" == 19 && "$menit_int" >= 0)) || (("$jam_int" == 20 && "$menit_int" <= 59)); then
    durasi="19:00-20:59"
    ngaranjam="Sareureuh Gaang"
fi
if (("$jam_int" == 21 && "$menit_int" >= 0)) || (("$jam_int" == 21 && "$menit_int" <= 59)); then
    durasi="21:00-21:59"
    ngaranjam="Sareureuh Budak"
fi
if (("$jam_int" == 22 && "$menit_int" >= 0)) || (("$jam_int" == 23 && "$menit_int" <= 59)); then
    durasi="22:00-23:59"
    ngaranjam="Sareureuh Kolot"
fi
if (("$jam_int" == 0 && "$menit_int" >= 0)) || (("$jam_int" == 0 && "$menit_int" <= 29)); then
    durasi="00:00-00:29"
    ngaranjam="Tengah Peuting"
fi
notify-send "$ngaranjam ($durasi)"
