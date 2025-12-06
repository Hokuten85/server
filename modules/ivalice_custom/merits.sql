UPDATE merits SET Value = 3 WHERE meritid = 516; -- barspell effect
UPDATE merits SET Value = 3 WHERE meritid = 768; -- shield base recast

UPDATE merits SET upgrade = 10 WHERE upgrade < 10; -- let everything upgrade to at least 10;