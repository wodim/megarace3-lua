(interval DISTANCE	:type int :shape trapeze :values 1 1 1 100)
(interval MOITIE	:type int :shape simple	:values	30 57)
(interval FAIBLE	:type int :shape simple	:values	1 30)
(interval FAIBLEDISTANCE	:type int :shape simple	:values	1 12)
(interval PLEIN		:type int :shape trapeze :values 57 100 100 100)
(interval ACCESSIBLE	:type int :shape trapeze :values 1 100 100 100)
(interval COURBURE	:type int :shape trapeze :values 1 50 50 50)



(property 9	:type int  :satisfied FAIBLE)
(property 10	:type int  :satisfied MOITIE)
(property 12	:type int  :satisfied PLEIN)

(property 13	:type int  :satisfied FAIBLE)
(property 15	:type int  :satisfied MOITIE)
(property 17	:type int  :satisfied PLEIN)

(property 18	:type int  :satisfied DISTANCE)
(property 19	:type int  :satisfied DISTANCE)
(property 20	:type int  :satisfied DISTANCE)

(property 3	:type int  :satisfied ACCESSIBLE)
(property 5	:type int  :satisfied ACCESSIBLE)
(property 6	:type int  :satisfied ACCESSIBLE)
(property 7	:type int  :satisfied ACCESSIBLE)
(property 8	:type int  :satisfied ACCESSIBLE)

(property 51	:type int  :satisfied ACCESSIBLE)
(property 52	:type int  :satisfied ACCESSIBLE)
(property 53	:type int  :satisfied ACCESSIBLE) 
(property 59	:type int  :satisfied ACCESSIBLE)

(property 54	:type int  :satisfied FAIBLEDISTANCE)
(property 56	:type int  :satisfied FAIBLEDISTANCE)
(property 57	:type int  :satisfied FAIBLEDISTANCE)

(property 55	:type int  :satisfied COURBURE)

(parameter 0 16 80 90 0.7 60)



