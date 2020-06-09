DROP TABLE IF EXISTS wf_doctypes_master;

--

CREATE TABLE wf_doctypes_master (
    id SERIAL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name)
);
