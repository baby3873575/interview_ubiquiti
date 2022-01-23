CREATE TABLE IF NOT EXISTS users (
	user_id serial PRIMARY KEY,
	acct VARCHAR ( 50 ) UNIQUE NOT NULL,
	pwd VARCHAR ( 255 ) NOT NULL,
	fullname VARCHAR ( 255 ),
	created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);
