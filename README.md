# PNAEQ - National Programme of External Quality Assessment in Ministry of Health of Mozambique
This is the readme.md file of PNAEQ Project, the thesis project for Computer Science Master Course at University of Trento, Italy.

## Project Description
The main is goal of this project is to analysis, design and implement a web application that allows to manage the data and
produce reports for PNAEQ, related to HIV, Malaria and TB blood tests.
The main actors are Laboratories Supervisors, EQAs Coordinators, Central Logistic Team(CLT) Members and system adminstrators.

## Architecture
The application is being developed according to the following architetcure:
![Alt text](architecture.jpg?raw=true "PNAEQ Architecture")

The technologies used are according to the followingg:
![Alt text](Technologies.png?raw=true "PNAEQ Web Technologies")


## Depoyment Instructions
####Step 0. Prerequisite
JDK 7 or above installed.
To check if you have JDK 7 installed type javac - version in shell/command prompt.

####Step 1. Download Glassfish
You can download GlassFish Application Server,  **glassfish-4.1.1-web.zip** (from the download page [here](https://glassfish.java.net/download.html).

####Step 2. Install Glassfish
Extract the Zip in the directory where you want to have GlassFish installed.

####Step 3. Start and Stop Glassfish Server
From the Glassfish installed directory execute following command:<br>
&nbsp;&nbsp;&nbsp;&nbsp;**bin/asadmin start-domain**<br>    
To stop Glassfish server, you can issue **bin/asadmin stop-domain**

####Step 4. Deploy PNAEQApp.war
Go to **http://localhost:4848** => this will open administration console of Glassfish server.<br>
If login page appears, use login=admin and no password.
Select **Applications** option from left side menu.<br>
Deploy [PNAEQApp.war][1] file in **"Packaged File to be Uploaded to the Server"** option.


## Mockups Testing
To test the application mockups go to **http://localhost:8080/PNAEQApp**<br>
Use the following users to test the mockups:<br>
&nbsp;&nbsp;&nbsp;&nbsp;supervisor<br>
&nbsp;&nbsp;&nbsp;&nbsp;coordinator<br>
&nbsp;&nbsp;&nbsp;&nbsp;cltm<br>
The password is 123456

## Link to Documentation
The link to PNAEQ Project report can be found here (not available). 

## Author Information
This project was developed by:<br><br>
&nbsp;&nbsp;Pinki Meggi<br>
&nbsp;&nbsp;Matricula No. 136133<br>
&nbsp;&nbsp;Email: pinki.meggi@gmail.com<br>

[1]: https://github.com/pmeggi/PNAEQ_Project/blob/master/PNAEQApp.war
