<%-- 
    Document   : supervisorMenu
    Created on : Oct 9, 2015, 1:26:33 AM
    Author     : Pinki Meggi
--%>

<div id="indexLeftColumn" class="alignLeft">
    <div id="welcomeMenu" class="alignLeft">
        <p id="welcomeText"> Lab Supervisor, <br>
            Antonio Costa<br>
            Lab Code: 100<br><br>
        </p>
    </div>
    <br><br><br><br><br><br><br><br>
    <div id="menu" class="alignLeft">
        <p><a href="viewNotifications.jsp">View all Notifications</a></p>
    </div>
    <br><br><br><br>
    <div id="menu" class="alignLeft">
    <p><a href="<c:url value='/logout'/>">Log Out</a></p>
    </div>
</div>

<div id="indexRightColumn">
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=HIV&u=Supervisor'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">HIV Serol.</span>
            <img src="${initParam.categoriesImagePath}hiv1.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=MalariaMicro&u=Supervisor'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">MALARIA MICRO.</span>
            <img src="${initParam.categoriesImagePath}malaria4.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=Malaria&u=Supervisor'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">MALARIA Serol.</span>
            <img src="${initParam.categoriesImagePath}malaria1.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
</div>