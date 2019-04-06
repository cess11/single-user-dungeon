# single-user-dungeon
Adventures are nice so let's build an adventuring engine. 

Message passing object orientation is a good fit for world simulation. 

It is a work in progress and will ultimately allow you to both design and generate worlds to adventure in. 

Currently it has a few objects and messages defined with no GUI. 

It will soon have support for automated world generation and a rudimentary fighting system. 

Usage: 
$ pil er.l +
: (pool "test.db")
-> T
: (new! '(+Room) 'id 1)
-> {2}
: (spawnMonster> @)
-> T
: (show '{2})
{2} (+Room)
   lvs ({6})
   id 1
-> {2}
: (show '{6})
{6} (+Monster)
   loc {2}
   pwr 30
   def 3
   att 3
   hp 30
   lng "This monster has a leg protruding from its shoulder."
   sht "typical monster"
   id 1
-> {6}
:
