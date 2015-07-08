<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<tiles:insertDefinition name="life.layout" >
	<tiles:putAttribute name="innerMiddle" cascade="true" >
<!-- Start Panel -->
    <div ng-controller="form-usuario-novo-ctr" class="col-md-12 col-lg-4">
      <div class="panel panel-transparent">

        <div class="panel-title" ng-bind="titleWindow">
          
        </div>

        <div class="panel-body">
          <!-- Start Modal Code -->

            <!-- Link -->
            <a href="#" data-toggle="modal" data-target="#myModal2" ng-bind="linkNew">
            </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" ng-bind="titleForm"></h4>
                  </div>
                  <div class="modal-body">
                    
					
					<!-- Start Row -->
					  <div class="row">
					
					    <div class="col-md-12">
					      <div class="panel panel-default">
					
					        <div class="panel-title" ng-bind="titleForm">
					          
					        </div>
					
					            <div class="panel-body">
					              <form class="form-horizontal" id="form" ng-submit="submit()">
					
						            <div class="form-group">
					                  <label class="col-sm-2 control-label form-label" ng-bind="labelName"></label>
					                  <div class="col-sm-10">
					                    <input type="text" class="form-control form-control-line" placeholder="{{placeName}}" ng-model="formData.usuario.nome" />
					                  </div>
					                </div>
					                
					                <div class="form-group">
					                  <label class="col-sm-2 control-label form-label" ng-bind="labelPassword"></label>
					                  <div class="col-sm-10">
					                    <input type="password" class="form-control form-control-line" placeholder="{{placePassword}}" ng-model="formData.usuario.senha" />
					                  </div>
					                </div>
					                <div class="modal-footer">
					                    <button type="button" class="btn btn-white" data-dismiss="modal" ng-bind="labelBtnClose"></button>
					                    <button type="submit" class="btn btn-default" id="btnSalvar" ng-bind="labelBtnSave"></button>
					                </div>
					              </form> 
					
					            </div>
					
					      </div>
					    </div>
					
					  </div>
					  <!-- End Row -->
					
                  </div>
                  
                </div>
              </div>
            </div>

          <!-- End Moda Code -->

        </div>

      </div>
    </div>
    <!-- End Panel -->
    
	</tiles:putAttribute>
</tiles:insertDefinition>