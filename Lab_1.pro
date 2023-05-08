ужастик("дракула").
ужастик("хэллоуин").
ужастик("чужой").
ужастик("носферату").
ужастик("крик").

комедия("маска").
комедия("впритык").
комедия("лжец").
комедия("гарфилд").
комедия("евротур").

детский("смешарики").
детский("душа").
детский("шрек").
детский("душа").
детский("рататуй").


возрастная_категория(детский, 6).
возрастная_категория(комедия, 16).
возрастная_категория(ужастик, 21).

cost = integer.
билет(name, cost)
билет("дракула", 400).
билет("хэллоуин", 370).
билет("чужой", 600).
билет("носферату", 180).
билет("крик", 200).
билет("маска", 500).
билет("впритык", 300).
билет("лжец", 270).
билет("гарфилд", 600).
билет("евротур", 450).
билет("смешарики", 300).
билет("душа", 200).
билет("шрек", 120).
билет("душа", 370).
билет("рататуй", 390).

фильм(Название, Возраст) :-
    (детский(Название), возрастная_категория(детский, Возраст)) ;
    (комедия(Название), возрастная_категория(комедия, Возраст)) ;
    (ужастик(Название), возрастная_категория(ужастик, Возраст)).

полноценныйвечер(X,Y,Z) :- фильм(X,6) , фильм(Y,21), фильм(Z,16).
детскийвечер(X,Y,Z) :- фильм(X,6) ,фильм(Y,6) ,фильм(Z,6), X\=Y, Y\=Z,X\=Z.
свидание(X,Y,Z) :- фильм(X,16), фильм(Y,21), фильм(Z,16).





ценанавечер(name, name, name, cost).
ценанавечер(X, Y, Z, V):- билет(X, A), 
                                билет(Y, B), 
                                билет(Z, C), 
                                V = A+B+C.
                                
бюджетныйполноценныйвечер(X, Y, Z):- полноценныйвечер(X, Y, Z), 
                                                    ценанавечер(X, Y, Z, V), 
                                                    V < 1200.
















