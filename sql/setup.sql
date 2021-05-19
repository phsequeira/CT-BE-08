DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Post;

CREATE TABLE Users (
    username TEXT NOT NULL PRIMARY KEY,
    password TEXT NOT NULL
);

CREATE TABLE Post (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title TEXT NOT NULL,
    cost NUMBER NOT NULL,
    body TEXT NOT NULL,
    category TEXT NOT NULL,
    image TEXT,
    phone TEXT,
    location TEXT NOT NULL,
    user_id TEXT REFERENCES Users(username)
);