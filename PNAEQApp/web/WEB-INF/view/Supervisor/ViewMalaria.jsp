<%-- 
    Document   : RegisterHIV
    Created on : Oct 9, 2015, 5:53:02 PM
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
        <p><a href="<c:url value='/home?u=Supervisor'/>">Home</a></p>
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
    <h2> LAB 100 - Results MALARIA Serology Trail No. 4</h2>
        <c:if test="${!empty failureFlag}">
        <p class="error"><fmt:message key="failureError"/></p>
    </c:if>

    <table id="eqaInfoBox">
        <tr>
            <th colspan="4">Trial Details:</th>
        </tr>
        <tr>
            <td>Trial No:</td>
            <td class="eqaInfoColumn">4</td>
            <td>Begin Date:</td>
            <td class="eqaInfoColumn">20-06-2015</td>
        </tr>
        <tr>
            <td>Status:</td>
            <td class="eqaInfoColumn">CREATED</td>
            <td>Deadline Date:</td>
            <td class="eqaInfoColumn">20-07-2015</td>
        </tr>
        <tr>
            <td>Coordinator Name:</td>
            <td class="eqaInfoColumn">Nadia Sitoe</td>
            <td>Contact:</td>
            <td class="eqaInfoColumn">+258 821020436</td>
        </tr>
    </table>
    <br>
    <form id="eqaRegisterForm" action="<c:url value='saveResults'/>" method="post">
    <table id="eqaRegisterTable">
        <tr>
            <th colspan="4">Lab Panel Results:</th>
        </tr>
        <tr class="lightBlue">
            <td> Kit Name:</td>
            <td class="inputField">
                <input readonly="true" type="text"
                            size="30"
                           maxlength="30"
                           id="kit"
                           name="kit"
                           value="First Response Malaria Antigen PF">
            </td>
            <td>Kit Expire Date:</td>
            <td class="inputField">
                <input readonly="true" type="text"
                           size="10"
                           maxlength="10"
                           id="kitValidity"
                           name="kitValidity"
                           value="10-08-2016">
            </td>
        </tr>
        <tr class="lightBlue">
            <td>Recieved Date:</td>
            <td class="inputField">
                <input readonly="true" type="text"
                        size="10"
                        maxlength="10"
                        id="recievedDate"
                        name="recieveDate"
                        value="29-06-2015">
            </td>
            <td>Process Date:</td>
            <td class="inputField">
                <input readonly="true" type="text"
                       size="10"
                       maxlength="10"
                       id="processDate"
                       name="processDate"
                       value="01-07-2015"/>
            </td>
        </tr>
        </table>
        
        <table id="eqaRegisterTable">
            <tr>
                <td class="secondHeader"></td>
                <td class="secondHeader">Test Result</td>
                <td class="secondHeader"></td>
                <td class="secondHeader"></td>
            </tr>
              <c:forEach begin="1" end="6" var="sampleCode">
                <c:choose> 
                    <c:when test="${sampleCode % 2 eq 0}">
                        <tr class="lightBlue">
                    </c:when>
                    <c:otherwise>
                        <tr class="blue">
                    </c:otherwise>
                    </c:choose>
                <td>TDR-MAL0${sampleCode}</td>
                <td class="inputField">
                        <input readonly="true" type="text"
                            size="10"
                           maxlength="10"
                           id="comments"
                           name="comments"
                           value="Positive"/>
                </td>
              <td class="inputField">
                </td>
                <td class="inputField">
                </td>
               </tr>
             </c:forEach>
            
            <tr class="lightBlue">
                <td>Comments:</td>
                <td colspan="3" class="inputField">
                  <input readonly="true"  type="text"
                            size="80"
                           maxlength="80"
                           id="comments"
                           name="comments"
                           value="${param.comments}">
                </td>
            </tr>
             
            <tr class="lightBlue">
                <td colspan="4">
                </td>
            </tr>
            
        </table>
    </form>
</div>