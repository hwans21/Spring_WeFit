<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        .titlebox h2 {
            border-bottom: 1px solid rgb(0, 173, 181);
            margin-top: 90px;
            margin-bottom: 80px;
            padding-bottom: 20px;
            font-size: 40px;
            font-weight: bold;
            color: rgb(0, 173, 181);
        }



        table tr:first-child {
            border-top: 1px solid rgb(180, 180, 180);
        }

        table tr td {
            padding: 15px;
            border-bottom: 1px solid #ccc;
        }

        .titlefoot {
            float: right;
            margin: 20px;
        }
    </style>
</head>

<body>

    <div class="container-fluid h-100">
        <div class="row">
            <%@ include file="../../include/header.jsp" %>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="titlebox">
                        <h2>식단 등록</h2>
                    </div>
                </div>
            </div>

            <!--main left-->
            <form action="<c:url value='/dietBoard/dietWrite' />" id="boardWrite" name="writeForm" method="POST" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td>작성자</td>
                        <td><input type=text name="memberNum" size=20> </td>
                    </tr>

                    <tr>
                        <td>제목</td>
                        <td><input type=text name="dbTitle" size="60"></td>
                    </tr>
					
                    <tr>
                        <td>내용</td>
                        <td><textarea name="dbContent" cols="75" rows="15"></textarea></td>
                    </tr>

                    
                    <tr>
                        <td>사진올리기 </td>
                        <td><input multiple="multiple" type="file" name="fileName" size="10" maxlength="10"></td>
                    </tr>
                    
                    <tr class="text-right">
                        <td colspan="2">
                            <br>
                            <button class="btn btn-primary" id="writeBtn" type="button">등록하기</button>
                            <button class="btn btn-default" id="listBtn" type="button" onclick="location.href='<c:url value='/dietBoard/dietList' />'">취소하기</button>
                            <br><br><br>
                        </td>
                        
                    </tr>
                </table>

            </form>
        </div>

    </div>


    <div class="row">
        <%@ include file="../../include/footer.jsp" %>
    </div>

    <script>
    	const writeBtn = document.getElementById('writeBtn');
    	console.log(writeBtn);
    	writeBtn.onclick = function() {
			if(document.writeForm.memberNum.value === '') {
				alert('작성자는 필수 항목 입니다.');
				document.writeForm.memberNum.focus();
				return;
			}else if(document.writeForm.dbTitle.value === '') {
				alert('제목은 필수 항목 입니다.');
  				document.writeForm.dbTitle.focus();
  				return;
			}else {
				document.writeForm.submit();
			}
		}
    	
  		$('#listBtn').click(function() {
			if(confirm('목록으로 돌아가시겠습니까?')) {
				location.href='<c:url value="/dietBoard/dietList" />';
			} else {
				return;
			}
		});
    </script>
    
    
    
    
    

    
</body>

</html>


