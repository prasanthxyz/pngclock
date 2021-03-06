pngClock : skins.o clockimpl.o clock.o
	@echo "making executable program 'pngClock'..."
	@g++ -o pngClock skins.o clockimpl.o clock.o -lpngwriter -lpng -lfreetype
	@echo "cleaning ..."
	@rm *.o
	@echo "Compilation successfull."
	@echo "you can now execute the program by using './pngClock'"
skins.o : skins.cpp skins.h
	@echo "compiling 'skins'..."
	@g++ -c skins.cpp
clockimpl.o : clockimpl.cpp clock.h
	@echo "compiling 'clockimpl'..."
	@g++ -c clockimpl.cpp
clock.o : clock.cpp clock.h skins.h
	@echo "compiling 'clock'..."
	@g++ -c clock.cpp
