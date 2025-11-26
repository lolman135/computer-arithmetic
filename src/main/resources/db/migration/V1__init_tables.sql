
CREATE TABLE IF NOT EXISTS users
(
    username character varying(50) NOT NULL,
    password character varying(70) NOT NULL,
    creditnumber integer,
    email character varying(50) NOT NULL,
    enabled smallint NOT NULL,
    nickname character varying(50) NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (username),
    CONSTRAINT users_email_key UNIQUE (email)
);


CREATE TABLE IF NOT EXISTS authorities
(
    username character varying(50)  NOT NULL,
    authority character varying(50) NOT NULL,
    CONSTRAINT authorities_username_authority_key UNIQUE (username, authority),
    CONSTRAINT authorities_username_fkey FOREIGN KEY (username)
        REFERENCES users (username) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


CREATE TABLE IF NOT EXISTS feedback
(
    id serial NOT NULL,
    username character varying(50) NOT NULL,
    theme character varying(100),
    question character varying(400) NOT NULL,
    answer character varying(400),
    question_date date NOT NULL,
    answer_date date,
    CONSTRAINT question_pkey PRIMARY KEY (id)
);
