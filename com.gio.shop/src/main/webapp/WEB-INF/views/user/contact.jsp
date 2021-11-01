<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- directive SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=0, width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>${projectTitle}</title>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 -->	<link rel="preconnect" href="https://fonts.googleapis.com">
<jsp:include page="/WEB-INF/views/common/variable.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
<link rel="stylesheet" href="${base}/user/fonts/fontawesome-free-5.15.4/css/all.min.css">
<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

</head>
<body>

	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

	<div class="grid wide contact-body">
		<h2>Contact</h2>
	
		<c:if test="${not empty thongbao}">
			<div class="alert alert-primary" role="alert">
				${thongbao }
			</div>
		</c:if>
			<!-- cach thong thuong -->
		<%-- <form class="contact-form" action="${base}/contact" method="post">
            <label for="txtname"> <span>Name</span> <input type="text" id="txtname" name="txtname"></label>
			<label for="txtemail"> <span>Email</span> <input type="email" id="txtemail" name="txtemail"></label> 
			<label for="txtsubject"> <span>Subject</span> <input type="text" id="txtsubject" name="txtsubject"></label> 
			<label for="message"><span>Message</span><textarea name="txtmessage" id="txtmessage" cols="30" rows="10"></textarea></label>
            <input class=" btn btn--size-s btn--primary" type="submit" id="send" value="Send">
            </form> --%>
            
            
            <!-- spring -->
			<sf:form class="contact-form" action="${base}/contact" method="post" modelAttribute="contact" enctype="multipart/form-data">
			
            <label for="txtname"> <span>Name</span> <sf:input path="txtname" type="text" id="txtname" name="txtname"></sf:input></label>
            
			<label for="txtemail"> <span>Email</span> <sf:input path="txtemail" type="email" id="txtemail" name="txtemail"></sf:input></label> 
			
			<label for="txtsubject"><span>Subject</span> <sf:input path="txtsubject" type="text" id="txtsubject" name="txtsubject"></sf:input></label>
			  
			<label for="message"><span>Message</span><sf:textarea path="txtmessage" name="txtmessage" id="txtmessage" cols="30" rows="10"></sf:textarea></label>
			
            <!-- <input class=" btn btn--size-s btn--primary" type="submit" id="send" value="submit"> -->
            
            <%-- <div class="form-group form-check">
            	<sf:checkbox path="chkCheckbox" class="form-check-input" id="exampleCheck1"/>
            	<label class="form-check-label" for="exampleCheck1">check me out</label>
            </div>  --%>
            
            <%-- <div class="form-group">
            	<c:forEach items="${product.productImages }" var="productImage">
            		<img alt="" style="width: 100px; height: 100px;" src="$base/upload/${productImage.path }">
            		
            	</c:forEach>
            </div> --%>
            
       			<div class="form-group">
					<label for = "inputFile">Pictures</label>
					<input type="file" class="form-control-file" name="inputFile" id="inputfile" multiple="multiple">
				</div>
            
			<input class=" btn btn--size-s btn--primary" type="submit" id="send" value="submit">
			<!--khi goi ajax thi kieu ko dc la submit  -->
			<input class=" btn btn--size-s btn--primary" type="button" onclick="saveContact()" id="send" value="AJAX">
		</sf:form>      
	</div> 
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	
	<!--custom javascrip  -->
	<script type="text/javascript">
		function saveContact() {
			//day la cau truc chung phan ajax 
			//data (simpleContact): la du lieu day len action cua controller
			/* javascrip object */
			let simpleContact = {
					txtname: jQuery("#txtname").val(),  //lay theo id
					txtemail: jQuery("#txtemail").val(),  //lay theo id
					txtsubject: jQuery("#txtsubject").val(),  //lay theo id
					txtmessage: jQuery("#txtmessage").val(), 
			};
			
			
			
			//$ ===jQuery
			jQuery.ajax({
				url : "/contact-ajax",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(simpleContact),
				
				dataType : "json", //kieu tra ve tu controller la json
				success : function(jsonResult){
					alert(jsonResult.message);
				},
				error : function(jqXhr, textStatus, errorMessage){ //error callback
					
				}
			});
		}
		//Muc dich khi goi ajax la : tranh refect la trang
	
	</script>
	
</body>
</html>