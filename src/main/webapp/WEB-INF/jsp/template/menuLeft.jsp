<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- //////////////////////////////////////////////////////////////////////////// --> 
<!-- START SIDEBAR -->
<div ng-controller="top-left-ctrl" class="sidebar clearfix">

<ul class="sidebar-panel nav">
  <li class="sidetitle" ng-bind="name"></li>
  <li ng-repeat="item in menuList">
  	<a href="{{item.href}}">
  		<span class="icon color5">
  			<i class="fa fa-{{item.type}}"></i>
  		</span>
  		{{item.label}}
  		<span class="label label-default" ng-bind="item.total">
  		</span>
  	</a>
  </li>
  <li ng-repeat="item in menuSubList">
  	<a href="{{item.href}}">
  		<span class="icon color7">
	  		<i class="fa fa-flask">
	  		</i>
  		</span>
  		{{item.label}}
  		<span class="caret">
  		</span>
  	</a>
    <ul>
      <li ng-repeat="sub in item.itens">
      	<a href="{{sub.href}}" ng-bind="sub.label">
      	</a>
      </li>
    </ul>
  </li>
<div class="sidebar-plan">
  {{labelInit}}<a href="#" class="link">{{labelEnd}}</a>
  <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="{{porcent}}" aria-valuemin="0" aria-valuemax="100" style="width: {{porcent}}%;">
  </div>
</div>
<span class="space">{{porcent}}{{titlePorcent}}</span>
</div>

</div>
<!-- END SIDEBAR -->
<!-- //////////////////////////////////////////////////////////////////////////// --> 
