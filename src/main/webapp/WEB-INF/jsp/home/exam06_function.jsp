<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script>
			function fun1() {
				console.log("fun1() 실행");
			}
			
			function fun2(a, b) {	// default 값을 주지 못한다
				var result = a + b;
				return result;
			}
			
			function fun3(a, b) {
				var result = fun2(a, b);
				console.log(result);
			}
			
			function fun4(result) {
				// 유효성 검사 코드
				if(result == null) {
					return false;
				} else {
					return true;
				} 
			}
			
			function fun5() {
				var mid = document.loginForm.mid.value;		// 사용자가 입력한 정보를 전송하는 방법의 코드
				if(mid == "") {
					return false;
				} else {
					return true;
				}
			}
			
			var fun6 = function() {		// 이름이 없는 함수 선언 , 변수에 함수객체 선언한 것, function fun6() {}와 완전히 같다 
				console.log("fun6() 함수 실행")
			};
		</script>
	</head>
	<body>
		<h5 class="alert alert-info">/home/exam06_function.jsp</h5>
		
		<div>
			<button onclick="fun1()" class="btn btn-success btn-sm">fun1() 호출</button>
			<button onclick="fun3(3, 5)" class="btn btn-success btn-sm">fun2() 호출</button>
			
			<a onclick="return fun4(null)" href="main.do" class="btn btn-success btn-sm">메인 화면</a>
			<!-- fun4를 실행한 결과값을 원래 a태그에 넣어준다 이건의 결과에 의해 a태그가 결과를 달리한다 
				 true가 나오면 main이 호출되고 false가 나오면 main이 호출되지 않는다
				 그로서 class="btn"으로 제어한다 -->
			
			<form name="loginForm" method="post" action="main.do" onsubmit="return fun5()" 
				  style="margin-top:10px" >	<!-- submit 버튼을 누르면 fun5함수를 실행 -->
				<input type="text" name="mid"/>
				<%-- submit 효과 --%>
				<input type="submit" value="전송" class="btn btn-success btn-sm"/>
				<!-- submit을 누르면 onsuvmit="fun5()"로 먼저 간다
					 fun5()가 true를 return하면 action=main.do를 호출한다 -->
				<button class="btn btn-info btn-sm">전송</button>
				<input type="image" src="${pageContext.request.contextPath}/resource/img/red_button.png"/>	
			</form>
			
			<button onclick="fun6()" class="btn btn-info btn-sm">fun6() 호출</button>
		</div>
	</body>
</html>






