<%-- 
    Document   : RegisterHIV
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
                <select name="kit">
                    <option value="NO">Select option</option>
                    <option value="1">First Response Malaria Antigen PF</option>
                    <option value="2">SD Bio Line Malaria Antigen PF</option>
                    <option value="3">ICI Malaria Diagnostics PF</option>
                </select>
            </td>
            <td>Kit Expire Date:</td>
            <td class="inputField">
                <input type="text"
                            size="10"
                           maxlength="10"
                           id="kitValidity"
                           name="kitValidity"
                           value="${param.kitValidity}">
            </td>
        </tr>
        <tr class="lightBlue">
            <td>Recieved Date:</td>
            <td class="inputField">
                <input type="text"
                        size="10"
                        maxlength="10"
                        id="recievedDate"
                        name="recieveDate"
                        value="">
            </td>
            <td>Process Date:</td>
            <td class="inputField">
                <input type="text"
                       size="10"
                       maxlength="10"
                       id="processDate"
                       name="processDate"
                       value=""/>
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
                     <select name="testResult">
                        <option value="NO">Select option</option>
                        <option value="P">Positive</option>
                        <option value="N">Negative</option>
                        <option value="IC">Inconclusive</option>
                    </select>
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
                  <input type="text"
                            size="80"
                           maxlength="80"
                           id="comments"
                           name="comments"
                           value="${param.comments}">
                </td>
            </tr>
             
            <tr class="lightBlue">
                <td colspan="4">
                    <input type="submit" value="submit">
                </td>
            </tr>
            
        </table>
    </form>
</div>