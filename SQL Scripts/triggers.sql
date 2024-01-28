use elidek;
DELIMITER //
CREATE TRIGGER chied_start_date BEFORE insert  on project
for each row
begin
if (new.start_date < (select start_date from researcher 
where new.chief_id= researcher_id ))
then signal sqlstate '45007' set message_text = 'Error on chief start date';
 end if;

END; //


CREATE TRIGGER del_date BEFORE INSERT ON Deliverable FOR EACH ROW
BEGIN

IF (NEW.date < (SELECT start_date FROM Project AS P WHERE P.Project_id = NEW.projectid))
OR (NEW.date > (SELECT end_date FROM Project AS P WHERE P.Project_id = NEW.projectid)) THEN 
signal sqlstate '45007' set message_text = 'Error on start or end date';
END IF; 

END;//


CREATE TRIGGER ev_date BEFORE INSERT ON evaluation FOR EACH ROW
BEGIN

IF((NEW.Date > (SELECT start_date FROM Project AS P WHERE P.Evaluation_id = NEW.Evaluation_id))
) THEN
signal sqlstate '45007' set message_text = 'Error on evaluation date';

END IF;


END;//

CREATE TRIGGER abbr before INSERT ON organization
FOR EACH ROW
BEGIN

SET NEW.abbreviation = substr(NEW.name,1,3);

END; //


CREATE TRIGGER check_age before INSERT ON researcher
FOR EACH ROW
BEGIN 


SET NEW.age = (YEAR(NOW()) - YEAR(new.BirthDate));

END; //

CREATE TRIGGER evaluator_org  before insert on project 
for each row
begin
if (new.evaluator_id in (
select r.researcher_id from project p 
join organization o on o.org_id=p.organization_id
join researcher r on r.organization_id=o.org_id 
where p.project_id=new.project_id))
then  signal sqlstate '45000' set message_text = 'The evaluator cannot work in the organization which funds the project';

end if;
end;//


CREATE TRIGGER chief_ins AFTER INSERT ON Project 
FOR EACH ROW
BEGIN
IF(NEW.chief_id NOT IN (SELECT researcher_id FROM works)) THEN
INSERT INTO works (project_id, researcher_id) values (New.project_id, New.chief_id) ;

END IF;

END; //


CREATE TRIGGER fix_r_org_id after insert on project
for each row
begin

update researcher r set r.organization_id = new.organization_id where new.chief_id = r.researcher_id;

END; //

CREATE TRIGGER add_category before insert on organization
for each row
begin

if (new.budget_Ministry>100000 AND (new.budget_Priv is null or new.budget_Priv=0) AND (new.budget_Equity IS NULL or new.budget_Equity=0))
then set new.category = 'University';
elseif (new.budget_Ministry>100000 AND new.budget_Priv>100000 AND (new.budget_Equity IS NULL or new.budget_Equity=0) )
then set new.category ='Research Centre';
elseif ((new.budget_Ministry IS NULL or new.budget_Ministry=0) AND (new.budget_Priv IS NULL or new.budget_Priv=0) AND new.budget_Equity>100000)
then set new.category = 'Company';
end if;
end;//

