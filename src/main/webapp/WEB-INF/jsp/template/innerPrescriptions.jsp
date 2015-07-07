<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- Start Panel -->
    <div class="col-md-12 col-lg-4">
      <div class="panel panel-transparent">

        <div class="panel-title">
          Prescrição
        </div>

        <div class="panel-body">
          <!-- Start Modal Code -->

            <!-- Link -->
            <a href="#" data-toggle="modal" data-target="#myModal2">
              Adicionar nova prescrição
            </a>

            <!-- Modal -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Large Modal</h4>
                  </div>
                  <div class="modal-body">
                    
					
<!-- Start Row -->
  <div class="row">

    <div class="col-md-12">
      <div class="panel panel-default">

        <div class="panel-title">
          Textboxes
        </div>

            <div class="panel-body">
              <form class="form-horizontal">

                <div class="form-group">
                  <label class="col-sm-2 control-label form-label">Static Field</label>
                  <div class="col-sm-10">
                    <p class="form-control-static">email@example.com</p>
                  </div>
                </div>

                <div class="form-group">
                  <label for="input002" class="col-sm-2 control-label form-label">Normal</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="input002">
                  </div>
                </div>

                <div class="form-group">
                  <label for="input001" class="col-sm-2 control-label form-label">Help Text</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="input001">
                    <span id="helpBlock" class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                  </div>
                </div>

                <div class="form-group">
                  <label for="input2" class="col-sm-2 control-label form-label">Rounded</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control form-control-radius" id="input2">
                  </div>
                </div>

                <div class="form-group">
                  <label for="input3" class="col-sm-2 control-label form-label">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="input3" placeholder="Password">
                  </div>
                </div>

                <div class="form-group">
                  <label for="input4" class="col-sm-2 control-label form-label">Disable</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="input4" placeholder="Disable Input" disabled>
                  </div>
                </div>

                <div class="form-group has-success">
                  <label for="input6" class="col-sm-2 control-label form-label">Input with success</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="input6">
                  </div>
                </div>

                <div class="form-group has-warning">
                  <label for="input7" class="col-sm-2 control-label form-label">Input with warning</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="input7">
                  </div>
                </div>

                <div class="form-group has-error">
                  <label for="input8" class="col-sm-2 control-label form-label">Input with warning</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" id="input8">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label form-label">Readonly input</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="text" placeholder="Readonly input here…" readonly>
                  </div>
                </div>

                <div class="form-group">
                  <label for="exampleInputAmount" class="col-sm-2 control-label form-label">With Icons</label>
                  <div class="col-sm-10">
                    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-usd"></i></div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
                      <div class="input-group-addon">.00</div>
                    </div>
                  </div>
                </div>

                <div class="form-group">
                  <label for="exampleInputAmount2" class="col-sm-2 control-label form-label">Another With Icons</label>
                  <div class="col-sm-10">
                    <label class="sr-only" for="exampleInputAmount2">Login</label>
                    <div class="input-group">
                      <div class="input-group-addon"><i class="fa fa-user"></i></div>
                      <input type="text" class="form-control" id="exampleInputAmount2" placeholder="Username">
                    </div>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label form-label">Textarea</label>
                  <div class="col-sm-10">
                      <textarea class="form-control" rows="3" id="textarea1" placeholder="Type your message..."></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label form-label">With a Line</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control form-control-line" placeholder="What is your name?">
                  </div>
                </div>


              </form> 

            </div>

      </div>
    </div>

  </div>
  <!-- End Row -->
					


                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-default">Save changes</button>
                  </div>
                </div>
              </div>
            </div>

          <!-- End Moda Code -->

        </div>

      </div>
    </div>
    <!-- End Panel --> 