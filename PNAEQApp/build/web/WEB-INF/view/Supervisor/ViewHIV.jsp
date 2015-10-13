<%-- 
    Document   : ViewHIV
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
    <h2> LAB 100 - Results HIV Serology Trail No. 4</h2>
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
            <td class="eqaInfoColumn">Tomas Dimas</td>
            <td>Contact:</td>
            <td class="eqaInfoColumn">+258 824987540</td>
        </tr>
    </table>
    <br>
    <form id="eqaRegisterForm" action="<c:url value='saveResults'/>" method="post">
    <table id="eqaRegisterTable">
        <tr>
            <th colspan="4">Lab Panel Results:</th>
        </tr>
        <tr class="lightBlue">
            <td> 1st Kit Name:</td>
            <td class="inputFieldReadOnly">
                <input readonly="true" stype="text"
                        size="20"
                        maxlength="20"
                       id="firstKitValidity"
                           name="firstKitValidity"
                           value="Determine HIV1/2"/>
            </td>
            <td>1st Kit Expire Date:</td>
            <td class="inputFieldReadOnly">
                <input readonly="true" type="text"
                            size="20"
                           maxlength="20"
                           id="firstKitValidity"
                           name="firstKitValidity"
                           value="26-06-2016">
            </td>
        </tr>
        <tr class="blue">
            <td>2nd Kit Name:</td>
            <td class="inputFieldReadOnly">
                <input readonly="true" type="text"
                        size="20"
                        maxlength="20"
                       id="secondKitValidity"
                           name="secondKitValidity"
                           value="Unigold HIV1/2"/>
            </td>
            <td>2nd Kit Expire Date:</td>
            <td class="inputFieldReadOnly">
                <input readonly="true" type="text"
                        size="20"
                        maxlength="20"
                       id="secondKitValidity"
                           name="secondKitValidity"
                           value="27-06-2016">
            </td>
        </tr>
        <tr class="lightBlue">
            <td>Recieved Date:</td>
            <td class="inputFieldReadOnly">
                <input readonly=true type="text"
                        size="20"
                        maxlength="20"
                        id="recievedDate"
                        name="recieveDate"
                        value="29-06-2015">
            </td>
            <td>Process Date:</td>
            <td class="inputFieldReadOnly">
                <input readonly=true type="text"
                       size="20"
                       maxlength="20"
                       id="processDate"
                       name="processDate"
                       value="10-07-2015"/>
            </td>
        </tr>
    </table>
        
        <table id="eqaRegisterTable">
            <tr>
                <td class="secondHeader"></td>
                <td class="secondHeader">1st Test Result</td>
                <td class="secondHeader">2nd Test Result</td>
                <td class="secondHeader">Final Result</td>
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
                <td>A0${sampleCode}</td>
                <td class="inputFieldReadOnly">
                <input readonly="true" type="text"
                           size="20"
                           maxlength="20"
                           id="comments"
                           name="comments"
                           value="Not-Reactive">
                </td>
                <td class="inputFieldReadOnly">
                <input readonly="true" type="text"
                           size="20"
                           maxlength="20"
                           id="comments"
                           name="comments"
                           value="Not-Tested">
                </td>
                <td class="inputFieldReadOnly">
                     <input readonly="true" type="text"
                           size="20"
                           maxlength="20"
                           id="comments"
                           name="comments"
                           value="Negative">
                </td>
             </tr>
            </c:forEach>
            
                 
            <tr class="lightBlue">
                <td>Comments:</td>
                <td colspan="3" class="inputFieldReadOnly">
                    <input  readonly="true" type="text"
                           size="80"
                           maxlength="80"
                           id="comments"
                           name="comments"
                           value="Nothing.">
                </td>
            </tr>
             
            <tr class="lightBlue">
                <td colspan="4">
                </td>
            </tr>
            
        </table>
    </form>
</div>