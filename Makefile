include config.mk

all: rogue

clean:
	rm -rf rogue *.o

install: rogue 
	cp rogue ${PREFIX}/bin

rogue: armor.o chase.o command.o daemon.o daemons.o extern.o fight.o init.o \
       io.o list.o mach_dep.o main.o mdport.o misc.o monsters.o move.o \
       new_level.o options.o pack.o passages.o potions.o rings.o rip.o \
       rooms.o save.o scrolls.o state.o sticks.o things.o vers.o \
       weapons.o wizard.o xcrypt.o
	${CC} ${CFLAGS} -lncurses -o rogue *.o

armor.o: armor.c
	${CC} ${CFLAGS} -o armor.o -c armor.c

chase.o: chase.c
	${CC} ${CFLAGS} -o chase.o -c chase.c

command.o: command.c
	${CC} ${CFLAGS} -o command.o -c command.c

daemon.o: daemon.c
	${CC} ${CFLAGS} -o daemon.o -c daemon.c

daemons.o: daemons.c
	${CC} ${CFLAGS} -o daemons.o -c daemons.c

extern.o: extern.c
	${CC} ${CFLAGS} -o extern.o -c extern.c

fight.o: fight.c
	${CC} ${CFLAGS} -o fight.o -c fight.c

init.o: init.c
	${CC} ${CFLAGS} -o init.o -c init.c

io.o: io.c
	${CC} ${CFLAGS} -o io.o -c io.c

list.o: list.c
	${CC} ${CFLAGS} -o list.o -c list.c

mach_dep.o: mach_dep.c
	${CC} ${CFLAGS} -o mach_dep.o -c mach_dep.c

main.o: main.c
	${CC} ${CFLAGS} -o main.o -c main.c

mdport.o: mdport.c
	${CC} ${CFLAGS} -o mdport.o -c mdport.c

misc.o: misc.c
	${CC} ${CFLAGS} -o misc.o -c misc.c

monsters.o: monsters.c
	${CC} ${CFLAGS} -o monsters.o -c monsters.c

move.o: move.c
	${CC} ${CFLAGS} -o move.o -c move.c

new_level.o: new_level.c
	${CC} ${CFLAGS} -o new_level.o -c new_level.c

options.o: options.c
	${CC} ${CFLAGS} -o options.o -c options.c

pack.o: pack.c
	${CC} ${CFLAGS} -o pack.o -c pack.c

passages.o: passages.c
	${CC} ${CFLAGS} -o passages.o -c passages.c

potions.o: potions.c
	${CC} ${CFLAGS} -o potions.o -c potions.c

rings.o: rings.c
	${CC} ${CFLAGS} -o rings.o -c rings.c

rip.o: rip.c
	${CC} ${CFLAGS} -o rip.o -c rip.c

rooms.o: rooms.c
	${CC} ${CFLAGS} -o rooms.o -c rooms.c

save.o: save.c
	${CC} ${CFLAGS} -o save.o -c save.c

score.o: score.c
	${CC} ${CFLAGS} -o score.o -c score.c

scrolls.o: scrolls.c
	${CC} ${CFLAGS} -o scrolls.o -c scrolls.c

state.o: state.c
	${CC} ${CFLAGS} -o state.o -c state.c

sticks.o: sticks.c
	${CC} ${CFLAGS} -o sticks.o -c sticks.c

things.o: things.c
	${CC} ${CFLAGS} -o things.o -c things.c

vers.o: vers.c
	${CC} ${CFLAGS} -o vers.o -c vers.c

weapons.o: weapons.c
	${CC} ${CFLAGS} -o weapons.o -c weapons.c

wizard.o: wizard.c
	${CC} ${CFLAGS} -o wizard.o -c wizard.c

xcrypt.o: xcrypt.c
	${CC} ${CFLAGS} -o xcrypt.o -c xcrypt.c

