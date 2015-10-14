# PNAEQ - National Programme of External Quality Assessment in Ministry of Health of Mozambique
This is the readme.md file of PNAEQ Project, the thesis for Computer Science Master Course at University of Trento, Italy.

## Project Description
The main is goal of this project is to analysis, design and implement a web application that allows to manage the data and
produce reports for PNAEQ, related to HIV, Malaria and TB blood tests.
The main actors are Laboratories Supervisors, EQAs Coordinators, Central Logistic Team(CLT) Members and system adminstrators.

## Architecture
The application is devolved according to the following architetcure:
![Alt text](architecture1.png?raw=true "vLifeCoach Architecture")

## Module Description
The vLifeCoach Architecture is composed by following components:
* **Data Services (implemented using SOAP Technology):**
  <br><br>**1- vLifeCoachPeopleDBService** is a web service that provides access to the local database SQLITE where all      
  information related to the Person profile, health and life measurements, goals and reminders are recorded.
  <br>**2- vLifeCoachExternalService** is a web service that provides access to external datasources and services;
  <br>All these services receive requests and response from/to the **Storage Service - vLifeCoachStorageService**.
  
* **Business Logic Services (implemented using REST Technology):**
  <br><br>**3- vLifeCoachPeopleService** is a web service that serves all requests related to the person profile, person 
          helath and life measurements and measures types;
  <br>**4- vLifeCoachGoalService** is a web service that serves all requests related to the person goals;
  <br>**5- vLifeCoachTaskService** is a web service that serves all requests related to the person reminders;
  <br>**6- vLifeCoachTrackingService** is a web service that serves all requests related to person goals/reminders tracking;
  <br> All these services receive requests from the **Process Centric Service - vLifeCoachService** and get data from the 
      data layer **Storage Service - vLifeCoachStorageService** and processes it to send results back.

* **Process Centric Services (implemented using REST Technology):**
  <br>**7- vLifeCoachService** is a web service that serves all requests coming from console application myVirtualCoachApp and redirects the request to proper **Business Logic Service**.


* **User Interface (Console Java Application):**
  <br>**8- myVirtualCoachApp** is an client console java application which calls the **Process Centric Service - vLifeCoachService** to provide to the users with the application functionalities.



## Link to Documentation
The link to vLifeCoachService can be found [here][1].

## Author Information
This project was developed by:<br><br>
&nbsp;&nbsp;Pinki Meggi<br>
&nbsp;&nbsp;Matricula No. 136133<br>
&nbsp;&nbsp;Email: pinki.meggi@gmail.com<br>

[1]: https://github.com/pmeggi/introsde_finalproject/blob/master/vLifeCoach_Documentation.pdf
