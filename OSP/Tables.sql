CREATE TABLE Person(
id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50)
);

CREATE TABLE Account(
GamerTag VARCHAR(30) PRIMARY KEY,
Server INT,
PersonId INT,
Gold INT,
Dust INT
);

CREATE TABLE Card(
id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
CardName VARCHAR(45) NOT NULL,
CardSet INT NOT NULL,
Rarity INT NOT NULL,
CardType INT NOT NULL,
CardClass INT NOT NULL,
Race INT,
CardTextInHand VARCHAR(300),
FlavorText VARCHAR(500)
);
ALTER TABLE Card ADD Collectible BIT NOT NULL;
ALTER TABLE Card ADD ArtistName VARCHAR(100);
ALTER TABLE Card ADD Cost INTEGER;

CREATE TABLE User_Has_Card(
Account_Gamertag VARCHAR(30),
CardId INTEGER,
Count INTEGER,
Golden BIT
);

CREATE TABLE Game(
id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
Opp_GamerTag VARCHAR(30) NOT NULL,
Account_GamerTag VARCHAR(30) NOT NULL,
Opp_Class INT NOT NULL,
Account_Class INT NOT NULL,
GameResult INT,
Gamedata TEXT,
Gametime TIMESTAMP
);

CREATE TABLE Deck(
id INTEGER NOT NULL DEFAULT AUTOINCREMENT PRIMARY KEY,
DeckClass INTEGER,
DeckName VARCHAR(45)
);

CREATE TABLE Deck_Has_Card(
Deck_id INTEGER,
Card_id INTEGER,
Card_count INTEGER
);

CREATE TABLE Cardset(
id INTEGER PRIMARY KEY,
SetName VARCHAR(100),
SetReleaseDate TIMESTAMP
);

CREATE TABLE CardClass(
id INTEGER PRIMARY KEY,
ClassName VARCHAR(30)
);

CREATE TABLE Rarity(
id INTEGER PRIMARY KEY,
RarityName VARCHAR(30)
);

CREATE TABLE CardType(
id INTEGER PRIMARY KEY,
TypeName VARCHAR(30)
);

CREATE TABLE Race(
id INTEGER PRIMARY KEY,
RaceName VARCHAR(30)
);

CREATE TABLE User_Has_Deck(
Account_Gamertag VARCHAR(30),
DeckId INTEGER
);