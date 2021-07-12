SELECT distinct Name ,Available_positions
From Employer, Announcements
WHERE Employer.Employer_ID = Announcements.Employer_ID
AND year(Announcements.Announcement_Date) = 2020
AND month(Announcements.Announcement_Date)= 4


