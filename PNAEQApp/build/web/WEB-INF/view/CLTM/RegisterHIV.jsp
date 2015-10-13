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
            <td class="inputField">
                <select name="firstKit">
                    <option value="NO">Select option</option>
                    <option value="DETERMINE">Determine HIV1/2</option>
                    <option value="UNIGOLD">Unigold HIV1/2</option>
                </select>
            </td>
            <td>1st Kit Expire Date:</td>
            <td class="inputField">
                <input type="text"
                            size="10"
                           maxlength="10"
                           id="firstKitValidity"
                           name="firstKitValidity"
                           value="${param.firstKitValidity}">
            </td>
        </tr>
        <tr class="blue">
            <td>2nd Kit Name:</td>
            <td class="inputField">
                <select name="secondKit">
                    <option value="NO">Select option</option>
                    <option value="DETERMINE">Determine HIV1/2</option>
                    <option value="UNIGOLD">Unigold HIV1/2</option>
                </select>
            </td>
            <td>2nd Kit Expire Date:</td>
            <td class="inputField">
                <input type="text"
                        size="10"
                        maxlength="10"
                       id="secondKitValidity"
                           name="secondKitValidity"
                           value="${param.secondKitValidity}">
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
                       id="secondKitValidity"
                       name="secondKitValidity"
                       value=""/>
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
                <td class="inputField">
                     <select name="firstTestResult">
                        <option value="NO">Select option</option>
                        <option value="R">Reactive</option>
                        <option value="NR">Not-Reactive</option>
                    </select>
                </td>
                <td class="inputField">
                     <select name="secondTestResult">
                        <option value="NO">Select option</option>
                        <option value="R">Reactive</option>
                        <option value="NR">Not Reactive</option>
                        <option value="NT">Not Tested</option>
                    </select>
                </td>
                <td class="inputField">
                     <select name="finalTestResult">
                        <option value="NO">Select option</option>
                        <option value="P">Positive</option>
                        <option value="N">Negative</option>
                        <option value="IC">Inconclusive</option>
                    </select>
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