
<%@ page import="gecko.TietoIssue" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tietoIssue.label', default: 'TietoIssue')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'tietoIssue.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="issueProduct" title="${message(code: 'tietoIssue.issueProduct.label', default: 'Issue Product')}" />
                        
                            <g:sortableColumn property="issueDescription" title="${message(code: 'tietoIssue.issueDescription.label', default: 'Issue Description')}" />
                        
                            <g:sortableColumn property="issueSummary" title="${message(code: 'tietoIssue.issueSummary.label', default: 'Issue Summary')}" />
                        
                            <th><g:message code="tietoIssue.company.label" default="Company" /></th>
                        
                            <th><g:message code="tietoIssue.companyContact.label" default="Company Contact" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tietoIssueInstanceList}" status="i" var="tietoIssueInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${tietoIssueInstance.id}">${fieldValue(bean: tietoIssueInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: tietoIssueInstance, field: "issueProduct")}</td>
                        
                            <td>${fieldValue(bean: tietoIssueInstance, field: "issueDescription")}</td>
                        
                            <td>${fieldValue(bean: tietoIssueInstance, field: "issueSummary")}</td>
                        
                            <td>${fieldValue(bean: tietoIssueInstance, field: "company")}</td>
                        
                            <td>${fieldValue(bean: tietoIssueInstance, field: "companyContact")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tietoIssueInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
