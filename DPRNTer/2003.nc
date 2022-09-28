%

(DPRNTer start)
DPRNT[FECHA (AAMMDD): #3011]

DPRNT[Cycle start timer: #3021[60]]

DPRNT[Override FEED HOLD control: #3004[60]]

DPRNT[Estimated Feedrate: #5081[60]]

DPRNT[Coolant level: #13013[60]]

DPRNT[Spindle RPM: #3027[60]]
(DPRNTer end)

O02003
(Using high feed G1 F650. instead of G0.)
(T1 D=12.7 CR=0. - ZMIN=-20.5 - flat end mill)
(T9 D=76.2 CR=0. - ZMIN=-0.5 - face mill)
N10 G90 G94 G17
N15 G21
N20 G53 G0 Z0.

(Face1)
N25 T9 M6
(FACE MILL 10 INSERTS)
N30 S2200 M3
N35 G54
N40 M8
N45 G1 X146.512 Y-73.147 F650.
N50 G0 G43 Z15. H9
N55 T1
N60 G0 Z7.12
N65 G18 G3 X138.892 Z-0.5 I-7.62 K0. F1000.
N70 G1 X135.11
N75 X-38.11 F1350.
N80 G17 G2 Y-36.728 I0. J18.21
N85 G1 X135.11
N90 G18 G2 X142.73 Z7.12 I0. K7.62 F1000.
N95 G0 Z15.
N100 M9
N105 M5
N110 G53 G0 Z0.

(2D Pocket2)
N115 M1
N120 T1 M6
(END MILL 1/2" - 12.7 mm)
N125 S3669 M3
N130 G54
N135 M8
N140 G17
N145 G1 X22.745 Y-81.252 F650.
N150 G0 G43 Z15. H1
N155 T9
N160 G0 Z5.
N165 G1 Z-0.73 F250.
N170 G19 G3 Y-79.982 Z-2. J1.27 K0. F600.
N175 G1 Y-77.238
N180 Y5.248 F876.
N185 G17 G3 X22.255 Y5.237 I-0.245 J0.
N190 G1 Y-77.249
N195 G3 X22.89 Y-77.884 I0.635 J0.
N200 G1 X23.31
N205 G3 X23.945 Y-77.249 I0. J0.635
N210 G1 Y5.237
N215 G3 X23.314 Y5.872 I-0.635 J0.
N220 G1 X21.694 Y5.883
N225 G3 X21.055 Y5.248 I-0.004 J-0.635
N230 G1 Y-77.238
N235 G3 X21.688 Y-77.873 I0.635 J0.
N240 G1 X24.513 Y-77.882
N245 G3 X25.15 Y-77.247 I0.002 J0.635
N250 G1 Y-1.
N255 Y5.244
N260 G3 X24.515 Y5.879 I-0.635 J0.
N265 G1 X20.485 Y5.882
N270 G3 X19.85 Y5.247 I0. J-0.635
N275 G1 Y-71.
N280 Y-77.244
N285 G3 X19.951 Y-77.588 I0.635 J0.
N290 G1 X21.576 Y-80.113
N295 G3 X22.745 Y-79.769 I0.534 J0.344
N300 G19 G2 Y-78.528 Z-3. J0. K-1.27 F600.
N305 G3 Y-77.287 Z-4. J1.241 K0.27
N310 G1 Y-77.238
N315 Y5.248 F876.
N320 G17 G3 X22.255 Y5.237 I-0.245 J0.
N325 G1 Y-77.249
N330 G3 X22.89 Y-77.884 I0.635 J0.
N335 G1 X23.31
N340 G3 X23.945 Y-77.249 I0. J0.635
N345 G1 Y5.237
N350 G3 X23.314 Y5.872 I-0.635 J0.
N355 G1 X21.694 Y5.883
N360 G3 X21.055 Y5.248 I-0.004 J-0.635
N365 G1 Y-77.238
N370 G3 X21.688 Y-77.873 I0.635 J0.
N375 G1 X24.513 Y-77.882
N380 G3 X25.15 Y-77.247 I0.002 J0.635
N385 G1 Y-1.
N390 Y5.244
N395 G3 X24.515 Y5.879 I-0.635 J0.
N400 G1 X20.485 Y5.882
N405 G3 X19.85 Y5.247 I0. J-0.635
N410 G1 Y-71.
N415 Y-77.244
N420 G3 X19.951 Y-77.588 I0.635 J0.
N425 G1 X21.576 Y-80.113
N430 G3 X22.745 Y-79.769 I0.534 J0.344
N435 G19 G2 Y-78.528 Z-5. J0. K-1.27 F600.
N440 G3 Y-77.287 Z-6. J1.241 K0.27
N445 G1 Y-77.238
N450 Y5.248 F876.
N455 G17 G3 X22.255 Y5.237 I-0.245 J0.
N460 G1 Y-77.249
N465 G3 X22.89 Y-77.884 I0.635 J0.
N470 G1 X23.31
N475 G3 X23.945 Y-77.249 I0. J0.635
N480 G1 Y5.237
N485 G3 X23.314 Y5.872 I-0.635 J0.
N490 G1 X21.694 Y5.883
N495 G3 X21.055 Y5.248 I-0.004 J-0.635
N500 G1 Y-77.238
N505 G3 X21.688 Y-77.873 I0.635 J0.
N510 G1 X24.513 Y-77.882
N515 G3 X25.15 Y-77.247 I0.002 J0.635
N520 G1 Y-1.
N525 Y5.244
N530 G3 X24.515 Y5.879 I-0.635 J0.
N535 G1 X20.485 Y5.882
N540 G3 X19.85 Y5.247 I0. J-0.635
N545 G1 Y-71.
N550 Y-77.244
N555 G3 X19.951 Y-77.588 I0.635 J0.
N560 G1 X21.576 Y-80.113
N565 G3 X22.745 Y-79.769 I0.534 J0.344
N570 G19 G2 Y-78.528 Z-7. J0. K-1.27 F600.
N575 G3 Y-77.287 Z-8. J1.241 K0.27
N580 G1 Y-77.238
N585 Y5.248 F876.
N590 G17 G3 X22.255 Y5.237 I-0.245 J0.
N595 G1 Y-77.249
N600 G3 X22.89 Y-77.884 I0.635 J0.
N605 G1 X23.31
N610 G3 X23.945 Y-77.249 I0. J0.635
N615 G1 Y5.237
N620 G3 X23.314 Y5.872 I-0.635 J0.
N625 G1 X21.694 Y5.883
N630 G3 X21.055 Y5.248 I-0.004 J-0.635
N635 G1 Y-77.238
N640 G3 X21.688 Y-77.873 I0.635 J0.
N645 G1 X24.513 Y-77.882
N650 G3 X25.15 Y-77.247 I0.002 J0.635
N655 G1 Y-1.
N660 Y5.244
N665 G3 X24.515 Y5.879 I-0.635 J0.
N670 G1 X20.485 Y5.882
N675 G3 X19.85 Y5.247 I0. J-0.635
N680 G1 Y-71.
N685 Y-77.244
N690 G3 X19.951 Y-77.588 I0.635 J0.
N695 G1 X21.576 Y-80.113
N700 G3 X22.745 Y-79.769 I0.534 J0.344
N705 G19 G2 Y-78.528 Z-9. J0. K-1.27 F600.
N710 G3 Y-77.287 Z-10. J1.241 K0.27
N715 G1 Y-77.238
N720 Y5.248 F876.
N725 G17 G3 X22.255 Y5.237 I-0.245 J0.
N730 G1 Y-77.249
N735 G3 X22.89 Y-77.884 I0.635 J0.
N740 G1 X23.31
N745 G3 X23.945 Y-77.249 I0. J0.635
N750 G1 Y5.237
N755 G3 X23.314 Y5.872 I-0.635 J0.
N760 G1 X21.694 Y5.883
N765 G3 X21.055 Y5.248 I-0.004 J-0.635
N770 G1 Y-77.238
N775 G3 X21.688 Y-77.873 I0.635 J0.
N780 G1 X24.513 Y-77.882
N785 G3 X25.15 Y-77.247 I0.002 J0.635
N790 G1 Y-1.
N795 Y5.244
N800 G3 X24.515 Y5.879 I-0.635 J0.
N805 G1 X20.485 Y5.882
N810 G3 X19.85 Y5.247 I0. J-0.635
N815 G1 Y-71.
N820 Y-77.244
N825 X19.854 Y-77.344 F600.
N830 X19.866 Y-77.443
N835 X20.269 Y-79.99
N840 X20.291 Y-80.131 Z-9.992
N845 X20.313 Y-80.27 Z-9.968
N850 X20.335 Y-80.405 Z-9.929
N855 X20.355 Y-80.535 Z-9.874
N860 X20.375 Y-80.658 Z-9.805
N865 X20.393 Y-80.773 Z-9.723
N870 X20.41 Y-80.877 Z-9.628
N875 X20.425 Y-80.971 Z-9.522
N880 X20.437 Y-81.053 Z-9.406
N885 X20.448 Y-81.121 Z-9.281
N890 X20.457 Y-81.174 Z-9.149
N895 X20.463 Y-81.213 Z-9.013
N900 X20.467 Y-81.237 Z-8.872
N905 X20.468 Y-81.245 Z-8.73
N910 G0 Z15.
N915 G1 X75.337 Y-81.253 F650.
N920 G0 Z5.
N925 G1 Z-0.73 F250.
N930 Y-81.245 Z-0.872 F600.
N935 Y-81.221 Z-1.013
N940 Y-81.182 Z-1.149
N945 Y-81.127 Z-1.281
N950 Y-81.058 Z-1.406
N955 Y-80.976 Z-1.522
N960 Y-80.881 Z-1.628
N965 X75.336 Y-80.775 Z-1.723
N970 Y-80.659 Z-1.805
N975 Y-80.534 Z-1.874
N980 Y-80.402 Z-1.929
N985 Y-80.266 Z-1.968
N990 Y-80.125 Z-1.992
N995 Y-79.983 Z-2.
N1000 X75.335 Y-77.239
N1005 X75.31 Y-1. F876.
N1010 X75.314 Y5.244
N1015 G3 X74.255 Y5.242 I-0.53 J0.
N1020 G1 Y5.239
N1025 Y-77.247
N1030 G3 X74.891 Y-77.882 I0.635 J0.
N1035 G1 X75.921 Y-77.881
N1040 G3 X76.555 Y-77.246 I-0.001 J0.635
N1045 G1 Y5.24
N1050 G3 X75.922 Y5.875 I-0.635 J0.
N1055 G1 X73.692 Y5.881
N1060 G3 X73.055 Y5.246 I-0.002 J-0.635
N1065 G1 Y-77.24
N1070 G3 X73.689 Y-77.875 I0.635 J0.
N1075 G1 X77.124 Y-77.88
N1080 G3 X77.76 Y-77.245 I0.001 J0.635
N1085 G1 Y-1.
N1090 Y5.244
N1095 G3 X77.125 Y5.879 I-0.635 J0.
N1100 G1 X72.485
N1105 G3 X71.85 Y5.244 I0. J-0.635
N1110 G1 Y-71.
N1115 Y-77.244
N1120 G3 X72.008 Y-77.663 I0.635 J0.
N1125 G1 X74.224 Y-80.189
N1130 G3 X75.336 Y-79.77 I0.477 J0.419
N1135 G1 Y-79.638 Z-2.007 F600.
N1140 Y-79.507 Z-2.028
N1145 Y-79.379 Z-2.062
N1150 Y-79.256 Z-2.109
N1155 Y-79.137 Z-2.169
N1160 Y-79.026 Z-2.241
N1165 Y-78.923 Z-2.324
N1170 Y-78.829 Z-2.417
N1175 Y-78.745 Z-2.52
N1180 Y-78.673 Z-2.631
N1185 Y-78.612 Z-2.749
N1190 Y-78.564 Z-2.872
N1195 Y-78.529 Z-3.
N1200 Y-78.495 Z-3.128
N1205 Y-78.447 Z-3.251
N1210 Y-78.386 Z-3.369
N1215 Y-78.313 Z-3.48
N1220 Y-78.23 Z-3.583
N1225 Y-78.136 Z-3.676
N1230 Y-78.033 Z-3.759
N1235 Y-77.921 Z-3.831
N1240 X75.335 Y-77.803 Z-3.891
N1245 Y-77.68 Z-3.938
N1250 Y-77.552 Z-3.972
N1255 Y-77.421 Z-3.993
N1260 Y-77.288 Z-4.
N1265 Y-77.239
N1270 X75.31 Y-1. F876.
N1275 X75.314 Y5.244
N1280 G3 X74.255 Y5.242 I-0.53 J0.
N1285 G1 Y5.239
N1290 Y-77.247
N1295 G3 X74.891 Y-77.882 I0.635 J0.
N1300 G1 X75.921 Y-77.881
N1305 G3 X76.555 Y-77.246 I-0.001 J0.635
N1310 G1 Y5.24
N1315 G3 X75.922 Y5.875 I-0.635 J0.
N1320 G1 X73.692 Y5.881
N1325 G3 X73.055 Y5.246 I-0.002 J-0.635
N1330 G1 Y-77.24
N1335 G3 X73.689 Y-77.875 I0.635 J0.
N1340 G1 X77.124 Y-77.88
N1345 G3 X77.76 Y-77.245 I0.001 J0.635
N1350 G1 Y-1.
N1355 Y5.244
N1360 G3 X77.125 Y5.879 I-0.635 J0.
N1365 G1 X72.485
N1370 G3 X71.85 Y5.244 I0. J-0.635
N1375 G1 Y-71.
N1380 Y-77.244
N1385 G3 X72.008 Y-77.663 I0.635 J0.
N1390 G1 X74.224 Y-80.189
N1395 G3 X75.336 Y-79.77 I0.477 J0.419
N1400 G1 Y-79.638 Z-4.007 F600.
N1405 Y-79.507 Z-4.028
N1410 Y-79.379 Z-4.062
N1415 Y-79.256 Z-4.109
N1420 Y-79.137 Z-4.169
N1425 Y-79.026 Z-4.241
N1430 Y-78.923 Z-4.324
N1435 Y-78.829 Z-4.417
N1440 Y-78.745 Z-4.52
N1445 Y-78.673 Z-4.631
N1450 Y-78.612 Z-4.749
N1455 Y-78.564 Z-4.872
N1460 Y-78.529 Z-5.
N1465 Y-78.495 Z-5.128
N1470 Y-78.447 Z-5.251
N1475 Y-78.386 Z-5.369
N1480 Y-78.313 Z-5.48
N1485 Y-78.23 Z-5.583
N1490 Y-78.136 Z-5.676
N1495 Y-78.033 Z-5.759
N1500 Y-77.921 Z-5.831
N1505 X75.335 Y-77.803 Z-5.891
N1510 Y-77.68 Z-5.938
N1515 Y-77.552 Z-5.972
N1520 Y-77.421 Z-5.993
N1525 Y-77.288 Z-6.
N1530 Y-77.239
N1535 X75.31 Y-1. F876.
N1540 X75.314 Y5.244
N1545 G3 X74.255 Y5.242 I-0.53 J0.
N1550 G1 Y5.239
N1555 Y-77.247
N1560 G3 X74.891 Y-77.882 I0.635 J0.
N1565 G1 X75.921 Y-77.881
N1570 G3 X76.555 Y-77.246 I-0.001 J0.635
N1575 G1 Y5.24
N1580 G3 X75.922 Y5.875 I-0.635 J0.
N1585 G1 X73.692 Y5.881
N1590 G3 X73.055 Y5.246 I-0.002 J-0.635
N1595 G1 Y-77.24
N1600 G3 X73.689 Y-77.875 I0.635 J0.
N1605 G1 X77.124 Y-77.88
N1610 G3 X77.76 Y-77.245 I0.001 J0.635
N1615 G1 Y-1.
N1620 Y5.244
N1625 G3 X77.125 Y5.879 I-0.635 J0.
N1630 G1 X72.485
N1635 G3 X71.85 Y5.244 I0. J-0.635
N1640 G1 Y-71.
N1645 Y-77.244
N1650 G3 X72.008 Y-77.663 I0.635 J0.
N1655 G1 X74.224 Y-80.189
N1660 G3 X75.336 Y-79.77 I0.477 J0.419
N1665 G1 Y-79.638 Z-6.007 F600.
N1670 Y-79.507 Z-6.028
N1675 Y-79.379 Z-6.062
N1680 Y-79.256 Z-6.109
N1685 Y-79.137 Z-6.169
N1690 Y-79.026 Z-6.241
N1695 Y-78.923 Z-6.324
N1700 Y-78.829 Z-6.417
N1705 Y-78.745 Z-6.52
N1710 Y-78.673 Z-6.631
N1715 Y-78.612 Z-6.749
N1720 Y-78.564 Z-6.872
N1725 Y-78.529 Z-7.
N1730 Y-78.495 Z-7.128
N1735 Y-78.447 Z-7.251
N1740 Y-78.386 Z-7.369
N1745 Y-78.313 Z-7.48
N1750 Y-78.23 Z-7.583
N1755 Y-78.136 Z-7.676
N1760 Y-78.033 Z-7.759
N1765 Y-77.921 Z-7.831
N1770 X75.335 Y-77.803 Z-7.891
N1775 Y-77.68 Z-7.938
N1780 Y-77.552 Z-7.972
N1785 Y-77.421 Z-7.993
N1790 Y-77.288 Z-8.
N1795 Y-77.239
N1800 X75.31 Y-1. F876.
N1805 X75.314 Y5.244
N1810 G3 X74.255 Y5.242 I-0.53 J0.
N1815 G1 Y5.239
N1820 Y-77.247
N1825 G3 X74.891 Y-77.882 I0.635 J0.
N1830 G1 X75.921 Y-77.881
N1835 G3 X76.555 Y-77.246 I-0.001 J0.635
N1840 G1 Y5.24
N1845 G3 X75.922 Y5.875 I-0.635 J0.
N1850 G1 X73.692 Y5.881
N1855 G3 X73.055 Y5.246 I-0.002 J-0.635
N1860 G1 Y-77.24
N1865 G3 X73.689 Y-77.875 I0.635 J0.
N1870 G1 X77.124 Y-77.88
N1875 G3 X77.76 Y-77.245 I0.001 J0.635
N1880 G1 Y-1.
N1885 Y5.244
N1890 G3 X77.125 Y5.879 I-0.635 J0.
N1895 G1 X72.485
N1900 G3 X71.85 Y5.244 I0. J-0.635
N1905 G1 Y-71.
N1910 Y-77.244
N1915 G3 X72.008 Y-77.663 I0.635 J0.
N1920 G1 X74.224 Y-80.189
N1925 G3 X75.336 Y-79.77 I0.477 J0.419
N1930 G1 Y-79.638 Z-8.007 F600.
N1935 Y-79.507 Z-8.028
N1940 Y-79.379 Z-8.062
N1945 Y-79.256 Z-8.109
N1950 Y-79.137 Z-8.169
N1955 Y-79.026 Z-8.241
N1960 Y-78.923 Z-8.324
N1965 Y-78.829 Z-8.417
N1970 Y-78.745 Z-8.52
N1975 Y-78.673 Z-8.631
N1980 Y-78.612 Z-8.749
N1985 Y-78.564 Z-8.872
N1990 Y-78.529 Z-9.
N1995 Y-78.495 Z-9.128
N2000 Y-78.447 Z-9.251
N2005 Y-78.386 Z-9.369
N2010 Y-78.313 Z-9.48
N2015 Y-78.23 Z-9.583
N2020 Y-78.136 Z-9.676
N2025 Y-78.033 Z-9.759
N2030 Y-77.921 Z-9.831
N2035 X75.335 Y-77.803 Z-9.891
N2040 Y-77.68 Z-9.938
N2045 Y-77.552 Z-9.972
N2050 Y-77.421 Z-9.993
N2055 Y-77.288 Z-10.
N2060 Y-77.239
N2065 X75.31 Y-1. F876.
N2070 X75.314 Y5.244
N2075 G3 X74.255 Y5.242 I-0.53 J0.
N2080 G1 Y5.239
N2085 Y-77.247
N2090 G3 X74.891 Y-77.882 I0.635 J0.
N2095 G1 X75.921 Y-77.881
N2100 G3 X76.555 Y-77.246 I-0.001 J0.635
N2105 G1 Y5.24
N2110 G3 X75.922 Y5.875 I-0.635 J0.
N2115 G1 X73.692 Y5.881
N2120 G3 X73.055 Y5.246 I-0.002 J-0.635
N2125 G1 Y-77.24
N2130 G3 X73.689 Y-77.875 I0.635 J0.
N2135 G1 X77.124 Y-77.88
N2140 G3 X77.76 Y-77.245 I0.001 J0.635
N2145 G1 Y-1.
N2150 Y5.244
N2155 G3 X77.125 Y5.879 I-0.635 J0.
N2160 G1 X72.485
N2165 G3 X71.85 Y5.244 I0. J-0.635
N2170 G1 Y-71.
N2175 Y-77.244
N2180 X71.854 Y-77.344 F600.
N2185 X71.866 Y-77.443
N2190 X72.269 Y-79.99
N2195 X72.291 Y-80.131 Z-9.992
N2200 X72.313 Y-80.27 Z-9.968
N2205 X72.335 Y-80.405 Z-9.929
N2210 X72.355 Y-80.535 Z-9.874
N2215 X72.375 Y-80.658 Z-9.805
N2220 X72.393 Y-80.773 Z-9.723
N2225 X72.41 Y-80.877 Z-9.628
N2230 X72.425 Y-80.971 Z-9.522
N2235 X72.437 Y-81.053 Z-9.406
N2240 X72.448 Y-81.121 Z-9.281
N2245 X72.457 Y-81.174 Z-9.149
N2250 X72.463 Y-81.213 Z-9.013
N2255 X72.467 Y-81.237 Z-8.872
N2260 X72.468 Y-81.245 Z-8.73
N2265 G0 Z15.

(2D Contour3)
N2270 S4400 M3
N2275 G1 X2.36 Y-79.436 F650.
N2280 G0 Z15.
N2285 Z5.
N2290 G1 Z3. F150.
N2295 Z-0.73
N2300 X2.366 Y-79.43 Z-0.872 F800.
N2305 X2.383 Y-79.413 Z-1.013
N2310 X2.411 Y-79.385 Z-1.149
N2315 X2.449 Y-79.347 Z-1.281
N2320 X2.498 Y-79.298 Z-1.406
N2325 X2.556 Y-79.24 Z-1.522
N2330 X2.623 Y-79.173 Z-1.628
N2335 X2.698 Y-79.098 Z-1.723
N2340 X2.781 Y-79.016 Z-1.805
N2345 X2.869 Y-78.927 Z-1.874
N2350 X2.962 Y-78.834 Z-1.929
N2355 X3.058 Y-78.738 Z-1.968
N2360 X3.158 Y-78.638 Z-1.992
N2365 X3.258 Y-78.538 Z-2.
N2370 X4.156 Y-77.64
N2375 G3 Y-75.844 I-0.898 J0.898
N2380 G1 X-3.844 Y-67.844 F1300.
N2385 G3 X-5.64 I-0.898 J-0.898 F800.
N2390 G1 X-6.538 Y-68.742
N2395 X-6.638 Y-68.842 Z-1.992
N2400 X-6.738 Y-68.942 Z-1.968
N2405 X-6.834 Y-69.038 Z-1.929
N2410 X-6.927 Y-69.131 Z-1.874
N2415 X-7.016 Y-69.219 Z-1.805
N2420 X-7.098 Y-69.302 Z-1.723
N2425 X-7.173 Y-69.377 Z-1.628
N2430 X-7.24 Y-69.444 Z-1.522
N2435 X-7.298 Y-69.502 Z-1.406
N2440 X-7.347 Y-69.551 Z-1.281
N2445 X-7.385 Y-69.589 Z-1.149
N2450 X-7.413 Y-69.617 Z-1.013
N2455 X-7.43 Y-69.634 Z-0.872
N2460 X-7.436 Y-69.64 Z-0.73
N2465 G0 Z5.
N2470 G1 X2.36 Y-79.436 F650.
N2475 Z1. F150.
N2480 Z-2.73
N2485 X2.366 Y-79.43 Z-2.872 F800.
N2490 X2.383 Y-79.413 Z-3.013
N2495 X2.411 Y-79.385 Z-3.149
N2500 X2.449 Y-79.347 Z-3.281
N2505 X2.498 Y-79.298 Z-3.406
N2510 X2.556 Y-79.24 Z-3.522
N2515 X2.623 Y-79.173 Z-3.628
N2520 X2.698 Y-79.098 Z-3.723
N2525 X2.781 Y-79.016 Z-3.805
N2530 X2.869 Y-78.927 Z-3.874
N2535 X2.962 Y-78.834 Z-3.929
N2540 X3.058 Y-78.738 Z-3.968
N2545 X3.158 Y-78.638 Z-3.992
N2550 X3.258 Y-78.538 Z-4.
N2555 X4.156 Y-77.64
N2560 G3 Y-75.844 I-0.898 J0.898
N2565 G1 X-3.844 Y-67.844 F1300.
N2570 G3 X-5.64 I-0.898 J-0.898 F800.
N2575 G1 X-6.538 Y-68.742
N2580 X-6.638 Y-68.842 Z-3.992
N2585 X-6.738 Y-68.942 Z-3.968
N2590 X-6.834 Y-69.038 Z-3.929
N2595 X-6.927 Y-69.131 Z-3.874
N2600 X-7.016 Y-69.219 Z-3.805
N2605 X-7.098 Y-69.302 Z-3.723
N2610 X-7.173 Y-69.377 Z-3.628
N2615 X-7.24 Y-69.444 Z-3.522
N2620 X-7.298 Y-69.502 Z-3.406
N2625 X-7.347 Y-69.551 Z-3.281
N2630 X-7.385 Y-69.589 Z-3.149
N2635 X-7.413 Y-69.617 Z-3.013
N2640 X-7.43 Y-69.634 Z-2.872
N2645 X-7.436 Y-69.64 Z-2.73
N2650 G0 Z5.
N2655 G1 X2.36 Y-79.436 F650.
N2660 Z-1. F150.
N2665 Z-4.73
N2670 X2.366 Y-79.43 Z-4.872 F800.
N2675 X2.383 Y-79.413 Z-5.013
N2680 X2.411 Y-79.385 Z-5.149
N2685 X2.449 Y-79.347 Z-5.281
N2690 X2.498 Y-79.298 Z-5.406
N2695 X2.556 Y-79.24 Z-5.522
N2700 X2.623 Y-79.173 Z-5.628
N2705 X2.698 Y-79.098 Z-5.723
N2710 X2.781 Y-79.016 Z-5.805
N2715 X2.869 Y-78.927 Z-5.874
N2720 X2.962 Y-78.834 Z-5.929
N2725 X3.058 Y-78.738 Z-5.968
N2730 X3.158 Y-78.638 Z-5.992
N2735 X3.258 Y-78.538 Z-6.
N2740 X4.156 Y-77.64
N2745 G3 Y-75.844 I-0.898 J0.898
N2750 G1 X-3.844 Y-67.844 F1300.
N2755 G3 X-5.64 I-0.898 J-0.898 F800.
N2760 G1 X-6.538 Y-68.742
N2765 X-6.638 Y-68.842 Z-5.992
N2770 X-6.738 Y-68.942 Z-5.968
N2775 X-6.834 Y-69.038 Z-5.929
N2780 X-6.927 Y-69.131 Z-5.874
N2785 X-7.016 Y-69.219 Z-5.805
N2790 X-7.098 Y-69.302 Z-5.723
N2795 X-7.173 Y-69.377 Z-5.628
N2800 X-7.24 Y-69.444 Z-5.522
N2805 X-7.298 Y-69.502 Z-5.406
N2810 X-7.347 Y-69.551 Z-5.281
N2815 X-7.385 Y-69.589 Z-5.149
N2820 X-7.413 Y-69.617 Z-5.013
N2825 X-7.43 Y-69.634 Z-4.872
N2830 X-7.436 Y-69.64 Z-4.73
N2835 G0 Z5.
N2840 G1 X2.36 Y-79.436 F650.
N2845 Z-3. F150.
N2850 Z-6.73
N2855 X2.366 Y-79.43 Z-6.872 F800.
N2860 X2.383 Y-79.413 Z-7.013
N2865 X2.411 Y-79.385 Z-7.149
N2870 X2.449 Y-79.347 Z-7.281
N2875 X2.498 Y-79.298 Z-7.406
N2880 X2.556 Y-79.24 Z-7.522
N2885 X2.623 Y-79.173 Z-7.628
N2890 X2.698 Y-79.098 Z-7.723
N2895 X2.781 Y-79.016 Z-7.805
N2900 X2.869 Y-78.927 Z-7.874
N2905 X2.962 Y-78.834 Z-7.929
N2910 X3.058 Y-78.738 Z-7.968
N2915 X3.158 Y-78.638 Z-7.992
N2920 X3.258 Y-78.538 Z-8.
N2925 X4.156 Y-77.64
N2930 G3 Y-75.844 I-0.898 J0.898
N2935 G1 X-3.844 Y-67.844 F1300.
N2940 G3 X-5.64 I-0.898 J-0.898 F800.
N2945 G1 X-6.538 Y-68.742
N2950 X-6.638 Y-68.842 Z-7.992
N2955 X-6.738 Y-68.942 Z-7.968
N2960 X-6.834 Y-69.038 Z-7.929
N2965 X-6.927 Y-69.131 Z-7.874
N2970 X-7.016 Y-69.219 Z-7.805
N2975 X-7.098 Y-69.302 Z-7.723
N2980 X-7.173 Y-69.377 Z-7.628
N2985 X-7.24 Y-69.444 Z-7.522
N2990 X-7.298 Y-69.502 Z-7.406
N2995 X-7.347 Y-69.551 Z-7.281
N3000 X-7.385 Y-69.589 Z-7.149
N3005 X-7.413 Y-69.617 Z-7.013
N3010 X-7.43 Y-69.634 Z-6.872
N3015 X-7.436 Y-69.64 Z-6.73
N3020 G0 Z5.
N3025 G1 X2.36 Y-79.436 F650.
N3030 Z-5. F150.
N3035 Z-8.73
N3040 X2.366 Y-79.43 Z-8.872 F800.
N3045 X2.383 Y-79.413 Z-9.013
N3050 X2.411 Y-79.385 Z-9.149
N3055 X2.449 Y-79.347 Z-9.281
N3060 X2.498 Y-79.298 Z-9.406
N3065 X2.556 Y-79.24 Z-9.522
N3070 X2.623 Y-79.173 Z-9.628
N3075 X2.698 Y-79.098 Z-9.723
N3080 X2.781 Y-79.016 Z-9.805
N3085 X2.869 Y-78.927 Z-9.874
N3090 X2.962 Y-78.834 Z-9.929
N3095 X3.058 Y-78.738 Z-9.968
N3100 X3.158 Y-78.638 Z-9.992
N3105 X3.258 Y-78.538 Z-10.
N3110 X4.156 Y-77.64
N3115 G3 Y-75.844 I-0.898 J0.898
N3120 G1 X-3.844 Y-67.844 F1300.
N3125 G3 X-5.64 I-0.898 J-0.898 F800.
N3130 G1 X-6.538 Y-68.742
N3135 X-6.638 Y-68.842 Z-9.992
N3140 X-6.738 Y-68.942 Z-9.968
N3145 X-6.834 Y-69.038 Z-9.929
N3150 X-6.927 Y-69.131 Z-9.874
N3155 X-7.016 Y-69.219 Z-9.805
N3160 X-7.098 Y-69.302 Z-9.723
N3165 X-7.173 Y-69.377 Z-9.628
N3170 X-7.24 Y-69.444 Z-9.522
N3175 X-7.298 Y-69.502 Z-9.406
N3180 X-7.347 Y-69.551 Z-9.281
N3185 X-7.385 Y-69.589 Z-9.149
N3190 X-7.413 Y-69.617 Z-9.013
N3195 X-7.43 Y-69.634 Z-8.872
N3200 X-7.436 Y-69.64 Z-8.73
N3205 G0 Z5.
N3210 Y-2.36
N3215 G1 Z3. F150.
N3220 Z-0.73
N3225 X-7.43 Y-2.366 Z-0.872 F800.
N3230 X-7.413 Y-2.383 Z-1.013
N3235 X-7.385 Y-2.411 Z-1.149
N3240 X-7.347 Y-2.449 Z-1.281
N3245 X-7.298 Y-2.498 Z-1.406
N3250 X-7.24 Y-2.556 Z-1.522
N3255 X-7.173 Y-2.623 Z-1.628
N3260 X-7.098 Y-2.698 Z-1.723
N3265 X-7.016 Y-2.781 Z-1.805
N3270 X-6.927 Y-2.869 Z-1.874
N3275 X-6.834 Y-2.962 Z-1.929
N3280 X-6.738 Y-3.058 Z-1.968
N3285 X-6.638 Y-3.158 Z-1.992
N3290 X-6.538 Y-3.258 Z-2.
N3295 X-5.64 Y-4.156
N3300 G3 X-3.844 I0.898 J0.898
N3305 G1 X4.156 Y3.844 F1300.
N3310 G3 Y5.64 I-0.898 J0.898 F800.
N3315 G1 X3.258 Y6.538
N3320 X3.158 Y6.638 Z-1.992
N3325 X3.058 Y6.738 Z-1.968
N3330 X2.962 Y6.834 Z-1.929
N3335 X2.869 Y6.927 Z-1.874
N3340 X2.781 Y7.016 Z-1.805
N3345 X2.698 Y7.098 Z-1.723
N3350 X2.623 Y7.173 Z-1.628
N3355 X2.556 Y7.24 Z-1.522
N3360 X2.498 Y7.298 Z-1.406
N3365 X2.449 Y7.347 Z-1.281
N3370 X2.411 Y7.385 Z-1.149
N3375 X2.383 Y7.413 Z-1.013
N3380 X2.366 Y7.43 Z-0.872
N3385 X2.36 Y7.436 Z-0.73
N3390 G0 Z5.
N3395 G1 X-7.436 Y-2.36 F650.
N3400 Z1. F150.
N3405 Z-2.73
N3410 X-7.43 Y-2.366 Z-2.872 F800.
N3415 X-7.413 Y-2.383 Z-3.013
N3420 X-7.385 Y-2.411 Z-3.149
N3425 X-7.347 Y-2.449 Z-3.281
N3430 X-7.298 Y-2.498 Z-3.406
N3435 X-7.24 Y-2.556 Z-3.522
N3440 X-7.173 Y-2.623 Z-3.628
N3445 X-7.098 Y-2.698 Z-3.723
N3450 X-7.016 Y-2.781 Z-3.805
N3455 X-6.927 Y-2.869 Z-3.874
N3460 X-6.834 Y-2.962 Z-3.929
N3465 X-6.738 Y-3.058 Z-3.968
N3470 X-6.638 Y-3.158 Z-3.992
N3475 X-6.538 Y-3.258 Z-4.
N3480 X-5.64 Y-4.156
N3485 G3 X-3.844 I0.898 J0.898
N3490 G1 X4.156 Y3.844 F1300.
N3495 G3 Y5.64 I-0.898 J0.898 F800.
N3500 G1 X3.258 Y6.538
N3505 X3.158 Y6.638 Z-3.992
N3510 X3.058 Y6.738 Z-3.968
N3515 X2.962 Y6.834 Z-3.929
N3520 X2.869 Y6.927 Z-3.874
N3525 X2.781 Y7.016 Z-3.805
N3530 X2.698 Y7.098 Z-3.723
N3535 X2.623 Y7.173 Z-3.628
N3540 X2.556 Y7.24 Z-3.522
N3545 X2.498 Y7.298 Z-3.406
N3550 X2.449 Y7.347 Z-3.281
N3555 X2.411 Y7.385 Z-3.149
N3560 X2.383 Y7.413 Z-3.013
N3565 X2.366 Y7.43 Z-2.872
N3570 X2.36 Y7.436 Z-2.73
N3575 G0 Z5.
N3580 G1 X-7.436 Y-2.36 F650.
N3585 Z-1. F150.
N3590 Z-4.73
N3595 X-7.43 Y-2.366 Z-4.872 F800.
N3600 X-7.413 Y-2.383 Z-5.013
N3605 X-7.385 Y-2.411 Z-5.149
N3610 X-7.347 Y-2.449 Z-5.281
N3615 X-7.298 Y-2.498 Z-5.406
N3620 X-7.24 Y-2.556 Z-5.522
N3625 X-7.173 Y-2.623 Z-5.628
N3630 X-7.098 Y-2.698 Z-5.723
N3635 X-7.016 Y-2.781 Z-5.805
N3640 X-6.927 Y-2.869 Z-5.874
N3645 X-6.834 Y-2.962 Z-5.929
N3650 X-6.738 Y-3.058 Z-5.968
N3655 X-6.638 Y-3.158 Z-5.992
N3660 X-6.538 Y-3.258 Z-6.
N3665 X-5.64 Y-4.156
N3670 G3 X-3.844 I0.898 J0.898
N3675 G1 X4.156 Y3.844 F1300.
N3680 G3 Y5.64 I-0.898 J0.898 F800.
N3685 G1 X3.258 Y6.538
N3690 X3.158 Y6.638 Z-5.992
N3695 X3.058 Y6.738 Z-5.968
N3700 X2.962 Y6.834 Z-5.929
N3705 X2.869 Y6.927 Z-5.874
N3710 X2.781 Y7.016 Z-5.805
N3715 X2.698 Y7.098 Z-5.723
N3720 X2.623 Y7.173 Z-5.628
N3725 X2.556 Y7.24 Z-5.522
N3730 X2.498 Y7.298 Z-5.406
N3735 X2.449 Y7.347 Z-5.281
N3740 X2.411 Y7.385 Z-5.149
N3745 X2.383 Y7.413 Z-5.013
N3750 X2.366 Y7.43 Z-4.872
N3755 X2.36 Y7.436 Z-4.73
N3760 G0 Z5.
N3765 G1 X-7.436 Y-2.36 F650.
N3770 Z-3. F150.
N3775 Z-6.73
N3780 X-7.43 Y-2.366 Z-6.872 F800.
N3785 X-7.413 Y-2.383 Z-7.013
N3790 X-7.385 Y-2.411 Z-7.149
N3795 X-7.347 Y-2.449 Z-7.281
N3800 X-7.298 Y-2.498 Z-7.406
N3805 X-7.24 Y-2.556 Z-7.522
N3810 X-7.173 Y-2.623 Z-7.628
N3815 X-7.098 Y-2.698 Z-7.723
N3820 X-7.016 Y-2.781 Z-7.805
N3825 X-6.927 Y-2.869 Z-7.874
N3830 X-6.834 Y-2.962 Z-7.929
N3835 X-6.738 Y-3.058 Z-7.968
N3840 X-6.638 Y-3.158 Z-7.992
N3845 X-6.538 Y-3.258 Z-8.
N3850 X-5.64 Y-4.156
N3855 G3 X-3.844 I0.898 J0.898
N3860 G1 X4.156 Y3.844 F1300.
N3865 G3 Y5.64 I-0.898 J0.898 F800.
N3870 G1 X3.258 Y6.538
N3875 X3.158 Y6.638 Z-7.992
N3880 X3.058 Y6.738 Z-7.968
N3885 X2.962 Y6.834 Z-7.929
N3890 X2.869 Y6.927 Z-7.874
N3895 X2.781 Y7.016 Z-7.805
N3900 X2.698 Y7.098 Z-7.723
N3905 X2.623 Y7.173 Z-7.628
N3910 X2.556 Y7.24 Z-7.522
N3915 X2.498 Y7.298 Z-7.406
N3920 X2.449 Y7.347 Z-7.281
N3925 X2.411 Y7.385 Z-7.149
N3930 X2.383 Y7.413 Z-7.013
N3935 X2.366 Y7.43 Z-6.872
N3940 X2.36 Y7.436 Z-6.73
N3945 G0 Z5.
N3950 G1 X-7.436 Y-2.36 F650.
N3955 Z-5. F150.
N3960 Z-8.73
N3965 X-7.43 Y-2.366 Z-8.872 F800.
N3970 X-7.413 Y-2.383 Z-9.013
N3975 X-7.385 Y-2.411 Z-9.149
N3980 X-7.347 Y-2.449 Z-9.281
N3985 X-7.298 Y-2.498 Z-9.406
N3990 X-7.24 Y-2.556 Z-9.522
N3995 X-7.173 Y-2.623 Z-9.628
N4000 X-7.098 Y-2.698 Z-9.723
N4005 X-7.016 Y-2.781 Z-9.805
N4010 X-6.927 Y-2.869 Z-9.874
N4015 X-6.834 Y-2.962 Z-9.929
N4020 X-6.738 Y-3.058 Z-9.968
N4025 X-6.638 Y-3.158 Z-9.992
N4030 X-6.538 Y-3.258 Z-10.
N4035 X-5.64 Y-4.156
N4040 G3 X-3.844 I0.898 J0.898
N4045 G1 X4.156 Y3.844 F1300.
N4050 G3 Y5.64 I-0.898 J0.898 F800.
N4055 G1 X3.258 Y6.538
N4060 X3.158 Y6.638 Z-9.992
N4065 X3.058 Y6.738 Z-9.968
N4070 X2.962 Y6.834 Z-9.929
N4075 X2.869 Y6.927 Z-9.874
N4080 X2.781 Y7.016 Z-9.805
N4085 X2.698 Y7.098 Z-9.723
N4090 X2.623 Y7.173 Z-9.628
N4095 X2.556 Y7.24 Z-9.522
N4100 X2.498 Y7.298 Z-9.406
N4105 X2.449 Y7.347 Z-9.281
N4110 X2.411 Y7.385 Z-9.149
N4115 X2.383 Y7.413 Z-9.013
N4120 X2.366 Y7.43 Z-8.872
N4125 X2.36 Y7.436 Z-8.73
N4130 G0 Z5.
N4135 X94.64
N4140 G1 Z3. F150.
N4145 Z-0.73
N4150 X94.634 Y7.43 Z-0.872 F800.
N4155 X94.617 Y7.413 Z-1.013
N4160 X94.589 Y7.385 Z-1.149
N4165 X94.551 Y7.347 Z-1.281
N4170 X94.502 Y7.298 Z-1.406
N4175 X94.444 Y7.24 Z-1.522
N4180 X94.377 Y7.173 Z-1.628
N4185 X94.302 Y7.098 Z-1.723
N4190 X94.219 Y7.016 Z-1.805
N4195 X94.131 Y6.927 Z-1.874
N4200 X94.038 Y6.834 Z-1.929
N4205 X93.942 Y6.738 Z-1.968
N4210 X93.842 Y6.638 Z-1.992
N4215 X93.742 Y6.538 Z-2.
N4220 X92.844 Y5.64
N4225 G3 Y3.844 I0.898 J-0.898
N4230 G1 X100.844 Y-4.156 F1300.
N4235 G3 X102.64 I0.898 J0.898 F800.
N4240 G1 X103.538 Y-3.258
N4245 X103.638 Y-3.158 Z-1.992
N4250 X103.738 Y-3.058 Z-1.968
N4255 X103.834 Y-2.962 Z-1.929
N4260 X103.927 Y-2.869 Z-1.874
N4265 X104.016 Y-2.781 Z-1.805
N4270 X104.098 Y-2.698 Z-1.723
N4275 X104.173 Y-2.623 Z-1.628
N4280 X104.24 Y-2.556 Z-1.522
N4285 X104.298 Y-2.498 Z-1.406
N4290 X104.347 Y-2.449 Z-1.281
N4295 X104.385 Y-2.411 Z-1.149
N4300 X104.413 Y-2.383 Z-1.013
N4305 X104.43 Y-2.366 Z-0.872
N4310 X104.436 Y-2.36 Z-0.73
N4315 G0 Z5.
N4320 G1 X94.64 Y7.436 F650.
N4325 Z1. F150.
N4330 Z-2.73
N4335 X94.634 Y7.43 Z-2.872 F800.
N4340 X94.617 Y7.413 Z-3.013
N4345 X94.589 Y7.385 Z-3.149
N4350 X94.551 Y7.347 Z-3.281
N4355 X94.502 Y7.298 Z-3.406
N4360 X94.444 Y7.24 Z-3.522
N4365 X94.377 Y7.173 Z-3.628
N4370 X94.302 Y7.098 Z-3.723
N4375 X94.219 Y7.016 Z-3.805
N4380 X94.131 Y6.927 Z-3.874
N4385 X94.038 Y6.834 Z-3.929
N4390 X93.942 Y6.738 Z-3.968
N4395 X93.842 Y6.638 Z-3.992
N4400 X93.742 Y6.538 Z-4.
N4405 X92.844 Y5.64
N4410 G3 Y3.844 I0.898 J-0.898
N4415 G1 X100.844 Y-4.156 F1300.
N4420 G3 X102.64 I0.898 J0.898 F800.
N4425 G1 X103.538 Y-3.258
N4430 X103.638 Y-3.158 Z-3.992
N4435 X103.738 Y-3.058 Z-3.968
N4440 X103.834 Y-2.962 Z-3.929
N4445 X103.927 Y-2.869 Z-3.874
N4450 X104.016 Y-2.781 Z-3.805
N4455 X104.098 Y-2.698 Z-3.723
N4460 X104.173 Y-2.623 Z-3.628
N4465 X104.24 Y-2.556 Z-3.522
N4470 X104.298 Y-2.498 Z-3.406
N4475 X104.347 Y-2.449 Z-3.281
N4480 X104.385 Y-2.411 Z-3.149
N4485 X104.413 Y-2.383 Z-3.013
N4490 X104.43 Y-2.366 Z-2.872
N4495 X104.436 Y-2.36 Z-2.73
N4500 G0 Z5.
N4505 G1 X94.64 Y7.436 F650.
N4510 Z-1. F150.
N4515 Z-4.73
N4520 X94.634 Y7.43 Z-4.872 F800.
N4525 X94.617 Y7.413 Z-5.013
N4530 X94.589 Y7.385 Z-5.149
N4535 X94.551 Y7.347 Z-5.281
N4540 X94.502 Y7.298 Z-5.406
N4545 X94.444 Y7.24 Z-5.522
N4550 X94.377 Y7.173 Z-5.628
N4555 X94.302 Y7.098 Z-5.723
N4560 X94.219 Y7.016 Z-5.805
N4565 X94.131 Y6.927 Z-5.874
N4570 X94.038 Y6.834 Z-5.929
N4575 X93.942 Y6.738 Z-5.968
N4580 X93.842 Y6.638 Z-5.992
N4585 X93.742 Y6.538 Z-6.
N4590 X92.844 Y5.64
N4595 G3 Y3.844 I0.898 J-0.898
N4600 G1 X100.844 Y-4.156 F1300.
N4605 G3 X102.64 I0.898 J0.898 F800.
N4610 G1 X103.538 Y-3.258
N4615 X103.638 Y-3.158 Z-5.992
N4620 X103.738 Y-3.058 Z-5.968
N4625 X103.834 Y-2.962 Z-5.929
N4630 X103.927 Y-2.869 Z-5.874
N4635 X104.016 Y-2.781 Z-5.805
N4640 X104.098 Y-2.698 Z-5.723
N4645 X104.173 Y-2.623 Z-5.628
N4650 X104.24 Y-2.556 Z-5.522
N4655 X104.298 Y-2.498 Z-5.406
N4660 X104.347 Y-2.449 Z-5.281
N4665 X104.385 Y-2.411 Z-5.149
N4670 X104.413 Y-2.383 Z-5.013
N4675 X104.43 Y-2.366 Z-4.872
N4680 X104.436 Y-2.36 Z-4.73
N4685 G0 Z5.
N4690 G1 X94.64 Y7.436 F650.
N4695 Z-3. F150.
N4700 Z-6.73
N4705 X94.634 Y7.43 Z-6.872 F800.
N4710 X94.617 Y7.413 Z-7.013
N4715 X94.589 Y7.385 Z-7.149
N4720 X94.551 Y7.347 Z-7.281
N4725 X94.502 Y7.298 Z-7.406
N4730 X94.444 Y7.24 Z-7.522
N4735 X94.377 Y7.173 Z-7.628
N4740 X94.302 Y7.098 Z-7.723
N4745 X94.219 Y7.016 Z-7.805
N4750 X94.131 Y6.927 Z-7.874
N4755 X94.038 Y6.834 Z-7.929
N4760 X93.942 Y6.738 Z-7.968
N4765 X93.842 Y6.638 Z-7.992
N4770 X93.742 Y6.538 Z-8.
N4775 X92.844 Y5.64
N4780 G3 Y3.844 I0.898 J-0.898
N4785 G1 X100.844 Y-4.156 F1300.
N4790 G3 X102.64 I0.898 J0.898 F800.
N4795 G1 X103.538 Y-3.258
N4800 X103.638 Y-3.158 Z-7.992
N4805 X103.738 Y-3.058 Z-7.968
N4810 X103.834 Y-2.962 Z-7.929
N4815 X103.927 Y-2.869 Z-7.874
N4820 X104.016 Y-2.781 Z-7.805
N4825 X104.098 Y-2.698 Z-7.723
N4830 X104.173 Y-2.623 Z-7.628
N4835 X104.24 Y-2.556 Z-7.522
N4840 X104.298 Y-2.498 Z-7.406
N4845 X104.347 Y-2.449 Z-7.281
N4850 X104.385 Y-2.411 Z-7.149
N4855 X104.413 Y-2.383 Z-7.013
N4860 X104.43 Y-2.366 Z-6.872
N4865 X104.436 Y-2.36 Z-6.73
N4870 G0 Z5.
N4875 G1 X94.64 Y7.436 F650.
N4880 Z-5. F150.
N4885 Z-8.73
N4890 X94.634 Y7.43 Z-8.872 F800.
N4895 X94.617 Y7.413 Z-9.013
N4900 X94.589 Y7.385 Z-9.149
N4905 X94.551 Y7.347 Z-9.281
N4910 X94.502 Y7.298 Z-9.406
N4915 X94.444 Y7.24 Z-9.522
N4920 X94.377 Y7.173 Z-9.628
N4925 X94.302 Y7.098 Z-9.723
N4930 X94.219 Y7.016 Z-9.805
N4935 X94.131 Y6.927 Z-9.874
N4940 X94.038 Y6.834 Z-9.929
N4945 X93.942 Y6.738 Z-9.968
N4950 X93.842 Y6.638 Z-9.992
N4955 X93.742 Y6.538 Z-10.
N4960 X92.844 Y5.64
N4965 G3 Y3.844 I0.898 J-0.898
N4970 G1 X100.844 Y-4.156 F1300.
N4975 G3 X102.64 I0.898 J0.898 F800.
N4980 G1 X103.538 Y-3.258
N4985 X103.638 Y-3.158 Z-9.992
N4990 X103.738 Y-3.058 Z-9.968
N4995 X103.834 Y-2.962 Z-9.929
N5000 X103.927 Y-2.869 Z-9.874
N5005 X104.016 Y-2.781 Z-9.805
N5010 X104.098 Y-2.698 Z-9.723
N5015 X104.173 Y-2.623 Z-9.628
N5020 X104.24 Y-2.556 Z-9.522
N5025 X104.298 Y-2.498 Z-9.406
N5030 X104.347 Y-2.449 Z-9.281
N5035 X104.385 Y-2.411 Z-9.149
N5040 X104.413 Y-2.383 Z-9.013
N5045 X104.43 Y-2.366 Z-8.872
N5050 X104.436 Y-2.36 Z-8.73
N5055 G0 Z5.
N5060 Y-69.64
N5065 G1 Z3. F150.
N5070 Z-0.73
N5075 X104.43 Y-69.634 Z-0.872 F800.
N5080 X104.413 Y-69.617 Z-1.013
N5085 X104.385 Y-69.589 Z-1.149
N5090 X104.347 Y-69.551 Z-1.281
N5095 X104.298 Y-69.502 Z-1.406
N5100 X104.24 Y-69.444 Z-1.522
N5105 X104.173 Y-69.377 Z-1.628
N5110 X104.098 Y-69.302 Z-1.723
N5115 X104.016 Y-69.219 Z-1.805
N5120 X103.927 Y-69.131 Z-1.874
N5125 X103.834 Y-69.038 Z-1.929
N5130 X103.738 Y-68.942 Z-1.968
N5135 X103.638 Y-68.842 Z-1.992
N5140 X103.538 Y-68.742 Z-2.
N5145 X102.64 Y-67.844
N5150 G3 X100.844 I-0.898 J-0.898
N5155 G1 X92.844 Y-75.844 F1300.
N5160 G3 Y-77.64 I0.898 J-0.898 F800.
N5165 G1 X93.742 Y-78.538
N5170 X93.842 Y-78.638 Z-1.992
N5175 X93.942 Y-78.738 Z-1.968
N5180 X94.038 Y-78.834 Z-1.929
N5185 X94.131 Y-78.927 Z-1.874
N5190 X94.219 Y-79.016 Z-1.805
N5195 X94.302 Y-79.098 Z-1.723
N5200 X94.377 Y-79.173 Z-1.628
N5205 X94.444 Y-79.24 Z-1.522
N5210 X94.502 Y-79.298 Z-1.406
N5215 X94.551 Y-79.347 Z-1.281
N5220 X94.589 Y-79.385 Z-1.149
N5225 X94.617 Y-79.413 Z-1.013
N5230 X94.634 Y-79.43 Z-0.872
N5235 X94.64 Y-79.436 Z-0.73
N5240 G0 Z5.
N5245 G1 X104.436 Y-69.64 F650.
N5250 Z1. F150.
N5255 Z-2.73
N5260 X104.43 Y-69.634 Z-2.872 F800.
N5265 X104.413 Y-69.617 Z-3.013
N5270 X104.385 Y-69.589 Z-3.149
N5275 X104.347 Y-69.551 Z-3.281
N5280 X104.298 Y-69.502 Z-3.406
N5285 X104.24 Y-69.444 Z-3.522
N5290 X104.173 Y-69.377 Z-3.628
N5295 X104.098 Y-69.302 Z-3.723
N5300 X104.016 Y-69.219 Z-3.805
N5305 X103.927 Y-69.131 Z-3.874
N5310 X103.834 Y-69.038 Z-3.929
N5315 X103.738 Y-68.942 Z-3.968
N5320 X103.638 Y-68.842 Z-3.992
N5325 X103.538 Y-68.742 Z-4.
N5330 X102.64 Y-67.844
N5335 G3 X100.844 I-0.898 J-0.898
N5340 G1 X92.844 Y-75.844 F1300.
N5345 G3 Y-77.64 I0.898 J-0.898 F800.
N5350 G1 X93.742 Y-78.538
N5355 X93.842 Y-78.638 Z-3.992
N5360 X93.942 Y-78.738 Z-3.968
N5365 X94.038 Y-78.834 Z-3.929
N5370 X94.131 Y-78.927 Z-3.874
N5375 X94.219 Y-79.016 Z-3.805
N5380 X94.302 Y-79.098 Z-3.723
N5385 X94.377 Y-79.173 Z-3.628
N5390 X94.444 Y-79.24 Z-3.522
N5395 X94.502 Y-79.298 Z-3.406
N5400 X94.551 Y-79.347 Z-3.281
N5405 X94.589 Y-79.385 Z-3.149
N5410 X94.617 Y-79.413 Z-3.013
N5415 X94.634 Y-79.43 Z-2.872
N5420 X94.64 Y-79.436 Z-2.73
N5425 G0 Z5.
N5430 G1 X104.436 Y-69.64 F650.
N5435 Z-1. F150.
N5440 Z-4.73
N5445 X104.43 Y-69.634 Z-4.872 F800.
N5450 X104.413 Y-69.617 Z-5.013
N5455 X104.385 Y-69.589 Z-5.149
N5460 X104.347 Y-69.551 Z-5.281
N5465 X104.298 Y-69.502 Z-5.406
N5470 X104.24 Y-69.444 Z-5.522
N5475 X104.173 Y-69.377 Z-5.628
N5480 X104.098 Y-69.302 Z-5.723
N5485 X104.016 Y-69.219 Z-5.805
N5490 X103.927 Y-69.131 Z-5.874
N5495 X103.834 Y-69.038 Z-5.929
N5500 X103.738 Y-68.942 Z-5.968
N5505 X103.638 Y-68.842 Z-5.992
N5510 X103.538 Y-68.742 Z-6.
N5515 X102.64 Y-67.844
N5520 G3 X100.844 I-0.898 J-0.898
N5525 G1 X92.844 Y-75.844 F1300.
N5530 G3 Y-77.64 I0.898 J-0.898 F800.
N5535 G1 X93.742 Y-78.538
N5540 X93.842 Y-78.638 Z-5.992
N5545 X93.942 Y-78.738 Z-5.968
N5550 X94.038 Y-78.834 Z-5.929
N5555 X94.131 Y-78.927 Z-5.874
N5560 X94.219 Y-79.016 Z-5.805
N5565 X94.302 Y-79.098 Z-5.723
N5570 X94.377 Y-79.173 Z-5.628
N5575 X94.444 Y-79.24 Z-5.522
N5580 X94.502 Y-79.298 Z-5.406
N5585 X94.551 Y-79.347 Z-5.281
N5590 X94.589 Y-79.385 Z-5.149
N5595 X94.617 Y-79.413 Z-5.013
N5600 X94.634 Y-79.43 Z-4.872
N5605 X94.64 Y-79.436 Z-4.73
N5610 G0 Z5.
N5615 G1 X104.436 Y-69.64 F650.
N5620 Z-3. F150.
N5625 Z-6.73
N5630 X104.43 Y-69.634 Z-6.872 F800.
N5635 X104.413 Y-69.617 Z-7.013
N5640 X104.385 Y-69.589 Z-7.149
N5645 X104.347 Y-69.551 Z-7.281
N5650 X104.298 Y-69.502 Z-7.406
N5655 X104.24 Y-69.444 Z-7.522
N5660 X104.173 Y-69.377 Z-7.628
N5665 X104.098 Y-69.302 Z-7.723
N5670 X104.016 Y-69.219 Z-7.805
N5675 X103.927 Y-69.131 Z-7.874
N5680 X103.834 Y-69.038 Z-7.929
N5685 X103.738 Y-68.942 Z-7.968
N5690 X103.638 Y-68.842 Z-7.992
N5695 X103.538 Y-68.742 Z-8.
N5700 X102.64 Y-67.844
N5705 G3 X100.844 I-0.898 J-0.898
N5710 G1 X92.844 Y-75.844 F1300.
N5715 G3 Y-77.64 I0.898 J-0.898 F800.
N5720 G1 X93.742 Y-78.538
N5725 X93.842 Y-78.638 Z-7.992
N5730 X93.942 Y-78.738 Z-7.968
N5735 X94.038 Y-78.834 Z-7.929
N5740 X94.131 Y-78.927 Z-7.874
N5745 X94.219 Y-79.016 Z-7.805
N5750 X94.302 Y-79.098 Z-7.723
N5755 X94.377 Y-79.173 Z-7.628
N5760 X94.444 Y-79.24 Z-7.522
N5765 X94.502 Y-79.298 Z-7.406
N5770 X94.551 Y-79.347 Z-7.281
N5775 X94.589 Y-79.385 Z-7.149
N5780 X94.617 Y-79.413 Z-7.013
N5785 X94.634 Y-79.43 Z-6.872
N5790 X94.64 Y-79.436 Z-6.73
N5795 G0 Z5.
N5800 G1 X104.436 Y-69.64 F650.
N5805 Z-5. F150.
N5810 Z-8.73
N5815 X104.43 Y-69.634 Z-8.872 F800.
N5820 X104.413 Y-69.617 Z-9.013
N5825 X104.385 Y-69.589 Z-9.149
N5830 X104.347 Y-69.551 Z-9.281
N5835 X104.298 Y-69.502 Z-9.406
N5840 X104.24 Y-69.444 Z-9.522
N5845 X104.173 Y-69.377 Z-9.628
N5850 X104.098 Y-69.302 Z-9.723
N5855 X104.016 Y-69.219 Z-9.805
N5860 X103.927 Y-69.131 Z-9.874
N5865 X103.834 Y-69.038 Z-9.929
N5870 X103.738 Y-68.942 Z-9.968
N5875 X103.638 Y-68.842 Z-9.992
N5880 X103.538 Y-68.742 Z-10.
N5885 X102.64 Y-67.844
N5890 G3 X100.844 I-0.898 J-0.898
N5895 G1 X92.844 Y-75.844 F1300.
N5900 G3 Y-77.64 I0.898 J-0.898 F800.
N5905 G1 X93.742 Y-78.538
N5910 X93.842 Y-78.638 Z-9.992
N5915 X93.942 Y-78.738 Z-9.968
N5920 X94.038 Y-78.834 Z-9.929
N5925 X94.131 Y-78.927 Z-9.874
N5930 X94.219 Y-79.016 Z-9.805
N5935 X94.302 Y-79.098 Z-9.723
N5940 X94.377 Y-79.173 Z-9.628
N5945 X94.444 Y-79.24 Z-9.522
N5950 X94.502 Y-79.298 Z-9.406
N5955 X94.551 Y-79.347 Z-9.281
N5960 X94.589 Y-79.385 Z-9.149
N5965 X94.617 Y-79.413 Z-9.013
N5970 X94.634 Y-79.43 Z-8.872
N5975 X94.64 Y-79.436 Z-8.73
N5980 G0 Z15.

(2D Pocket3)
N5985 S4500 M3
N5990 G1 X19.546 Y6.573 F650.
N5995 G0 Z15.
N6000 Z5.
N6005 G1 Z-9.357 F150.
N6010 X19.545 Y6.566 Z-9.485 F800.
N6015 X19.541 Y6.545 Z-9.611
N6020 X19.536 Y6.51 Z-9.735
N6025 X19.528 Y6.462 Z-9.853
N6030 X19.518 Y6.4 Z-9.965
N6035 X19.507 Y6.327 Z-10.07
N6040 X19.493 Y6.243 Z-10.165
N6045 X19.478 Y6.148 Z-10.251
N6050 X19.462 Y6.045 Z-10.325
N6055 X19.444 Y5.934 Z-10.387
N6060 X19.426 Y5.817 Z-10.436
N6065 X19.407 Y5.696 Z-10.471
N6070 X19.387 Y5.571 Z-10.493
N6075 X19.367 Y5.444 Z-10.5
N6080 X19.366 Y5.437
N6085 X19.354 Y5.338
N6090 X19.35 Y5.238
N6095 Y-77.244 F1200.
N6100 X19.354 Y-77.344 F800.
N6105 X19.366 Y-77.443
N6110 X19.373 Y-77.492
N6115 X19.396 Y-77.632 Z-10.492
N6120 X19.418 Y-77.771 Z-10.468
N6125 X19.439 Y-77.906 Z-10.429
N6130 X19.46 Y-78.036 Z-10.374
N6135 X19.479 Y-78.159 Z-10.305
N6140 X19.497 Y-78.274 Z-10.223
N6145 X19.514 Y-78.379 Z-10.128
N6150 X19.529 Y-78.472 Z-10.022
N6155 X19.542 Y-78.554 Z-9.906
N6160 X19.552 Y-78.622 Z-9.781
N6165 X19.561 Y-78.676 Z-9.649
N6170 X19.567 Y-78.714 Z-9.513
N6175 X19.571 Y-78.738 Z-9.372
N6180 X19.572 Y-78.746 Z-9.23
N6185 G0 Z5.
N6190 G1 X25.454 Y-78.574 F650.
N6195 Z-9.357 F150.
N6200 X25.455 Y-78.567 Z-9.485 F800.
N6205 X25.459 Y-78.545 Z-9.611
N6210 X25.464 Y-78.51 Z-9.735
N6215 X25.472 Y-78.462 Z-9.853
N6220 X25.482 Y-78.401 Z-9.965
N6225 X25.493 Y-78.327 Z-10.07
N6230 X25.507 Y-78.243 Z-10.165
N6235 X25.522 Y-78.149 Z-10.251
N6240 X25.538 Y-78.045 Z-10.325
N6245 X25.556 Y-77.935 Z-10.387
N6250 X25.574 Y-77.818 Z-10.436
N6255 X25.593 Y-77.696 Z-10.471
N6260 X25.613 Y-77.571 Z-10.493
N6265 X25.633 Y-77.445 Z-10.5
N6270 X25.634 Y-77.437
N6275 X25.646 Y-77.338
N6280 X25.65 Y-77.238
N6285 Y5.244 F1200.
N6290 X25.646 Y5.344 F800.
N6295 X25.634 Y5.443
N6300 X25.627 Y5.492
N6305 X25.604 Y5.632 Z-10.492
N6310 X25.582 Y5.771 Z-10.468
N6315 X25.561 Y5.906 Z-10.429
N6320 X25.54 Y6.036 Z-10.374
N6325 X25.521 Y6.159 Z-10.305
N6330 X25.503 Y6.274 Z-10.223
N6335 X25.486 Y6.379 Z-10.128
N6340 X25.471 Y6.472 Z-10.022
N6345 X25.458 Y6.554 Z-9.906
N6350 X25.448 Y6.622 Z-9.781
N6355 X25.439 Y6.676 Z-9.649
N6360 X25.433 Y6.714 Z-9.513
N6365 X25.429 Y6.738 Z-9.372
N6370 X25.428 Y6.746 Z-9.23
N6375 G0 Z15.
N6380 G1 X71.546 Y6.571 F650.
N6385 G0 Z5.
N6390 G1 Z-9.357 F150.
N6395 X71.545 Y6.564 Z-9.485 F800.
N6400 X71.541 Y6.543 Z-9.611
N6405 X71.536 Y6.508 Z-9.735
N6410 X71.528 Y6.459 Z-9.853
N6415 X71.518 Y6.398 Z-9.965
N6420 X71.507 Y6.325 Z-10.07
N6425 X71.493 Y6.24 Z-10.165
N6430 X71.478 Y6.146 Z-10.251
N6435 X71.462 Y6.043 Z-10.325
N6440 X71.444 Y5.932 Z-10.387
N6445 X71.426 Y5.815 Z-10.436
N6450 X71.407 Y5.693 Z-10.471
N6455 X71.387 Y5.568 Z-10.493
N6460 X71.367 Y5.442 Z-10.5
N6465 X71.366 Y5.434
N6470 X71.354 Y5.335
N6475 X71.35 Y5.236
N6480 Y-77.244 F1200.
N6485 X71.354 Y-77.344 F800.
N6490 X71.366 Y-77.443
N6495 X71.373 Y-77.492
N6500 X71.396 Y-77.632 Z-10.492
N6505 X71.418 Y-77.771 Z-10.468
N6510 X71.439 Y-77.906 Z-10.429
N6515 X71.46 Y-78.036 Z-10.374
N6520 X71.479 Y-78.159 Z-10.305
N6525 X71.497 Y-78.274 Z-10.223
N6530 X71.514 Y-78.379 Z-10.128
N6535 X71.529 Y-78.472 Z-10.022
N6540 X71.542 Y-78.554 Z-9.906
N6545 X71.552 Y-78.622 Z-9.781
N6550 X71.561 Y-78.676 Z-9.649
N6555 X71.567 Y-78.714 Z-9.513
N6560 X71.571 Y-78.738 Z-9.372
N6565 X71.572 Y-78.746 Z-9.23
N6570 G0 Z5.
N6575 G1 X78.065 Y-78.571 F650.
N6580 Z-9.357 F150.
N6585 X78.066 Y-78.564 Z-9.485 F800.
N6590 X78.069 Y-78.543 Z-9.611
N6595 X78.075 Y-78.508 Z-9.735
N6600 X78.082 Y-78.459 Z-9.853
N6605 X78.092 Y-78.398 Z-9.965
N6610 X78.104 Y-78.325 Z-10.07
N6615 X78.117 Y-78.241 Z-10.165
N6620 X78.132 Y-78.146 Z-10.251
N6625 X78.148 Y-78.043 Z-10.325
N6630 X78.166 Y-77.932 Z-10.387
N6635 X78.184 Y-77.815 Z-10.436
N6640 X78.204 Y-77.694 Z-10.471
N6645 X78.223 Y-77.569 Z-10.493
N6650 X78.243 Y-77.442 Z-10.5
N6655 X78.245 Y-77.435
N6660 X78.256 Y-77.336
N6665 X78.26 Y-77.236
N6670 Y5.244 F1200.
N6675 X78.256 Y5.344 F800.
N6680 X78.245 Y5.443
N6685 X78.237 Y5.492
N6690 X78.215 Y5.632 Z-10.492
N6695 X78.193 Y5.771 Z-10.468
N6700 X78.171 Y5.906 Z-10.429
N6705 X78.151 Y6.036 Z-10.374
N6710 X78.131 Y6.159 Z-10.305
N6715 X78.113 Y6.274 Z-10.223
N6720 X78.096 Y6.379 Z-10.128
N6725 X78.081 Y6.472 Z-10.022
N6730 X78.069 Y6.554 Z-9.906
N6735 X78.058 Y6.622 Z-9.781
N6740 X78.049 Y6.676 Z-9.649
N6745 X78.043 Y6.714 Z-9.513
N6750 X78.039 Y6.738 Z-9.372
N6755 X78.038 Y6.746 Z-9.23
N6760 G0 Z15.

(2D Contour2)
N6765 G1 X-9.16 Y-37.27 F650.
N6770 G0 Z15.
N6775 Z5.
N6780 G1 Z1. F150.
N6785 Z-9.23
N6790 G18 G2 X-7.89 Z-10.5 I1.27 K0. F800.
N6795 G1 X-6.62
N6800 G17 G3 X-5.35 Y-36. I0. J1.27
N6805 G1 Y-9. F1200.
N6810 G2 X-3.49 Y-4.51 I6.35 J0.
N6815 G1 X4.51 Y3.49
N6820 G2 X9. Y5.35 I4.49 J-4.49
N6825 G1 X88.
N6830 G2 X92.49 Y3.49 I0. J-6.35
N6835 G1 X100.49 Y-4.51
N6840 G2 X102.35 Y-9. I-4.49 J-4.49
N6845 G1 Y-63.
N6850 G2 X100.49 Y-67.49 I-6.35 J0.
N6855 G1 X92.49 Y-75.49
N6860 G2 X88. Y-77.35 I-4.49 J4.49
N6865 G1 X9.
N6870 G2 X4.51 Y-75.49 I0. J6.35
N6875 G1 X-3.49 Y-67.49
N6880 G2 X-5.35 Y-63. I4.49 J4.49
N6885 G1 Y-36.
N6890 G3 X-6.62 Y-34.73 I-1.27 J0. F800.
N6895 G1 X-7.89
N6900 G18 G3 X-9.16 Z-9.23 I0. K1.27
N6905 G0 Z15.

(2D Contour2 2)
N6910 G1 X-9.16 Y-37.27 F650.
N6915 G0 Z15.
N6920 Z5.
N6925 G1 Z1. F150.
N6930 Z-19.23
N6935 G2 X-7.89 Z-20.5 I1.27 K0. F800.
N6940 G1 X-6.62
N6945 G17 G3 X-5.35 Y-36. I0. J1.27
N6950 G1 Y-1. F1200.
N6955 G2 X1. Y5.35 I6.35 J0.
N6960 G1 X96.
N6965 G2 X102.35 Y-1. I0. J-6.35
N6970 G1 Y-71.
N6975 G2 X96. Y-77.35 I-6.35 J0.
N6980 G1 X1.
N6985 G2 X-5.35 Y-71. I0. J6.35
N6990 G1 Y-36.
N6995 G3 X-6.62 Y-34.73 I-1.27 J0. F800.
N7000 G1 X-7.89
N7005 G18 G3 X-9.16 Z-19.23 I0. K1.27
N7010 G0 Z15.

N7015 M5
N7020 M9
N7025 G53 G0 Z0.
N7030 G53 G0 X0. Y0.
N7035 M30

%
