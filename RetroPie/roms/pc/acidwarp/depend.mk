acidwarp.o: acidwarp.c warp_text.c handy.h acidwarp.h lut.h bit_map.h \
 palinit.h rolnfade.h libxpce/libxpce.h
	$(CC) $(CFLAGS) -c acidwarp.c -o acidwarp.o

bit_map.o: bit_map.c handy.h bit_map.h
	$(CC) $(CFLAGS) -c bit_map.c -o bit_map.o

lut.o: lut.c handy.h lut.h
	$(CC) $(CFLAGS) -c lut.c -o lut.o

palinit.o: palinit.c handy.h acidwarp.h palinit.h
	$(CC) $(CFLAGS) -c palinit.c -o palinit.o

rolnfade.o: rolnfade.c handy.h acidwarp.h rolnfade.h palinit.h \
 libxpce/libxpce.h
	$(CC) $(CFLAGS) -c rolnfade.c -o rolnfade.o

warp_text.o: warp_text.c
	$(CC) $(CFLAGS) -c warp_text.c -o warp_text.o

libxpce/x.o: libxpce/x.c libxpce/xconfig.h libxpce/x.h libxpce/libxpce.h
	$(CC) $(CFLAGS) -c libxpce/x.c -o libxpce/x.o

libxpce/xvhandler.o: libxpce/xvhandler.c libxpce/xconfig.h libxpce/x.h
	$(CC) $(CFLAGS) -c libxpce/xvhandler.c -o libxpce/xvhandler.o

libxpce/xxlat.o: libxpce/xxlat.c libxpce/xconfig.h libxpce/x.h
	$(CC) $(CFLAGS) -c libxpce/xxlat.c -o libxpce/xxlat.o

