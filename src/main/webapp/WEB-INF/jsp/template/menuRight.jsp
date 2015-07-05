<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START SIDEPANEL -->
<div role="tabpanel" class="sidepanel" >

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist" ng-controller="top-right-abas-ctrl">
    <li ng-repeat="aba in abaList" role="presentation" ng:class="{true:'active'}[aba.active]"><a href="{{aba.href}}" aria-controls="today" role="tab" data-toggle="tab" ng-bind="aba.name"></a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">

    <!-- Start Today -->
    <div ng-controller="top-right-aba-left-ctrl" role="tabpanel" class="tab-pane" ng:class="{true:'active'}[active]" id="{{control}}">

      <div class="sidepanel-m-title">
        {{name}}
        <span class="left-icon"><a href="{{href}}"><i class="fa fa-refresh"></i></a></span>
      </div>

      <div class="gn-title" ng:class="{false:'hide'}[newActive]" ng-bind="newTitle"></div>

      <ul class="list-w-title">
        <li ng-repeat="post in postList">
          <a href="#">
            <span class="label label-{{post.classType}}" ng-bind="post.nameType"></span>
            <span class="date" ng-bind="post.dateExt"></span>
            <h4 ng-bind="post.name"></h4>
            {{post.desc}}
          </a>
        </li>
      </ul>

    </div>
    <!-- End Today -->

    <!-- Start Tasks -->
    <div ng-controller="top-right-aba-middle-ctrl" role="tabpanel" class="tab-pane" id="{{control}}" ng:class="{true:'active'}[active]" >

      <div class="sidepanel-m-title">
        {{name}}
        <span class="left-icon"><a href="{{href}}"><i class="fa fa-refresh"></i></a></span>
      </div>

      <div class="gn-title" ng-bind="today"></div>

      <ul class="todo-list">
        <li ng-repeat="task in tasksTodayList" class="checkbox checkbox-primary">
          <input id="checkboxside{{task.id}}" type="checkbox"><label for="checkboxside{{task.id}}" ng-bind="task.label"><b ng-bind="task.time"></b></label>
        </li>
      </ul>

      <div class="gn-title" ng-bind="tomorrow"></div>
      <ul class="todo-list">
        <li ng-repeat="task in tasksTomorrowList" class="checkbox checkbox-warning">
          <input id="checkboxside{{task.id}}" type="checkbox"><label for="checkboxside{{task.id}}" ng-bind="task.label"><b ng-bind="task.time"></b></label>
        </li>
      </ul>
    </div>    
    <!-- End Tasks -->

    <!-- Start Chat -->
    <div ng-controller="top-right-aba-right-ctrl" role="tabpanel" class="tab-pane" id="{{control}}">

      <div class="sidepanel-m-title">
        {{name}}
        <span class="left-icon"><a href="href"><i class="fa fa-refresh"></i></a></span>
      </div>

      <div class="gn-title">{{titleOnline}} ({{qtdOnline}})</div>
      <ul class="group">
        <li ng-repeat="member in memberOnlineList" class="member"><a href="member.href"><img ng-src="{{member.photo}}" alt="member.name"><b ng-bind="member.name"></b>{{member.city}}</a><span class="status {{member.status}}"></span></li>
      </ul>

      <div class="gn-title">{{titleOffline}} ({{qtdOffline}})</div>
     <ul class="group">
      	<li ng-repeat="member in memberOfflineList" class="member"><a href="member.href"><img ng-src="{{member.photo}}" alt="member.name"><b ng-bind="member.name"></b>{{member.city}}</a><span class="status {{member.status}}"></span></li>
      </ul>

      <form class="search">
        <input type="text" class="form-control" placeholder="{{titleSearch}}">
      </form>
    </div>
    <!-- End Chat -->

  </div>

</div>
<!-- END SIDEPANEL -->
<!-- //////////////////////////////////////////////////////////////////////////// --> 
