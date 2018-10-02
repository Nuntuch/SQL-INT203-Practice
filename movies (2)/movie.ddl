-- Generated by Oracle SQL Developer Data Modeler 18.1.0.082.1035
--   at:        2018-10-02 18:18:12 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE celebs (
    celeb_id          NUMBER(6) NOT NULL,
    celeb_name        VARCHAR2(50) NOT NULL,
    celeb_age         NUMBER(3),
    movies_movie_id   NUMBER(6) NOT NULL
);

ALTER TABLE celebs ADD CONSTRAINT celebs_pk PRIMARY KEY ( celeb_id );

CREATE TABLE movies (
    movie_id     NUMBER(6) NOT NULL,
    movie_name   VARCHAR2(30) NOT NULL
);

ALTER TABLE movies ADD CONSTRAINT movies_pk PRIMARY KEY ( movie_id );

ALTER TABLE celebs
    ADD CONSTRAINT celebs_movies_fk FOREIGN KEY ( movies_movie_id )
        REFERENCES movies ( movie_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
