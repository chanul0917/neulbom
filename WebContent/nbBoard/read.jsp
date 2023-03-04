<%@page import="java.util.Date"%>
<%@page import="VO.FreeBoardVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
   String contextPath = request.getContextPath();
  FreeBoardVo vo = (FreeBoardVo) request.getAttribute("vo");

  String title = vo.getB_title();
  String content = vo.getB_content();
  String nickname = vo.getB_nickname();
  Date date = vo.getB_date();
  int like = vo.getB_like();
  int cnt = vo.getB_cnt();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/d158a8723c.js"
  crossorigin="anonymous"></script>
</head>
<body>
  <div style="margin: 5% 5% 0 5%;">
    <!-- 전체 width 바꾸기 위해서 존재하는  -->
    <div style="border: 1px solid black;">
      <div style="border: 1px solid black; margin: 3px;">
        <b style="font-size: 20px;"><%=title%></b> <br>
      </div>
      <div
        style="border: 1px solid black; text-align: center; height: 30px;">
        <div style="border: 1px solid black; float: left; margin: 3px;">
          <%=nickname%>
          l
        </div>
        <div style="border: 1px solid black; float: left; margin: 3px;">
          <%=date%>
        </div>

        <div style="border: 1px solid black; float: right; margin: 3px;">
          댓글</div>
        <div style="border: 1px solid black; float: right; margin: 3px;">
          추천
          <%=like%>
        </div>
        <div style="border: 1px solid black; float: right; margin: 3px;">
          조회수
          <%=cnt%>
        </div>
      </div>

    </div>
    <hr style="border: solid 1px grey;">

    <!-- 윗부분 끝 -->
    <div
      style="border: 1px solid black; height: 300px; margin-bottom: 2%">
      <!-- 콘텐츠 들어온다. -->

      <%=content%>



      <!-- 	if 첨부 파일 있으면 위에 첨부하고 없으면 내용만 삽입 -->

    </div>
    <!-- 중간부분 끝 -->

    <%-- <%
  if(id2 == null){
  %>
  <img src="../images/좋아요.png" id="likeimg" width="60px" height="60px" class="rounded-circle mt-2">
  <%=like%> <br><br> 추천 기능은 <a href="/member/login" type="button" id="newLogin" class="btn btn-outline-success">로그인</a> 후 사용 가능합니다.
  <%
  } else{
  %>
  <div>
  <!-- 눌렀을 때 likeboard안에 likecheck가 되어있는지 아닌지 확인  -->
  <input type="hidden" id="like_check" value="<%=vo2.getLike_check()%>" > 
<!-- <input type="button" id = "likeimgg">
<img class="rounded-circle likeimg" id="likeimg" src="../images/좋아요.png"
width="60px" height="60px"> 
</input>	
 --><a href="" id="likeimgg">
  <%
  %>
  <i class="fa-regular fa-heart fa-2x"  id="likeimggg" ></i>
  </a>
  <p id="countLike"><%=like%></p>

  </div>
  <%
  }
  %>
  --%>
  <div>
      <a href="" id="likeimgg"> <i class="fa-regular fa-heart fa-4x"
        id="likeimggg"></i>
      </a>
      <p id="countLike"><%=like%></p>
    </div>


<script type="text/javascript">
  const b_idx = <%=vo.getB_idx()%>
  const id2 = "inseop";
  var originLikeCount = <%=like%>

  $("#likeimgg").on("click", function (event) {
	  event.preventDefault();
	  
	  $.ajax({
			url: "<%=contextPath%>/freeboard/like.fb",
			async : true,
			type : 'POST',
			data : {
          			b_idx : b_idx,
          			id2 : id2
							},
			success : function(data) {
 	  		   /* 	  if(data=originLikeCount-1){
									 $("#likeimggg").attr("class","fa-regular fa-heart fa-4x");	//이미 좋아요 누른 경우;
														 $("#countLike").text(data);

														 } else{
														 $("#countLike").text(data);
														 $("#likeimggg").attr("class","fa-solid fa-heart fa-4x");
														
														 } */

							$("#countLike").text(data);
							if (data > originLikeCount) {
								$("#likeimggg").attr("class","fa-solid fa-heart fa-4x");
							} else if (data <= originLikeCount) {
								$("#likeimggg").attr("class","fa-regular fa-heart fa-4x"); //이미 좋아요 누른 경우;
							}

							}

		});

	});
</script>



    <div style="border: 1px solid black; height: 100px; margin-bottom: 2%">
      댓글 들어온다.
    </div>

    <div style="border: 1px solid black; height: 300px; margin-bottom: 2%">
      게시글 목록 보여주고 싶은데
    </div>


  </div>

</body>
</html>