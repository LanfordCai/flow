DROP TABLE IF EXISTS wf_access_contexts;

--

CREATE TABLE wf_access_contexts (
    id SERIAL,
    name VARCHAR(100) NOT NULL,
    active SMALLINT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (name)
);
