DROP TABLE IF EXISTS wf_docactions_master;

--

CREATE TABLE wf_docactions_master (
    id SERIAL,
    name VARCHAR(100) NOT NULL,
    reconfirm SMALLINT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name)
);
