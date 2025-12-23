-- Written by Logan Larrondo

DROP TABLE IF EXISTS Maps;
CREATE TABLE Maps (
    mapName TEXT NOT NULL PRIMARY KEY,
    dlc TEXT
);

DROP TABLE IF EXISTS Items;
CREATE TABLE Items (
    itemName TEXT NOT NULL PRIMARY KEY,
    itemType TEXT NOT NULL,
    dlc TEXT
);

DROP TABLE IF EXISTS Rune;
CREATE TABLE Rune (
    runeName TEXT NOT NULL PRIMARY KEY
);

DROP TABLE IF EXISTS Ancient;
CREATE TABLE Ancient (
    ancientName TEXT NOT NULL PRIMARY KEY,
    mobType TEXT NOT NULL
);

-- Joint table for showing what items come from what maps
DROP TABLE IF EXISTS MapItems;
CREATE TABLE MapItems (
    mapName TEXT NOT NULL,
    itemName TEXT NOT NULL,
    PRIMARY KEY (mapName, itemName),
    FOREIGN KEY (mapName) REFERENCES Maps(mapName),
    FOREIGN KEY (itemName) REFERENCES Items(itemName)
);

-- Joint table to connect runes to items
DROP TABLE IF EXISTS ItemRune;
CREATE TABLE ItemRune (
    itemName TEXT NOT NULL,
    runeName TEXT NOT NULL,
    runeQuantity INTEGER NOT NULL,
    PRIMARY KEY (itemName, runeName),
    FOREIGN KEY (itemName) REFERENCES Items(itemName),
    FOREIGN KEY (runeName) REFERENCES Rune(runeName)
);

-- Joint table to connect Runes to ancients
DROP TABLE IF EXISTS AncientRune;
CREATE TABLE AncientRune (
    ancientName TEXT NOT NULL,
    runeName TEXT NOT NULL,
    runeQuantity INTEGER NOT NULL,
    PRIMARY KEY (ancientName, runeName),
    FOREIGN KEY (ancientName) REFERENCES Ancient(ancientName),
    FOREIGN KEY (runeName) REFERENCES Rune(runeName)
);

-- Joint table to show the loot pool for each Ancient 
DROP TABLE IF EXISTS AncientLoot;
CREATE TABLE AncientLoot (
    ancientName TEXT NOT NULL,
    itemName TEXT NOT NULL,
    PRIMARY KEY (ancientName, itemName),
    FOREIGN KEY (ancientName) REFERENCES Ancient(ancientName),
    FOREIGN KEY (itemName) REFERENCES Items(itemName)
);
