<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START CONTENT -->
<div ng-controller="body-inner-ctrl" class="content">

 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START CONTAINER -->
<div class="container-no-padding">

  <!-- Start Social Profile -->
  <div class="social-profile">

    <!-- Start Top -->
    <div class="social-top" style="background: url({{imgProfileBackground}})">

      <div ng-repeat="btn in btnList" class="profile-left">
        <img ng-src="{{imgProfile}}" alt="{{name}}" class="profile-img">
        <h1 class="name">{{name}}
        <a href="{{btn.href}}" class="btn btn-{{btn.type}}">
        	<i class="fa fa-{{btn.control}}">
        	</i>
        	{{btn.label}}
        	</a>
        </h1>
        <p class="profile-text" ng-bind="msgProfile">
        </p>
      </div>

    <ul class="social-stats">
      <li ng-repeat="dash in sumList">
      	<b>{{dash.val}}</b>
      	{{dash.label}}
      </li>
    </ul>

    </div>
    <!-- End Top -->

    <!-- Start Social Content -->
    <div class="social-content clearfix">

	<tiles:insertAttribute name="innerMiddle" />

	</div>

  </div>
  <!-- End Social Profile -->
 

</div>
<!-- END CONTAINER -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 
