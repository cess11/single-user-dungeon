(class +SudObj +Entity)
(rel id (+Key +Number)) # id
(rel sht (+String)) # short description
(rel lng (+String)) # long description

(dm look> ()
    (: lng))

(dm glance> ()
    (: sht))

(class +World +SudObj)

(class +Room +SudObj)
#(rel its (+List +Link) NIL (+Item)) # items 
(rel lvs (+List +Joint) loc (+Living)) # living 
#(rel rms (+List +Link) NIL (+Room))

(de genMonster (Loc)
    (let M (new! '(+Monster) 
        'id (genKey 'id '+Monster)
        'sht "typical monster"
        'lng "This monster has a leg protruding from its shoulder."
        'hp 30
        'att 3
        'def 3
        'pwr 30
        'loc Loc)
        M))

(dm spawnMonster> ()
    (genMonster This)
    (commit 'upd))

(class +Item +SudObj)


(class +Living +SudObj)
(rel hp (+Number))
(rel pwr (+Number))
(rel att (+Number))
(rel def (+Number))
(rel loc (+Joint) lvs (+Room))

(dm hit> (Nr)
    (=: hp (- (: hp) (- def Nr))))

(dm heal> (Nr)
    (=: hp (+ (: hp) Nr))
    (:hp))

(dm walk> (Rm)
    ())

(class +Monster +Living)


(class +Hero +Living)
