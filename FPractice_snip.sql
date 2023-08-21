--1 ZADANIE
SELECT top_rating.id, u.nick, u.age, g.name AS 'gender', top_rating.avg_rate
FROM (SELECT TOP 10 id_kogo AS 'id', FORMAT(AVG(CAST(rating AS float)), '0.#') AS 'avg_rate'
      FROM anketa_rate
      GROUP BY id_kogo
      ORDER BY 2 DESC) AS top_rating
JOIN users AS u ON u.user_id = top_rating.id
JOIN gender AS g ON g.id = u.sex


--2 ZADANIE
SELECT u.user_id, u.nick, u.age, g.name AS 'gender'
FROM users AS u
JOIN gender AS g ON g.id = u.sex
WHERE u.id_education = (SELECT id FROM education WHERE name LIKE '������') AND
      u.my_smoke = (SELECT id FROM smoking WHERE name LIKE '�� ����') AND
      u.my_drink = (SELECT id FROM drinking WHERE name LIKE '�� ��� ������') AND
      u.my_drugs IN (SELECT id FROM drugs WHERE name IN ('� ������ ����������', '��� ������'))


--3 ZADANIE
DECLARE @user_nick nvarchar(50) = '���'
DECLARE @user_sex nvarchar(20) = '�������'
DECLARE @min_age int = 16, @max_age int = 25
DECLARE @min_height float = 150, @max_height float = 175
DECLARE @min_weight float = 50, @max_weight float = 75

SELECT user_id, nick, age, @user_sex AS 'gender'
FROM users
WHERE nick LIKE '%' + @user_nick + '%' AND
      sex = (SELECT id FROM gender WHERE name LIKE @user_sex) AND
      age BETWEEN @min_age AND @max_age AND
      (rost BETWEEN @min_height AND @max_height) AND
      (ves BETWEEN @min_weight AND @max_weight)



--4 ZADANIE
DECLARE @wooman_table TABLE(
    user_id int,
	nick nvarchar(50),
	age float,
	gender nvarchar(20)
)
DECLARE @man_table TABLE(
    user_id int,
	nick nvarchar(50),
	age float,
	gender nvarchar(20)
)

INSERT INTO @wooman_table
SELECT user_id, nick, age, '�������' AS 'gender'
FROM users AS u
WHERE u.sex = (SELECT id FROM gender WHERE name LIKE '�������') AND
	       u.my_build = (SELECT id FROM figure WHERE name LIKE '��������') AND
               u.eyes_color = (SELECT id FROM eyescolor WHERE name LIKE '�������') AND
	       u.hair_color = (SELECT id FROM haircolor WHERE name LIKE '�����')


INSERT INTO @man_table
SELECT user_id, nick, age, '�������' AS 'gender'
FROM users AS u
WHERE u.sex = (SELECT id FROM gender WHERE name LIKE '�������') AND
	       u.my_build = (SELECT id FROM figure WHERE name LIKE '����������') AND
               u.eyes_color = (SELECT id FROM eyescolor WHERE name LIKE '�����') AND
	       u.hair_color = (SELECT id FROM haircolor WHERE name LIKE '������')

SELECT * FROM @wooman_table
UNION ALL
SELECT * FROM @man_table
UNION ALL
SELECT NULL, '����� ���-��:', (SELECT COUNT(*) FROM @wooman_table) + (SELECT COUNT(*) FROM @man_table), '�/�'



--5 ZADANIE
SELECT user_id, nick, age, g.name AS 'gender'
FROM users AS u
JOIN gender AS g ON g.id = u.sex
WHERE u.id_framework = (SELECT id FROM framework WHERE name LIKE '�������������� ����������') AND
      u.user_id IN (SELECT user_id FROM users_moles WHERE moles_id = (SELECT id FROM moles WHERE name LIKE '�������')) AND
      u.user_id IN (SELECT user_id FROM users_interes WHERE interes_id = (SELECT id FROM interes WHERE name LIKE '� ��� � ��������� �������� ����'))


--6 ZADANIE
SELECT user_id, nick, age, g.name AS 'gender', COUNT(*) AS 'amount gift'
FROM users AS u
JOIN gender AS g ON g.id = u.sex
WHERE id_zodiak = (SELECT id FROM goroskop WHERE name LIKE '����') AND
      user_id IN (SELECT id_to FROM gift_service)
GROUP BY user_id, nick, age, g.name


--7 ZADANIE
SELECT user_id, nick, age, g.name AS 'gender', r.name AS '���������'
FROM users AS u
JOIN gender AS g ON g.id = u.sex
JOIN richness AS r ON r.id = u.my_rich
WHERE u.user_id IN (SELECT user_id
		    FROM (SELECT user_id, COUNT(*) AS count
			  FROM users_languages
			  GROUP BY user_id
			  HAVING COUNT(*) > 5) AS love_langs)


--8 ZADANIE
SELECT user_id, nick, age, g.name AS 'gender'
FROM users AS u
JOIN gender AS g ON g.id = u.sex
WHERE religion = (SELECT id FROM religion WHERE name LIKE '�������') AND
      user_id IN (SELECT user_id
		  FROM users_sport
		  WHERE sport_id = (SELECT id FROM sport WHERE name LIKE '������������')) AND
	  my_home = (SELECT id FROM residence WHERE name LIKE '���� �� �������') AND
	  user_id IN (SELECT user_id
		      FROM users_sport
		      WHERE sport_id = (SELECT id FROM sport WHERE name LIKE '���������'))


--9 ZADANIE
DECLARE @count_users int = (SELECT COUNT(*) FROM users)

SELECT '�� 18' AS '�������', COUNT(*) AS '���-��', FORMAT(COUNT(*) * 100.0 / @count_users, '0.#') AS '%'
FROM (SELECT age
      FROM users
      WHERE age <= 18) AS users_to_18
UNION
SELECT '19-24' AS '�������', COUNT(*) AS '���-��', FORMAT(COUNT(*) * 100.0 / @count_users, '0.#') AS '%'
FROM (SELECT age
      FROM users
      WHERE age BETWEEN 19 AND 24) AS users_from_19_to_24
UNION
SELECT '25-30' AS '�������', COUNT(*) AS '���-��', FORMAT(COUNT(*) * 100.0 / @count_users, '0.#') AS '%'
FROM (SELECT age
      FROM users
      WHERE age BETWEEN 25 AND 30) AS users_from_25_to_30
UNION
SELECT '�� 30' AS '�������', COUNT(*) AS '���-��', FORMAT(COUNT(*) * 100.0 / @count_users, '0.#') AS '%'
FROM (SELECT age
      FROM users
      WHERE age > 30) AS users_from_30