<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>


<template:include view="hidden.load"/>

<template:addResources type="javascript" resources="jquery.min.js,jquery.easySlider1.7.js,jquery.easySlider1.7.load.js"/>
<template:addResources type="css" resources="jquery.easySlider1.7.css"/>

<c:if test="${empty editable}">
    <c:set var="editable" value="false"/>
</c:if>

<!-- recuperer une liste d'items de type teasers et boucler dessus -->

<div id="slider2">
    <ul>
        <c:forEach items="${moduleMap.currentList}" var="child" varStatus="status">
            <li>
                <template:module node="${child}"/>
            </li>
        </c:forEach>
        <div/>
    </ul>
</div>
<template:module path="*"/>

