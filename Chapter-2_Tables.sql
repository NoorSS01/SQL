-- ###Chapter 2 - TABlES

-- Create the people table that contains the following fields :
CREATE TABLE people (id INTEGER, tag TEXT, name TEXT, age INTEGER, balance INTEGER, is_manager BOOLEAN);

-- Create the transaction table that contains the following fields
CREATE TABLE transactions (id INTEGER, recipient_id INTEGER, sender_id INTEGER, note TEXT, amount INTEGER);

-- Rename "people" Table to users
ALTER TABLE people
RENAME TO users;

-- Rename Tag column to username
ALTER TABLE users 
RENAME COLUMN tag TO username;

-- Add the password TEXT column
ALTER TABLE users 
ADD COLUMN password TEXT;

-- Add the was_successful column to the transaction table ##You can write Alter table in one line also
ALTER TABLE transactions ADD COLUMN was_successfull BOOLEAN;

-- Add the transaction_type column to the transaction table
ALTER TABLE tranasction ADD COLUMN transaction_type TEXT;

-- Drop the was_successful column from the transaction table
ALTER TABLE transaction DROP COLUMN was_successfull;

-- Drop the transaction_type column from the transaction table
ALTER TABLE transaction DROP COLUMN transaction_type;

-- Create a New table named Posts which should contain the following columns
CREATE TABLE posts (id INTEGER, image_url TEXT, description TEXT, author_id INTEGER, is_sponsered BOOLEAN);

-- Write an up migration for the Posts table that achieve the following
-- Change the author_id column name to poster id
ALTER TABLE posts RENAME COLUMN author_id to poster_id;

-- Add a new column named is_edited with a boolean type
ALTER TABLE posts ADD COLUMN is_edited BOOLEAN;

-- DROP the is_sponsered column:
ALTER TABLE posts DROP COLUMN is_sponsered;