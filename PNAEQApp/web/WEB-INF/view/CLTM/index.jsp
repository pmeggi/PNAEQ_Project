<%-- 
    Document   : supervisorMenu
    Created on : Oct 9, 2015, 1:26:33 AM
    Author     : Pinki Meggi
--%>

<div id="indexLeftColumn" class="alignLeft">
    <div id="welcomeMenu" class="alignLeft">
        <p id="welcomeText"> CLT Member <br>
            ID: 16<br>
            Name: Tomas Dimas<br><br>
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
       <a href="<c:url value='/eqa?type=HIV&u=CLTM'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">HIV Serol.</span>
            <img src="${initParam.categoriesImagePath}hiv1.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
       <a href="<c:url value='/eqa?type=HIVPCR&u=CLTM'/>">
            <span class="categoryLabel"></span>
            <span class="categoryLabelText">HIV PCR</span>
            <img src="${initParam.categoriesImagePath}hiv3.jpeg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
        <a href="<c:url value='/eqa?type=MalariaMicro&u=CLTM'/>">
           <span class="categoryLabel"></span>
            <span class="categoryLabelText">MALARIA MICRO.</span>
            <img src="${initParam.categoriesImagePath}malaria4.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
        <a href="<c:url value='/eqa?type=Malaria&u=CLTM'/>">
           <span class="categoryLabel"></span>
            <span class="categoryLabelText">MALARIA Serol.</span>
            <img src="${initParam.categoriesImagePath}malaria1.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
    <div class="categoryBox">
        <a href="<c:url value='/eqa?type=TB&u=CLTM'/>">
           <span class="categoryLabel"></span>
            <span class="categoryLabelText">TB Baccilo.</span>
            <img src="${initParam.categoriesImagePath}tuberculosis.jpg" alt="Dairy" class="categoryImage">
        </a>
    </div>
</div>