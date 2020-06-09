DROP TABLE IF EXISTS wf_workflow_nodes;

--

CREATE TABLE wf_workflow_nodes (
    id SERIAL,
    doctype_id INT NOT NULL,
    docstate_id INT NOT NULL,
    ac_id INT,
    workflow_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    type TEXT NOT NULL,
    check (type in ('begin', 'end', 'linear', 'branch', 'joinany', 'joinall')),
    PRIMARY KEY (id),
    FOREIGN KEY (doctype_id) REFERENCES wf_doctypes_master(id),
    FOREIGN KEY (docstate_id) REFERENCES wf_docstates_master(id),
    FOREIGN KEY (ac_id) REFERENCES wf_access_contexts(id),
    FOREIGN KEY (workflow_id) REFERENCES wf_workflows(id),
    UNIQUE (doctype_id, docstate_id),
    UNIQUE (workflow_id, name)
);
