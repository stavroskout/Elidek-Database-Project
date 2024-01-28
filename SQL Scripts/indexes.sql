CREATE UNIQUE INDEX del_idx ON Deliverable (Title, projectid); #unique index to prevent duplicates

CREATE UNIQUE INDEX wrk_idx ON works (researcher_id, project_id); #unique index to prevent duplicates

CREATE UNIQUE INDEX relation_idx ON relates(project_id, field_name); #unique index to prevent duplicates


CREATE INDEX p_id ON Project(project_id, organization_id); #index because they are used often in queries

CREATE INDEX researcer_idx ON researcher(researcher_id, organization_id); #index because of many researchers
