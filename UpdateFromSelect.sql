--Example

UPDATE AspNetUsers  
SET EmailConfirmed = 1, LastUpdatedDate = GETDATE()
FROM (
    select L.LoginProvider, U.* 
from AspNetUserLogins L 
left join AspNetUsers U on U.Id = L.UserId ) temp
WHERE 
   AspNetUsers.Id = temp.Id
