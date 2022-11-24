SELECT F.Title
FROM FILM AS F
WHERE NOT EXIST (SELECT *
                 FROM SCREENING AS S, ROOM AS R
                 WHERE r.City = "Berlin" AND
                 F.Code = S.Film AND
                 S.Room = R.Code)
