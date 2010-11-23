

<%@ page import="gecko.CompanyContact" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'companyContact.label', default: 'CompanyContact')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${companyContactInstance}">
            <div class="errors">
                <g:renderErrors bean="${companyContactInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactLoginName"><g:message code="companyContact.contactLoginName.label" default="Contact Login Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'contactLoginName', 'errors')}">
                                    <g:textField name="contactLoginName" value="${companyContactInstance?.contactLoginName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactPassword"><g:message code="companyContact.contactPassword.label" default="Contact Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'contactPassword', 'errors')}">
                                    <g:passwordField name="contactPassword" value="${companyContactInstance?.contactPassword}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactName"><g:message code="companyContact.contactName.label" default="Contact Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'contactName', 'errors')}">
                                    <g:textField name="contactName" value="${companyContactInstance?.contactName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="phoneNumber"><g:message code="companyContact.phoneNumber.label" default="Phone Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'phoneNumber', 'errors')}">
                                    <g:textField name="phoneNumber" value="${companyContactInstance?.phoneNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactEmailAddress"><g:message code="companyContact.contactEmailAddress.label" default="Contact Email Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'contactEmailAddress', 'errors')}">
                                    <g:textField name="contactEmailAddress" value="${companyContactInstance?.contactEmailAddress}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="company"><g:message code="companyContact.company.label" default="Company" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: companyContactInstance, field: 'company', 'errors')}">
                                    <g:select name="company.id" from="${gecko.Company.list()}" optionKey="id" value="${companyContactInstance?.company?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
        <g:render template="/footer" />
    </body>
</html>
