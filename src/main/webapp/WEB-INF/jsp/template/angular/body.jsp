<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Body init -->

  <!-- Start Page Loading -->
  <div class="loading"><img src="html/img/loading.gif" alt="loading-img"></div>
  <!-- End Page Loading -->

		<tiles:insertAttribute name="menuTop"/>
		<tiles:insertAttribute name="menuRight"/>

<!-- Body end -->

		<tiles:insertAttribute name="script" />
