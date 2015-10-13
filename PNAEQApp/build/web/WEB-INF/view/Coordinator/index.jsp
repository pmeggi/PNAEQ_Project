<%-- 
    Document   : supervisorMenu
    Created on : Oct 9, 2015, 1:26:33 AM
    Author     : Pinki Meggi
--%>

<div id="indexLeftColumn" class="alignLeft">
    <div id="welcomeMenu" class="alignLeft">
        <p id="welcomeText"> EQA Coordinator <br>
            ID: 13<br>
            Name: Maria Santos<br><br>
        </p>
    </div>
    <br><br><br><br><br><br><br><br>
    <div id="menu" class="alignLeft">
        <p><a href="viewNotifications.jsp">View all Notifications</a></p>  
    </div>
    <br><br><br><br>
    <div id="menu" class="alignLeft">
        <p><a href="<c:url value='logout'/>">Log Out</a></p>
    </div>
</div>

<div id="indexRightColumn">
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=HIV&u=Coordinator'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">HIV Serol.</span>
            <img src="${initParam.categoriesImagePath}hiv1.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
 
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=HIVPCR&u=Coordinator'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">HIV PCR</span>
            <img src="${initParam.categoriesImagePath}hiv3.jpeg" alt="Dairy" class="categoryImage">
        </a>
    </div>
</div>