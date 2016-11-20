
(action ACTIONNER-BOUCLIER 2048
	:condition-list 23  20 19 9 10 
	:add-list 
	:activate .1
	:decay .43)


(action TIRER 16384
	:condition-list 22 18 54 !9 !10
	:add-list 
	:activate .3
	:decay .92)

(action ACTIONNER-TURBO 8192
	:condition-list !18 !20 !55
	:add-list 
	:activate .6
	:decay 1.2)


(action PRENDRE-BONUS-VIE 1
	:condition-list 3 9 10
	:add-list  
	:activate .4
	:decay .45)



(action PRENDRE-BONUS-DIMINUE-POTENTIEL 16
	:condition-list 6 !27 
	:add-list  
	:activate .3
	:decay .75)

(action UTILISER-BONUS-DIMINUE-POTENTIEL 512
	:condition-list 27 18 !55 13
	:add-list  
	:activate .3
	:decay .7)

(action PRENDRE-BONUS-AUGMENTE-POTENTIEL 4
	:condition-list 7 !28 
	:add-list  
	:activate .5
	:decay .75)

(action UTILISER-BONUS-AUGMENTE-POTENTIEL 256
	:condition-list 28 !55 
	:add-list  
	:activate .5
	:decay .6)

(action PRENDRE-AUTRE-BONUS 32
	:condition-list 8 !29 
	:add-list  
	:activate .3
	:decay .75)

(action UTILISER-AUTRE-BONUS 1024
	:condition-list 29 !55 13
	:add-list  
	:activate .3
	:decay .9)

(action PRENDRE-BONUS-NRJ 2
	:condition-list 5 13 15
	:add-list  
	:activate .3
	:decay .45)


(action PRENDRE-MINE 32768
	:condition-list 51 !31 
	:add-list  
	:activate .3
	:decay .75)

(action UTILISER-MINE 65536
	:condition-list 31 20 56 13
	:add-list  
	:activate .5
	:decay .86)


(action PRENDRE-REPULSE 131072
	:condition-list 52 !33
	:add-list  
	:activate .5
	:decay .75)

(action UTILISER-REPULSE 262144
	:condition-list 33 18 19 20 54 56 57 13
	:add-list  
	:activate .5
	:decay .45)

(action PRENDRE-SMOKE 524288
	:condition-list 53 !34
	:add-list  
	:activate .3
	:decay .75)

(action UTILISER-SMOKE 1048576
	:condition-list 20 34 13 
	:add-list  
	:activate .3
	:decay .55)

(action PRENDRE-BONUS-CANCEL 2097152
	:condition-list 59 !35 
	:add-list  
	:activate .5
	:decay .75)

(action UTILISER-BONUS-CANCEL 4194304
	:condition-list 35 37
	:add-list  
	:activate .5
	:decay .8)


(action ANYTHING 0
	:condition-list !18 !19 !20 13 55
	:add-list  
	:activate .4
	:decay .99)

(parameter 0 0 0 0 1 0)