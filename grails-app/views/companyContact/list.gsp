
<%@ page import="gecko.CompanyContact" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'companyContact.label', default: 'CompanyContact')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'companyContact.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="contactLoginName" title="${message(code: 'companyContact.contactLoginName.label', default: 'Contact Login Name')}" />
                        
                            <g:sortableColumn property="contactPassword" title="${message(code: 'companyContact.contactPassword.label', default: 'Contact Password')}" />
                        
                            <g:sortableColumn property="contactName" title="${message(code: 'companyContact.contactName.label', default: 'Contact Name')}" />
                        
                            <g:sortableColumn property="phoneNumber" title="${message(code: 'companyContact.phoneNumber.label', default: 'Phone Number')}" />
                        
                            <g:sortableColumn property="contactEmailAddress" title="${message(code: 'companyContact.contactEmailAddress.label', default: 'Contact Email Address')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${companyContactInstanceList}" status="i" var="companyContactInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${companyContactInstance.id}">${fieldValue(bean: companyContactInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: companyContactInstance, field: "contactLoginName")}</td>
                        
                            <td>${fieldValue(bean: companyContactInstance, field: "contactPassword")}</td>
                        
                            <td>${fieldValue(bean: companyContactInstance, field: "contactName")}</td>
                        
                            <td>${fieldValue(bean: companyContactInstance, field: "phoneNumber")}</td>
                        
                            <td>${fieldValue(bean: companyContactInstance, field: "contactEmailAddress")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${companyContactInstanceTotal}" />
            </div>
        </div>
        <g:render template="/footer" />
    </body>
</html>
