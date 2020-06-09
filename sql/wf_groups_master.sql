DROP TABLE IF EXISTS wf_groups_master;

--

CREATE TABLE wf_groups_master (
    id SERIAL,
    name VARCHAR(100) NOT NULL,
    group_type TEXT,
    check (group_type in ('G', 'S')),
    PRIMARY KEY (id),
    UNIQUE (name)
);
