<%-- 
    Document   : RegisterMalariaMicro
    Created on : Oct 11, 2015, 9:13:22 PM
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
    <h2> LAB 100 - Results MALARIA MICROSCOPY Trial No. 4</h2>
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
            <td class="eqaInfoColumn">Edson Soares</td>
            <td>Contact:</td>
            <td class="eqaInfoColumn">+258 824698300</td>
        </tr>
    </table>
    <br>
    <form id="eqaRegisterForm" action="<c:url value='saveResults'/>" method="post">
    <table id="eqaRegisterTable">
        <tr>
            <th colspan="4">Lab Panel Results:</th>
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
            <td>Processed Date:</td>
            <td class="inputField">
                <input type="text"
                       size="10"
                       maxlength="10"
                       id="processedDate"
                       name="processedDate"
                       value=""/>
            </td>
        </tr>
    </table>
        
        <table id="eqaRegisterTable">
            <tr>
                <td class="secondHeader"></td>
                <td class="secondHeader">Result</td>
                <td class="secondHeader">Parasite Count</td>
                <td class="secondHeader">Lynphocytes Count</td>
                <td class="secondHeader">Density</td>
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
                    <td>MAL0${sampleCode}</td>
                    <td class="inputField">
                        <select name="testResult">
                            <option value="NO">Select option</option>
                            <option value="P">P1</option>
                            <option value="N">P2</option>
                            <option value="N">P2+</option>
                            <option value="N">P3</option>
                            <option value="N">P3+</option>
                            <option value="N">P4</option>
                            <option value="N">P5</option>
                            <option value="N">P6</option>
                            <option value="N">P2P3</option>
                            <option value="N">P2P3+</option>
                        </select>
                    </td>
                    <td class="inputField">
                        <input type="text"
                                size="10"
                                maxlength="10"
                                id="secondKitValidity"
                                name="secondKitValidity"
                                value=""/>
                    </td>
                    <td class="inputField">
                         <input type="text"
                                size="10"
                                maxlength="10"
                                id="hivod"
                                name="hivod"
                                value=""/>
                    </td>
                    <td class="inputField">
                         <input type="text"
                                size="10"
                                maxlength="10"
                                id="hivod"
                                name="hivod"
                                value=""/>
                    </td>
                </tr>
            </c:forEach>
            
            <tr class="lightBlue">
                <td>Comments:</td>
                <td colspan="5" class="inputField">
                  <input type="text"
                            size="80"
                           maxlength="80"
                           id="comments"
                           name="comments"
                           value="${param.comments}">
                </td>
            </tr>
             
            <tr class="lightBlue">
                <td colspan="5">
                    <input type="submit" value="submit">
                </td>
            </tr>
            
        </table>
    </form>
</div>