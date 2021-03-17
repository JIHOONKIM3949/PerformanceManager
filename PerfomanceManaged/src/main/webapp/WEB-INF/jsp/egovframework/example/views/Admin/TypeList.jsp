<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
					
                  <c:forEach var="indicator" items="${IndicatorList}">
                  
                  <tr>
                    <th><i class="icon_cogs"></i>　유형명</th>
                    <th><i class="icon_calendar"></i>　지표명</th>
                    <th><i class="icon_pin_alt"></i>　지표 내용</th>
                    <th><i class="icon_pin_alt"></i>　등록 날짜</th>
                    <th><i class="icon_mobile"></i>　지표 통계 단위</th>
                    <!-- <th><i class="icon_profile"></i> 통계 결과 단위</th> -->
                    <th><i class="icon_cogs"></i> 수정 /삭제</th>
                  </tr>
                  
                  <tr>
                    <td>
                    	${indicator.INDI_ }
                    	<!-- <div class="btn-group" style="width:100%;">
	                      <select class="form-control" name="USER_COM">
	                      	<option value="not">--유형 선택--</option>
	                        <option value="iworks">유형1</option>
	                        <option value="mac">유형2</option>
	                        <option value="lotte">유형3</option>
	                      </select> -->
                    	</div>
                    </td>
                    <td>${indicator.INDI_TITLE}</td>
                    <td>${indicator.INDI_CONTENT }</td>
                    <td>
                    <fmt:formatDate value="${indicator.INDI_DATE}"
                     pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>
              		  <div class="btn-group" style="width:100%;">
                      <select class="form-control" name="USER_COM">
                      	<option value="not">--지표 단위 선택--</option>
                        <option value="iworks">갯수(개)</option>
                        <option value="mac">점수(점)</option>
                        <option value="lotte">퍼센트(%)</option>
                      </select>
                    </div>
                   </td>
                    
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <!-- <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a> -->
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  </c:forEach>
  