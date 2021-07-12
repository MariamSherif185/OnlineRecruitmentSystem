select  Name 
from Employer
FULL JOIN Announcements
ON Employer.Employer_ID = Announcements.Employer_ID
WHERE NOT  month(Announcements.Announcement_Date)= 4 
EXCEPT select  Name 
from Employer
FULL JOIN Announcements
ON Employer.Employer_ID = Announcements.Employer_ID
where month(Announcements.Announcement_Date)= 4 

