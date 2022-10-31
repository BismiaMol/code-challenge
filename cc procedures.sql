create database procedure1;
use procedure1;
DELIMITER $$
create procedure `usp_PetProcedureDetails`(in ProcedureType char(50))
begin
select ProcedureHistory.PetID, Pet.Name as 'Pet Name', PetOwner.Name as 'Owner Name', ProcedureHistory.Description 
from ProcedureHistory
join Pet
join PetOwner
where ProcedureHistory.PetID=Pet.PetID AND Pet.OwnerID=PetOwner.OwnerID AND ProcedureHistory.ProcedureType=ProcedureType;
end$$

 call usp_PetProcedureDetails('Surgery');