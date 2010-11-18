
<%@ page import="gecko.TietoIssue" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tietoIssue.label', default: 'TietoIssue')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tietoIssueInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.issueProduct.label" default="Issue Product" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tietoIssueInstance, field: "issueProduct")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.issueDescription.label" default="Issue Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tietoIssueInstance, field: "issueDescription")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.issueSummary.label" default="Issue Summary" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tietoIssueInstance, field: "issueSummary")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.company.label" default="Company" /></td>
                            
                            <td valign="top" class="value"><g:link controller="company" action="show" id="${tietoIssueInstance?.company?.id}">${tietoIssueInstance?.company?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tietoIssue.companyContact.label" default="Company Contact" /></td>
                            
                            <td valign="top" class="value"><g:link controller="companyContact" action="show" id="${tietoIssueInstance?.companyContact?.id}">${tietoIssueInstance?.companyContact?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${tietoIssueInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
