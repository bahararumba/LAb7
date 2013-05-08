--<ScriptOptions statementTerminator="GO"/>

ALTER TABLE "Schema"."��������-����������" DROP CONSTRAINT "��������-����������_��������_FK"
GO

ALTER TABLE "Schema"."��������-����������" DROP CONSTRAINT "��������-����������_����������_FK"
GO

ALTER TABLE "Schema"."��������" DROP CONSTRAINT "��������_PK"
GO

ALTER TABLE "Schema"."��������-����������" DROP CONSTRAINT "��������-����������_PK"
GO

ALTER TABLE "Schema"."����������" DROP CONSTRAINT "����������_PK"
GO

DROP TABLE "Schema"."��������"
GO

DROP TABLE "Schema"."��������-����������"
GO

DROP TABLE "Schema"."����������"
GO

CREATE SCHEMA "Schema"
GO

CREATE TABLE "Schema"."��������" (
		"�������" VARCHAR(30) NOT NULL,
		"���" VARCHAR(20) NOT NULL,
		"��������" VARCHAR(30) NOT NULL,
		"�������" VARCHAR(20) NOT NULL
	)
GO

CREATE TABLE "Schema"."��������-����������" (
		"�������" VARCHAR(20) NOT NULL,
		"�����" INT NOT NULL
	)
GO

CREATE TABLE "Schema"."����������" (
		"�����" INT NOT NULL,
		"����" VARCHAR(30) NULL,
		"��� ����������" VARCHAR(15) NOT NULL
	)
GO

ALTER TABLE "Schema"."��������" ADD CONSTRAINT "��������_PK" PRIMARY KEY
	("�������")
GO

ALTER TABLE "Schema"."��������-����������" ADD CONSTRAINT "��������-����������_PK" PRIMARY KEY
	("�������",
	 "�����")
GO

ALTER TABLE "Schema"."����������" ADD CONSTRAINT "����������_PK" PRIMARY KEY
	("�����")
GO

ALTER TABLE "Schema"."��������-����������" ADD CONSTRAINT "��������-����������_��������_FK" FOREIGN KEY
	("�������")
	REFERENCES "Schema"."��������"
	("�������")
	ON DELETE CASCADE
GO

ALTER TABLE "Schema"."��������-����������" ADD CONSTRAINT "��������-����������_����������_FK" FOREIGN KEY
	("�����")
	REFERENCES "Schema"."����������"
	("�����")
	ON DELETE CASCADE
GO

