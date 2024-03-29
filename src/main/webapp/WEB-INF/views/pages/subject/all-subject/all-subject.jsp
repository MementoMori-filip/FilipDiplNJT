<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="modal.jsp"%>
<%@ include file="modal-script.jsp"%>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>SPISAK SVIH PREDMETA</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input class="form-control" placeholder="Pretrazi...">
                        <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Trazi!</button>
                    </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Predmeti
                            <small>osnovne informacije</small>
                        </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <p class="text-muted font-13 m-b-30">Prikaz svih predmeta na fakultetu sa infomacijama o broju
                            studenta koji slušaju predmet i broj profesora-predavača angažovanim na predmetu </p>
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>Naziv predmeta</th>
                                <th>Smer</th>
                                <th>Godina</th>
                                <th>Broj ESPB poena</th>
                                <th>Broj Studenta</th>
                                <th>Broj profesora/predavača</th>
                                <th>Izmeni  &nbsp;</th>
                                <th>Obrisi  &nbsp;</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${allSubjects}" var="subject">
                                <tr>
                                    <td>${subject.nameOfTheSubject}</td>
                                    <td>${subject.course}</td>
                                    <td>${subject.year}</td>
                                    <td>${subject.espb}</td>
                                    <td>${subject.numberOfStudents}</td>
                                    <td>${subject.numberOfLectures}</td>
                                    <td><a href="<c:url value='/backend/predmet/izmeni/${subject.idPredmeta}' />"><i class="fa fa-pencil-square-o"></i></a></td>
                                    <td><a href="#" data-subject-id="${subject.idPredmeta}" class="remove-subject"><i class="fa fa-remove" ></i></a></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>


                    <%--<div class="row">--%>
                    <%--<div class="col-md-12 col-sm-12 col-xs-12">--%>
                    <%--<div class="x_panel">--%>
                    <%--<div class="x_title">--%>
                    <%--<h2>Default Example <small>Users</small></h2>--%>
                    <%--<ul class="nav navbar-right panel_toolbox">--%>
                    <%--<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                    <%--<li><a href="#">Settings 1</a>--%>
                    <%--</li>--%>
                    <%--<li><a href="#">Settings 2</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li><a class="close-link"><i class="fa fa-close"></i></a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="x_content">--%>
                    <%--<p class="text-muted font-13 m-b-30">--%>
                    <%--DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>--%>
                    <%--</p>--%>
                    <%--<table id="datatable" class="table table-striped table-bordered">--%>
                    <%--<thead>--%>
                    <%--<tr>--%>
                    <%--<th>Name</th>--%>
                    <%--<th>Position</th>--%>
                    <%--<th>Office</th>--%>
                    <%--<th>Age</th>--%>
                    <%--<th>Start date</th>--%>
                    <%--<th>Salary</th>--%>
                    <%--</tr>--%>
                    <%--</thead>--%>


                    <%--<tbody>--%>
                    <%--<tr>--%>
                    <%--<td>Tiger Nixon</td>--%>
                    <%--<td>System Architect</td>--%>
                    <%--<td>Edinburgh</td>--%>
                    <%--<td>61</td>--%>
                    <%--<td>2011/04/25</td>--%>
                    <%--<td>$320,800</td>--%>
                    <%--</tr>--%>
                    <%--</tbody>--%>
                    <%--</table>--%>
                    <%--</div>--%>
                </div>
            </div>
        </div>
    </div>
</div>
