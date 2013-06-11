<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>신청자 입력</title>
<script language="javascript">
<!--
function send() {
  if (!document.userform.name.value) {
		alert("이름을 입력해 주세요");
		document.userform.name.focus();
		return;
	}
	if (!document.userform.input_name.value) {
		alert("입금자 이름을 입력해 주세요");
		document.userform.input_name.focus();
		return;
	}
	if (!document.userform.f_name) {
		alert("보호자 이름을 입력해 주세요");
		document.userform.f_name.focus();
		return;
	}
	if (!document.userform.kind.value) {
		alert("악기를 선택해 주세요");
		document.userform.kind.focus();
		return;
	}
	document.userform.action = "edit_ok.asp";
	document.userform.submit();
}


function reset()
{  
	document.userform.reset();
}

//-->
</script>
<style type="text/css"> 
  A {text-decoration: none; color:navy } 
  A:hover {text-decoration: underline; color:#ff4500} 
  td{ font-family:돋움; font-size:14px }
</style>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<!--#include file="menu.asp"-->
<!--#include file="dbcon.asp"-->
<%
jumin=request("jumin")


sql = "select * from student where jumin ='"&jumin&"'"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1
%>
<p>* 빈칸이 없도록 입력해 주세요</p>
<form name="userform" method="post" action="edit_ok.asp">
<table cellpadding="1" cellspacing="1" width="738" style="border:0px solid #cfcfdf">
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;성명</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="name" size="32" value='<%=rs("name")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;성별</p>
        </td>
        <td width="250">
            <p>&nbsp;<select name="sex" size="1">
                <option value='<%=rs("sex")%>'><%=rs("sex")%></option>
                <option value="남">남</option>
                <option value="여">여</option>
            </select></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;학교</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="school" size="32" value='<%=rs("school")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">주민번호</p>
        </td>
        <td width="250">
            <p align="left">&nbsp;<input type="text" name="jumin" size="14" value='<%=rs("jumin")%>'></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;현주소</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="address" maxlength="100" size="32" value='<%=rs("address")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;현 지도교수</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="n_teacher" size="32" value='<%=rs("n_teacher")%>'></p>
        </td>
    </tr>
    <tr>
        <td width="118" rowspan="2" bgcolor="#cfcfdf">
            <p align="center">&nbsp;보호자<br>&nbsp;성 &nbsp;&nbsp;명</p>
        </td>
        <td width="248" rowspan="2">
            <p>&nbsp;<input type="text" name="f_name" size="32" value='<%=rs("f_name")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;보호자휴대전화</p>
        </td>
        <td width="250">
            <p align="left">&nbsp;<input type="text" name="f_phone" size="32" value='<%=rs("f_phone")%>'>&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">학생전화</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="phone" size="32" value='<%=rs("phone")%>'></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf" height="22">
            <p align="center">&nbsp;비상연락처</p>
        </td>
        <td width="248" height="22">
            <p>&nbsp;<input type="text" name="etc_phone" size="32" value='<%=rs("etc_phone")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf" height="22">
            <p align="center">&nbsp;메일주소</p>
        </td>
        <td width="250" height="22">
            <p>&nbsp;<input type="text" name="mail" maxlength="50" size="32" value='<%=rs("mail")%>'></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금자명</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="input_name" size="32" value='<%=rs("input_name")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금방법</p>
        </td>
        <td width="250">
            <p>&nbsp;<select name="check1" size="1">
                <option selected value='<%=rs("check1")%>'><%=rs("check1")%></option>
                <option value="현금">현금</option>
                <option value="무통장">무통장</option>
                <option value="카드">카드</option>
            </select></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금여부</p>
        </td>
        <td width="248">
            <p>&nbsp;<select name="check2" size="1">
                <option selected value='<%=rs("check2")%>'><%=rs("check2")%></option>
                <option value="입금">입금</option>
                <option value="미입금">미입금</option>
            </select></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;금액</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="money" size="12" value='<%=rs("money")%>'>원</p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;출발방법</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<select name="start" size="1">
                <option selected value='<%=rs("start")%>'><%=rs("start")%></option>
                <option value="단체">단체</option>
                <option value="개인">개인</option>
            </select> &nbsp;&nbsp;&nbsp;<span style="font-size:10pt;">단체출발지 
                : <select name="start_1" size="1">
                <option selected value='<%=rs("start_1")%>'><%=rs("start_1")%></option>
                <option value="개인">개인</option>
                <option value="서울">서울</option>
                <option value="부산">부산</option>
                <option value="대구">대구</option>
                <option value="광주">광주</option>
                <option value="청주">청주</option>
            </select> &nbsp;&nbsp;&nbsp;&nbsp;개인출발지 : <input type="text" name="start_2" size="20" value='<%=rs("start_2")%>'></span></p>
        </td>
    </tr>
    <tr>
        <td width="738" colspan="4" height="27">&nbsp;</td>
    </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;악기</p>
        </td>
        <td width="248">
            <p>&nbsp;<select name="kind" size="1">
                <option value='<%=rs("kind")%>'><%=rs("kind")%></option>
				<option value="피아노">피아노(PF)</option>
				<!--<option value="피아노(반주)">피아노(반주)</option>-->
				<option value="바이올린">바이올린(Vn)</option>
				<option value="첼로">첼로(Vc)</option>
				<!--<option value="비올라">비올라 (Va)</option>
				<option value="플룻">플룻</option>
				<option value="클라리넷">클라리넷</option>
				<option value="성악">성악</option>
				<option value="기타">기타</option-->


            </select></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;희망교수</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="teacher" size="1">
                    <option value='<%=rs("teacher")%>'><%=rs("teacher")%></option>				
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>
            </select></p>
            </td>
        </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;희망레슨곡</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="title" rows="4" cols="84"><%=rs("title")%></textarea></p>
        </td>
    </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨1</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession1" size="1">
                    <option value='<%=rs("lession1")%>'><%=rs("lession1")%></option>							                
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨1</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession4" size="1">
                    <option value='<%=rs("lession4")%>'><%=rs("lession4")%></option>
					<option value="없음">없음</option>
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>
            </select></p>
            </td>
        </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨2</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession2" size="1">
                    <option value='<%=rs("lession2")%>'><%=rs("lession2")%></option>				                
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨2</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession5" size="1">
                    <option value='<%=rs("lession5")%>'><%=rs("lession5")%></option>
					<option value="없음">없음</option>				
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>

            </select></p>
            </td>
        </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨3</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession3" size="1">
                    <option value='<%=rs("lession3")%>'><%=rs("lession3")%></option>				                
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨3</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession6" size="1">
                    <option value='<%=rs("lession6")%>'><%=rs("lession6")%></option>
					<option value="없음">없음</option>				
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="김영숙">김영숙</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="최현숙">최현숙</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="최희연">최희연</option>
					<option value="주희성">주희성</option>
					<option value="피경선">피경선</option>
					<option value="한기정">한기정</option>
					<option value="안미현">안미현</option>
					<option value="박종화">박종화</option>
					<option value="장현정">장현정</option>
					<option value="김경민">김경민</option>
					<option value="서세원">서세원</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="이경민">이경민</option>
					<option value="송영">송영</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="박희정">박희정</option>
					<option value="최정주">최정주</option>
					<option value="나윤주">나윤주</option>
					<option value="전경원">전경원</option>
					<option value="오지현">오지현</option>

            </select></p>
            </td>
        </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;수상 및 경력</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="history" rows="4" cols="84"><%=rs("history")%></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;요청사항</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="memo" rows="4" cols="84"><%=rs("memo")%></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;스탭주지사항</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="etc" rows="4" cols="84"><%=rs("etc")%></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">객실번호</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="room_no" size="16" maxlength="30" value='<%=rs("room_no")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p>&nbsp;관리자인증</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="password" name="pw" size="12"></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;항공권번호</p>
        </td>
        <td width="248">
                <p>&nbsp;<input type="text" name="air_no" size="16" maxlength="30" value='<%=rs("air_no")%>'></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
                <p>&nbsp;티셔츠사이즈</p>
        </td>
        <td width="250">
                <p>&nbsp;<span style="font-size:10pt;"><select name="t_size" size="1">
                <option value='<%=rs("t_size")%>'><%=rs("t_size")%></option>
                <option value="S">S</option>
                <option value="M">M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
                <option value="XXL">XXL</option>
                <option value="XXXL">XXXL</option>
            </select></span></p>
        </td>
    </tr>
    <tr>
        <td width="118">
                <p>&nbsp;</p>
        </td>
        <td width="248">
                <p>&nbsp;<input type="hidden" name="kkk" value='<%=rs("number")%>'></p>
        </td>
        <td width="122">
                <p>&nbsp;</p>
        </td>
        <td width="250">
                <p>&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="738" colspan="4">
          <p align="center"> 
	          <input type="button" value="확 인" onClick="javascript:send();">&nbsp;&nbsp;&nbsp; 
	          <input type="button" value="취 소" onClick="javascript:reset();">
	        </p>
				</td>
		</tr>
</table>
</form>
<p>&nbsp;</p>
</body>

</html>
