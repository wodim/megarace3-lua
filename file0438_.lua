
(action ACTIONNER-BOUCLIER 2048
	:condition-list 23  20 19 9 10 
	:add-list 
	:activate .1
	:decay .43)



(action PRENDRE-BONUS-VIE 1
	:condition-list 3 9 10
	:add-list  
	:activate .4
	:decay .45)


(action PRENDRE-BONUS-NRJ 2
	:condition-list 5 13 15
	:add-list  
	:activate .3
	:decay .45)


