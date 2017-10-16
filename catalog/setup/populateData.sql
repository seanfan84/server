-- Table definitions for the tournament project.
--
-- Put your SQL 'CREATE table' statements in this file; also 'CREATE VIEW'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- DROP DATABASE IF EXISTS catalogapp;

-- CREATE DATABASE catalogapp;

\c catalogapp;

DELETE  FROM product;
DELETE FROM category;
DELETE FROM users;


INSERT INTO users VALUES (1,'admin','admin@catalogapp.com','d57f43ab952965e163cef303287740b408c66596ce3ded7c6d7cfc0966344d60,HoIDf','');

-- if you do not specify column, you have to manually specify id.
-- INSERT INTO category(name) VALUES ('shed');
INSERT INTO category VALUES (1,'shed');
INSERT INTO category VALUES (2,'carport');
INSERT INTO category VALUES (3,'mezzanine');
INSERT INTO category VALUES (4,'stable');
INSERT INTO category VALUES (5,'crossfit rack');


INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('garden shed','a small shed that is suitable as a storage in your garden',499,1,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('industrial shed','heavy duty shed that houses your industrial machinaeries.',6999,1,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('hip roof carport','Modern style that suits your hip roof house.',3999,2,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('gable roof carport','Modern style that suits your hip roof house.',3999,2,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('flat roof carport','Modern style that suits your flat roof house.',2999,2,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('rectangular','add working space to your existing stucture.',2999,3,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('l shape','add working space to your existing stucture.',2999,3,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('u shape','add working space to your existing stucture.',2999,3,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('3 horse stable','horse stable that has 3 cells.',2999,4,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('4 horse stable','horse stable that has 4 cells.',3999,4,1);
INSERT INTO product(name,description,price,category_id,owner_id) VALUES ('freestanding 3 cell','3 cell freestanding crossfit rig.',2999,5,1);



