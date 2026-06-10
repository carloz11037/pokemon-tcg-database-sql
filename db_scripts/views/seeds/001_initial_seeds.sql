-- Seed tbl_collection
INSERT INTO tbl_collection (collectionSetName, TotalCardsInCollection)
VALUES
('Base Set', 102),
('Jungle', 64),
('Fossil', 62);

-- Seed tbl_types
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Electric'),
('Psychic'),
('Fighting'),
('Colorless');

-- Seed tbl_stage
INSERT INTO tbl_stage (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed tbl_cards
INSERT INTO tbl_cards (hp, name, info, attack, dammage, weak, resis, retreat, CardsInCollection, fk_collection_id, fk_type_id, fk_stage_id)
VALUES
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water', '1', 1, 1, 1, 1),
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', NULL, '1', 1, 1, 2, 1),
(50, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '20', 'Electric', NULL, '1', 1, 1, 3, 1),
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Shock', '20', 'Fighting', 'Steel', '1', 1, 1, 4, 1),
(60, 'Jigglypuff', 'Balloon Pokémon', 'Pound', '20', 'Fighting', 'Psychic', '1', 1, 1, 7, 1),
(100, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', NULL, '4', 1, 2, 7, 1);
