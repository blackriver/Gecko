

<%@ page import="gecko.TietoIssue" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tietoIssue.label', default: 'TietoIssue')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${tietoIssueInstance}">
            <div class="errors">
                <g:renderErrors bean="${tietoIssueInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${tietoIssueInstance?.id}" />
                <g:hiddenField name="version" value="${tietoIssueInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="issueProduct"><g:message code="tietoIssue.issueProduct.label" default="Issue Product" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tietoIssueInstance, field: 'issueProduct', 'errors')}">
                                    <g:textField name="issueProduct" value="${tietoIssueInstance?.issueProduct}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="issueDescription"><g:message code="tietoIssue.issueDescription.label" default="Issue Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tietoIssueInstance, field: 'issueDescription', 'errors')}">
                                    <g:textField name="issueDescription" value="${tietoIssueInstance?.issueDescription}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="issueSummary"><g:message code="tietoIssue.issueSummary.label" default="Issue Summary" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tietoIssueInstance, field: 'issueSummary', 'errors')}">
                                    <g:textField name="issueSummary" value="${tietoIssueInstance?.issueSummary}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="company"><g:message code="tietoIssue.company.label" default="Company" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tietoIssueInstance, field: 'company', 'errors')}">
                                    <g:select name="company.id" from="${gecko.Company.list()}" optionKey="id" value="${tietoIssueInstance?.company?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="companyContact"><g:message code="tietoIssue.companyContact.label" default="Company Contact" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: tietoIssueInstance, field: 'companyContact', 'errors')}">
                                    <g:select name="companyContact.id" from="${gecko.CompanyContact.list()}" optionKey="id" value="${tietoIssueInstance?.companyContact?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
        <g:render template="/footer" />
    </body>
</html>
