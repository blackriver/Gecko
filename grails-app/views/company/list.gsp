
<%@ page import="gecko.Company" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'company.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="companyName" title="${message(code: 'company.companyName.label', default: 'Company Name')}" />
                        
                            <g:sortableColumn property="addressLine1" title="${message(code: 'company.addressLine1.label', default: 'Address Line1')}" />
                        
                            <g:sortableColumn property="addressLine2" title="${message(code: 'company.addressLine2.label', default: 'Address Line2')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'company.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="county" title="${message(code: 'company.county.label', default: 'County')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${companyInstanceList}" status="i" var="companyInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${companyInstance.id}">${fieldValue(bean: companyInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: companyInstance, field: "companyName")}</td>
                        
                            <td>${fieldValue(bean: companyInstance, field: "addressLine1")}</td>
                        
                            <td>${fieldValue(bean: companyInstance, field: "addressLine2")}</td>
                        
                            <td>${fieldValue(bean: companyInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: companyInstance, field: "county")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${companyInstanceTotal}" />
            </div>
        </div>
        <g:render template="/footer" />
    </body>
</html>
