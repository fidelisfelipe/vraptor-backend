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
    <div role="tabpanel" class="tab-pane" id="chat">

      <div class="sidepanel-m-title">
        Friend List
        <span class="left-icon"><a href="#"><i class="fa fa-pencil"></i></a></span>
        <span class="right-icon"><a href="#"><i class="fa fa-trash"></i></a></span>
      </div>

      <div class="gn-title">ONLINE MEMBERS (3)</div>
      <ul class="group">
        <li class="member"><a href="#"><img src="html/img/profileimg7.png" alt="img"><b>Allice Mingham</b>Los Angeles</a><span class="status online"></span></li>
        <li class="member"><a href="#"><img src="html/img/profileimg2.png" alt="img"><b>James Throwing</b>Las Vegas</a><span class="status busy"></span></li>
        <li class="member"><a href="#"><img src="html/img/profileimg3.png" alt="img"><b>Fred Stonefield</b>New York</a><span class="status away"></span></li>
        <li class="member"><a href="#"><img src="html/img/profileimg4.png" alt="img"><b>Chris M. Johnson</b>California</a><span class="status online"></span></li>
      </ul>

      <div class="gn-title">OFFLINE MEMBERS (8)</div>
     <ul class="group">
        <li class="member"><a href="#"><img src="html/img/profileimg5.png" alt="img"><b>Allice Mingham</b>Los Angeles</a><span class="status offline"></span></li>
        <li class="member"><a href="#"><img src="html/img/profileimg6.png" alt="img"><b>James Throwing</b>Las Vegas</a><span class="status offline"></span></li>
      </ul>

      <form class="search">
        <input type="text" class="form-control" placeholder="Search a Friend...">
      </form>
    </div>
    <!-- End Chat -->

  </div>

</div>
<!-- END SIDEPANEL -->
<!-- //////////////////////////////////////////////////////////////////////////// --> 
