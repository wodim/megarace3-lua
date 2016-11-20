(interval FAIBLEDEFDEV	:type int :shape trapeze :values 1 1 1 100)
(interval FAIBLE	:type int :shape trapeze :values 1 1 1 40)
(interval MOITIEVITLAT	:type int :shape simple	:values	30 60)
(interval PLEINATTDER	:type int :shape trapeze :values 60 100 100 100)
(interval ACCESSIBLE	:type int :shape trapeze :values 1 100 100 100)
(interval FAIBLEDISTANCE	:type int :shape simple	:values	1 12)
(interval COURBURE	:type int :shape trapeze :values 1 50 50 50)


(property 9	:type int  :satisfied FAIBLE)
(property 10	:type int  :satisfied MOITIEVITLAT)
(property 12	:type int  :satisfied PLEINATTDER)

(property 13	:type int  :satisfied FAIBLE)
(property 15	:type int  :satisfied MOITIEVITLAT)
(property 17	:type int  :satisfied PLEINATTDER)

(property 18	:type int  :satisfied FAIBLEDEFDEV)
(property 19	:type int  :satisfied FAIBLEDEFDEV)
(property 20	:type int  :satisfied FAIBLEDEFDEV)

(property 3	:type int  :satisfied ACCESSIBLE)
(property 5	:type int  :satisfied ACCESSIBLE)
(property 6	:type int  :satisfied ACCESSIBLE)
(property 7	:type int  :satisfied ACCESSIBLE)
(property 8	:type int  :satisfied ACCESSIBLE)

(property 51	:type int  :satisfied ACCESSIBLE)
(property 52	:type int  :satisfied ACCESSIBLE)
(property 53	:type int  :satisfied ACCESSIBLE)

(property 54	:type int  :satisfied FAIBLEDISTANCE)
(property 55	:type int  :satisfied COURBURE)








