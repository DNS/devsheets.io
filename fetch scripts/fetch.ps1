https://www.devsheets.io/sheets?technology=TypeScript
https://www.devsheets.io/sheets?technology=Vue.js
https://www.devsheets.io/sheets?technology=SQL
https://www.devsheets.io/sheets?technology=Linux
https://www.devsheets.io/sheets?technology=Kotlin
https://www.devsheets.io/sheets?technology=Next.js
https://www.devsheets.io/sheets?technology=Nginx
https://www.devsheets.io/sheets?technology=MongoDB
https://www.devsheets.io/sheets?technology=MySQL
https://www.devsheets.io/sheets?technology=Node.js
https://www.devsheets.io/sheets?technology=NPM
https://www.devsheets.io/sheets?technology=PostgreSQL
https://www.devsheets.io/sheets?technology=Python


1..6 | %{ $(iwr "https://www.devsheets.io/sheets?page=$_").Links.href } > links.txt
gc ./links.txt | sls /sheets/ | %{ 'https://www.devsheets.io' + $_ } > links2.txt


####################
####################

# save page we

# rename
gci *.html | %{ $a=$_.Name -replace ' Cheat Sheet - DevSheets'; mi $_ -Destination $a }
gci *.html | %{ $a=$_.Name -replace ' Fundamentals'; mi $_ -Destination $a }        
