VPATH = src
CPPFLAGS = -Iinclude -I/usr/local/include/allegro5 -g
LDFLAGS = -L/usr/local/lib -lallegro -lallegro_primitives -lallegro_font -lallegro_image -lallegro_ttf -g

all: TowerDefence

TowerDefence: Player.o Board.o Tower.o Ammunition.o Enemy.o Engine.o Main.o ScoreBoard.o Rules.o UI.o logging.o
	g++ -o TowerDefence Player.o Board.o Tower.o Ammunition.o Enemy.o Engine.o Main.o ScoreBoard.o Rules.o UI.o logging.o $(LDFLAGS)

clean:
	rm -f core *.o TowerDefence *~
