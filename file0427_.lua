(action ACTIONNER-BOUCLIER 2048
	:condition-list 23 20 !6 !29 !28 !27
	:add-list 
	:activate .1
	:decay .93)


(action ATTAQUE 4096
	:condition-list 22 19 10 
	:add-list 
	:activate .3
	:decay .6)


(action TIRER 16384
	:condition-list 22 18 
	:add-list 
	:activate .3
	:decay .5)

(action ACTIONNER-TURBO 8192
	:condition-list 21 !5 !3 17
	:add-list 
	:activate .3
	:decay .67)


(action PRENDRE-BONUS-VIE 1
	:condition-list 3 9
	:add-list  !3
	:activate .3
	:decay .7)



(action PRENDRE-BONUS-DIMINUE-POTENTIEL 16
	:condition-list 6 10 9 15 23 13
	:add-list  !6
	:activate .3
	:decay .5)

(action UTILISER-BONUS-DIMINUE-POTENTIEL 512
	:condition-list 27 9 23 13
	:add-list  
	:activate .3
	:decay .7)

(action PRENDRE-BONUS-AUGMENTE-POTENTIEL 4
	:condition-list 7 9 23 13
	:add-list  !7
	:activate .5
	:decay .6)

(action UTILISER-BONUS-AUGMENTE-POTENTIEL 256
	:condition-list 28 23 13 9
	:add-list  
	:activate .5
	:decay .77)

(action PRENDRE-AUTRE-BONUS 32
	:condition-list 8 9 23 13
	:add-list  !8
	:activate .3
	:decay .8)

(action UTILISER-AUTRE-BONUS 1024
	:condition-list 29 9 23
	:add-list  
	:activate .3
	:decay .7)

(action PRENDRE-BONUS-NRJ 2
	:condition-list 5 15 13
	:add-list  !5
	:activate .3
	:decay .55)


(action PRENDRE-MINE 32768
	:condition-list 51 10 21  
	:add-list  
	:activate .3
	:decay .45)

(action UTILISER-MINE 65536
	:condition-list 31 20 21 23 9
	:add-list  
	:activate .5
	:decay .53)


(action PRENDRE-REPULSE 131072
	:condition-list 52 10 21  
	:add-list  
	:activate .3
	:decay .5)

(action UTILISER-REPULSE 262144
	:condition-list 33 20 21 23 13
	:add-list  
	:activate .5
	:decay .53)

(action PRENDRE-SMOKE 524288
	:condition-list 53 10 21 
	:add-list  
	:activate .3
	:decay .5)

(action UTILISER-SMOKE 1048576
	:condition-list 20 34 23 21 9 
	:add-list  
	:activate .3
	:decay .53)











