<%-- 
    Document   : HIVEQAList
    Created on : Oct 9, 2015, 5:53:02 PM
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
        <p><a href="<c:url value='/home?u=CLTM'/>">Home</a></p>
    </div>
    <br><br><br><br>
    <div id="menu" class="alignLeft">
        <p><a href="<c:url value='/viewNotifications'/>">View all Notifications</a></p>
    </div>
    <br><br><br><br>
    <div id="menu" class="alignLeft">
    <p><a href="<c:url value='/logout'/>">Log Out</a></p>
    </div>
</div>

<div id="indexRightColumn">
    <h2> HIV PCR Trails</h2>
    <table id="eqaTable">
        <tr class="header">
            <th>No.</th>
            <th>Begin Date</th>
            <th>Deadline</th>
            <th>Status</th>
            <th>Options</th>
        </tr>
        <tr class="lightBlue">
            <td>4</td>
            <td>20-06-2015</td>
            <td>20-07-2015</td>
            <td>CREATED</td>
            <td>
                 <a href="<c:url value='/register?type=HIVPCR&u=CLTM'/>">
                    <img class="icon" src="img/edit.png" title="Register Results">
                </a> 
            </td>
        </tr>
        <tr class="blue">
            <td>3</td>
            <td>20-01-2015</td>
            <td>20-02-2015</td>
            <td>REJECTED</td>
            <td>
                 <a href="<c:url value='/reregister?type=HIVPCR&u=CLTM'/>">
                    <img class="icon" src="img/re-register.gif" title="Re-Register Results">
                </a>
            </td>
        </tr>
        <tr class="lightBlue">
            <td>2</td>
            <td>20-06-2014</td>
            <td>20-07-2014</td>
            <td>PUBLISHED</td>
            <td>
                 <a href="<c:url value='/view?type=HIV&u=CLTM'/>">    
                     <img class="icon" src="img/hide.gif" title="View Results">
                </a>
            </td>
        </tr>
        <tr class="blue">
            <td>1</td>
            <td>20-01-2014</td>
            <td>20-02-2014</td>
            <td>PUBLISHED</td>
            <td>
                <a href="Supervisor/registerHIV.jsp'/>">
                    <img class="icon" src="img/hide.gif" alt="View Results">
                </a>
                <a href="Supervisor/registerHIV.jsp'/>">
                    <img class="icon" src="img/icon_report.gif" alt="View Report">
                </a>
            </td>
        </tr>
      </table>
</div>