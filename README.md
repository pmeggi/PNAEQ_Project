# PNAEQ - National Programme of External Quality Assessment in Ministry of Health of Mozambique
This is the readme.md file of PNAEQ Project, the thesis project for Computer Science Master Course at University of Trento, Italy.

## Project Description
The main is goal of this project is to analysis, design and implement a web application that allows to manage the data and
produce reports for PNAEQ, related to HIV, Malaria and TB blood tests.
The main actors are Laboratories Supervisors, EQAs Coordinators, Central Logistic Team(CLT) Members and system adminstrators.

## Architecture
The application is beign devolved according to the following architetcure:
![Alt text](architecture.png?raw=true "PNAEQ Architecture")

## Depoyment Instructions
**Step 0. Prerequisite**<br>
JDK 7 or above installed.
To check if you have JDK 7 installed type javac - version in shell/command prompt.

**Step 1. Download Glassfish**<br>
You can download GlassFish Application Server from the download page [here](https://glassfish.java.net/download.html).

**Step 2. Install Glassfish**<br>
Extract the Zip in the directory where you want to have GlassFish installed.

**Step 3. Start and Stop Glassfish Server**<br>
From the Glassfish installed directory execute following command:<br>
&nbsp;&nbsp;&nbsp;&nbsp;**bin/asadmin start-domain**<br>    
To stop Glassfish server, you can issue **bin/asadmin stop-domain**

**Step 4. Depoy PNAEQApp.war**<br>
Go to **http://localhost:4848** => this will open administration console of Glassfish server.<br>
Select **Applications** option from left side menu.<br>
Deploy PNAEQApp.war[2] file in **"Packaged File to be Uploaded to the Server"** option.


## Link to Documentation
The link to PNAEQ can be found [here][1].

## Author Information
This project was developed by:<br><br>
&nbsp;&nbsp;Pinki Meggi<br>
&nbsp;&nbsp;Matricula No. 136133<br>
&nbsp;&nbsp;Email: pinki.meggi@gmail.com<br>

[1]:
[2]:
