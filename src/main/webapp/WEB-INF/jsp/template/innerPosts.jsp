<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <!-- Start Left -->
      <div ng-controller="body-inner-ctrl" class="col-md-6 col-lg-4">

        <!-- Start Post -->
          <div ng-repeat="post in postList" class="panel panel-default">
            <div class="panel-body status">
              <ul class="panel-tools panel-tools-hover">
                <li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>
                <li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
              </ul>
              <div class="who clearfix">
                <img ng-src="{{post.imgProfile}}" alt="img">
                <span class="name"><b ng-bind="post.name"></b></span>
                <span class="from"><b ng-bind="post.time"></b> {{post.origin}}, {{post.city}} - {{post.cityCode}}</span>
              </div>
              <div class="text" ng-bind="post.text"></div>
              <ul class="links">
                <li ng-repeat="btn in btnEventList"><a href="#"><i class="fa fa-{{btn.type}}"></i> {{btn.label}}</a></li>
              </ul>
              <ul class="comments">
                <li>
                  <img ng-src="{{imgProfile}}" alt="img">
                  <input type="text" class="form-control" placeholder="{{labelComment}}">
                </li>
              </ul>
            </div>
          </div>
        <!-- End Post --> 