ALTER TABLE tbCiclista ADD COLUMN eqNombre char(10);

ALTER TABLE tbCiclista DROP COLUMN eqNombre;

ALTER TABLE tbCiclista ALTER COLUMN eqNombre SET NOT NULL;

ALTER TABLE tbCiclista ALTER COLUMN eqNombre DROP NOT NULL;

ALTER TABLE tbCiclista ADD CONSTRAINT eqNombre FOREIGN KEY (eqNombre) REFERENCES tbEquipo (eqNombre) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE tbCiclista DROP CONSTRAINT eqNombre;

ALTER TABLE tbCiclista ALTER COLUMN eqNombre SET DEFAULT 'Movstar';

ALTER TABLE tbCiclista ALTER COLUMN eqNombre DROP DEFAULT;

ALTER TABLE tbCiclista ALTER COLUMN eqNombre TYPE varchar(40);

ALTER TABLE tbCiclista RENAME COLUMN eqNombre TO eqNombreN;

ALTER TABLE tbCiclista RENAME TO tbCiclistaN


select * from tbCiclistaN

