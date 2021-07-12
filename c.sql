select top 1 Name 
from Employer  
FULL JOIN Announcements
ON Employer.Employer_ID = Announcements.Employer_ID

WHERE  month(Announcements.Announcement_Date)= 4

group by Announcements.Employer_ID , Name
order by count(Announcements.Employer_ID)

