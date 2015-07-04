<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!-- //////////////////////////////////////////////////////////////////////////// --> 
  <!-- START TOP -->
  <div id="top" class="clearfix" ng-controller="top-ctrl">

  	<!-- Start App Logo -->
  	<div class="applogo">
  		<a href="index.html" class="logo" ng-bind="title"></a>
  	</div>
  	<!-- End App Logo -->

    <!-- Start Sidebar Show Hide Button -->
    <a href="#" class="sidebar-open-button"><i class="fa fa-bars"></i></a>
    <a href="#" class="sidebar-open-button-mobile"><i class="fa fa-bars"></i></a>
    <!-- End Sidebar Show Hide Button -->

    <!-- Start Searchbox -->
    <form class="searchform">
      <input type="text" class="searchbox" id="searchbox" ng-placeholder='search'>
      <span class="searchbutton"><i class="fa fa-search"></i></span>
    </form>
    <!-- End Searchbox -->

    <!-- Start Top Menu -->
    <ul class="topmenu" >
      <li ng-repeat="menu in menuSimpleList" ><a href="{{menu.href}}" ng-bind="menu.name"></a></li>
      <li class="dropdown" ng-repeat="menu in menuDropDownList">
        <a href="#" data-toggle="dropdown" class="dropdown-toggle">{{menu.name}}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li ng-repeat="item in menu.itens"><a href="{{item.href}}" ng-bind="item.name"></a></li>
        </ul>
      </li>
    </ul>
    <!-- End Top Menu -->

    <!-- Start Sidepanel Show-Hide Button -->
    <a href="#sidepanel" class="sidepanel-open-button"><i class="fa fa-outdent"></i></a>
    <!-- End Sidepanel Show-Hide Button -->

    <!-- Start Top Right -->
    <ul class="top-right">

    <li class="dropdown link" ng-repeat="menu in menuDropDownCreateList">
      <a href="{{menu.href}}" data-toggle="dropdown" class="dropdown-toggle hdbutton">{{menu.name}}<span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-menu-list">
          <li ng-repeat="item in menu.itens"><a href="{{item.href}}"><i class="fa falist {{item.classIco}}"></i>{{item.name}}</a></li>
        </ul>
    </li>

    <li class="link">
      <a href="#" class="notifications" ng-bind="msgCount"></a>
    </li>

    <li class="dropdown link" ng-repeat="menu in menuDropDownPerfilList">
      <a href="#" data-toggle="dropdown" class="dropdown-toggle profilebox"><img src="html/img/profileimg.png" alt="img"><b ng-bind="username"></b><span class="caret"></span></a>
        <ul class="dropdown-menu dropdown-menu-list dropdown-menu-right">
          <li role="presentation" class="dropdown-header" ng-bind="menu.name"></li>
          <li ng-repeat="item in menu.itens"><a href="{{item.href}}"><i class="fa {{item.classIco}}"></i> {{item.name}}<span class="badge label-danger">{{item.count}}</span></a></li>
        </ul>
    </li>

    </ul>
    <!-- End Top Right -->

  </div>
  <!-- END TOP -->
 <!-- //////////////////////////////////////////////////////////////////////////// --> 
