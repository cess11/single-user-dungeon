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
(rel lvs (+Joint +Link) loc (+Living)) # living 
#(rel rms (+List +Link) NIL (+Room))

(dm spawnMonster> (Sht Lng)
    (let Monster (new! '(+Monster) 
        'id (genKey 'id '+Monster) 
        'sht "Typical monster." 
        'lng "This monster has a leg protruding from its shoulder." 
        'hp 100 
        'att 20 
        'def 20 
        'pwr 100)
        (=: lvs (cons Monster (: lvs)))
        (commit 'upd)))

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

(dm T ()
    (super))

(class +Hero +Living)
