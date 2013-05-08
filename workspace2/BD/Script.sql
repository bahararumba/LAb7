--<ScriptOptions statementTerminator="GO"/>

ALTER TABLE "Schema"."Машинист-электричка" DROP CONSTRAINT "Машинист-электричка_Машинист_FK"
GO

ALTER TABLE "Schema"."Машинист-электричка" DROP CONSTRAINT "Машинист-электричка_Электричка_FK"
GO

ALTER TABLE "Schema"."Машинист" DROP CONSTRAINT "Машинист_PK"
GO

ALTER TABLE "Schema"."Машинист-электричка" DROP CONSTRAINT "Машинист-электричка_PK"
GO

ALTER TABLE "Schema"."Электричка" DROP CONSTRAINT "Электричка_PK"
GO

DROP TABLE "Schema"."Машинист"
GO

DROP TABLE "Schema"."Машинист-электричка"
GO

DROP TABLE "Schema"."Электричка"
GO

CREATE SCHEMA "Schema"
GO

CREATE TABLE "Schema"."Машинист" (
		"Фамилия" VARCHAR(30) NOT NULL,
		"Имя" VARCHAR(20) NOT NULL,
		"Отчество" VARCHAR(30) NOT NULL,
		"Паспорт" VARCHAR(20) NOT NULL
	)
GO

CREATE TABLE "Schema"."Машинист-электричка" (
		"Паспорт" VARCHAR(20) NOT NULL,
		"Номер" INT NOT NULL
	)
GO

CREATE TABLE "Schema"."Электричка" (
		"Номер" INT NOT NULL,
		"Депо" VARCHAR(30) NULL,
		"Тип электрички" VARCHAR(15) NOT NULL
	)
GO

ALTER TABLE "Schema"."Машинист" ADD CONSTRAINT "Машинист_PK" PRIMARY KEY
	("Паспорт")
GO

ALTER TABLE "Schema"."Машинист-электричка" ADD CONSTRAINT "Машинист-электричка_PK" PRIMARY KEY
	("Паспорт",
	 "Номер")
GO

ALTER TABLE "Schema"."Электричка" ADD CONSTRAINT "Электричка_PK" PRIMARY KEY
	("Номер")
GO

ALTER TABLE "Schema"."Машинист-электричка" ADD CONSTRAINT "Машинист-электричка_Машинист_FK" FOREIGN KEY
	("Паспорт")
	REFERENCES "Schema"."Машинист"
	("Паспорт")
	ON DELETE CASCADE
GO

ALTER TABLE "Schema"."Машинист-электричка" ADD CONSTRAINT "Машинист-электричка_Электричка_FK" FOREIGN KEY
	("Номер")
	REFERENCES "Schema"."Электричка"
	("Номер")
	ON DELETE CASCADE
GO

