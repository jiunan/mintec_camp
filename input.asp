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
	document.userform.action = "input_ok.asp";
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
<form name="userform" method="post" action="input_ok.asp">
<table cellpadding="1" cellspacing="1" width="738" style="border:0px solid #cfcfdf">
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;성명</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="name" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;성별</p>
        </td>
        <td width="250">
            <p align="left"><input type="radio" name="sex" value="남" checked>남 
            &nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="여">여&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;학교</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="school" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">주민번호</p>
        </td>
        <td width="250">
            <p align="left">&nbsp;<input type="text" name="jumin" size="14"><span style="font-size:10pt;"><b><font color="#FF6600">&nbsp;아무거나꼭 넣어요</font></b></span></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;현주소</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="address" maxlength="100" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;현 지도교수</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="n_teacher" size="32"></p>
        </td>
    </tr>
    <tr>
        <td width="118" rowspan="2" bgcolor="#cfcfdf">
            <p align="center">&nbsp;보호자<br>&nbsp;성 &nbsp;&nbsp;명</p>
        </td>
        <td width="248" rowspan="2">
            <p>&nbsp;<input type="text" name="f_name" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;보호자휴대전화</p>
        </td>
        <td width="250">
            <p align="left">&nbsp;<input type="text" name="f_phone" size="32">&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">학생전화</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="phone" size="32"></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;비상연락처</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="etc_phone" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;메일주소</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="mail" maxlength="50" size="32"></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금자명</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="input_name" size="32"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금방법</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="radio" name="check1" value="현금">현금 &nbsp;&nbsp;<input type="radio" name="check1" value="무통장" checked>무통장 
            &nbsp;<input type="radio" name="check1" value="카드">카드</p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;입금여부</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="radio" name="check2" value="입금">입금완료 
            &nbsp;&nbsp;&nbsp;<input type="radio" name="check2" value="미입금" checked>미입금</p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;금액</p>
        </td>
        <td width="250">
            <p>&nbsp;<input type="text" name="money" size="28">&nbsp;&nbsp;원</p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;출발방법</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<input type="radio" name="start" value="단체" checked>단체 
            &nbsp;<input type="radio" name="start" value="개인">개인 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:10pt;">단체출발지 
                : </span><select name="start_1" size="1">
                <option value="서울">서울</option>
                <option value="부산">부산</option>
                <option value="대구">대구</option>
                <option value="광주">광주</option>
                <option value="청주">청주</option>
                <option value="개인">개인</option>
            </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:10pt;">개인출발지 
                : </span><input type="text" name="start_2" size="22"></p>
        </td>
    </tr>
    <tr>
        <td width="738" colspan="4" height="27" bgcolor="white">&nbsp;
           
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;악기</p>
        </td>
        <td width="248">
            <p>&nbsp;<select name="kind" size="1">
				<option value="피아노">피아노(PF)</option>
				<option value="피아노(반주)">피아노(반주)</option>
				<option value="바이올린">바이올린(Vn)</option>
				<option value="첼로">첼로(Vc)</option>
				<option value="비올라">비올라</option>
				<option value="플룻">플룻</option>
				<option value="클라리넷">클라리넷</option>
				<option value="성악">성악</option>
				<option value="기타">기타</option>
            </select></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;희망교수</p>
        </td>
        <td width="250">
            <p>&nbsp;<select name="teacher" size="1">
				<option value="정진우">정진우</option>
				<option value="신수정">신수정</option>
				<option value="임옥빈">임옥빈</option>
				<option value="조은영">조은영</option>
				<option value="장형준">장형준</option>
				<option value="이재향">이재향</option>
				<option value="신민자">신민자</option>
				<option value="김재미">김재미</option>
				<option value="조재혁">조재혁</option>
				<option value="박휘암">박휘암</option>
				<option value="안미현">안미현</option>
				<option value="페터 오브차로프">페터 오브차로프</option>
				<option value="이영희">이영희</option>
				<option value="피호영">피호영</option>
				<option value="송재광">송재광</option>
				<option value="서세원">서세원</option>
				<option value="김경민">김경민</option>
				<option value="김정미">김정미</option>
				<option value="양승희">양승희</option>
				<option value="정유진">정유진</option>
				<option value="이윤희">이윤희</option>
				<option value="이경민">이경민</option>
				<option value="김형선">김형선</option>
				<option value="백청심">백청심</option>
				<option value="송희송">송희송</option>
				<option value="김지훈">김지훈</option>
				<option value="여미혜">여미혜</option>
				<option value="박희정">박희정</option>
            </select></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;희망레슨곡</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="title" rows="4" cols="84"></textarea></p>
        </td>
    </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨1</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession1" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨1</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession4" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨2</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession2" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨2</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession5" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        </tr>
        <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;기본레슨3</p>
        </td>
            <td width="248">
                <p>&nbsp;<select name="lession3" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        <td width="122" bgcolor="#cfcfdf">
            <p align="center">&nbsp;추가레슨3</p>
        </td>
            <td width="250">
                <p>&nbsp;<select name="lession6" size="1">
					<option value="정진우">정진우</option>
					<option value="신수정">신수정</option>
					<option value="임옥빈">임옥빈</option>
					<option value="조은영">조은영</option>
					<option value="장형준">장형준</option>
					<option value="이재향">이재향</option>
					<option value="신민자">신민자</option>
					<option value="김재미">김재미</option>
					<option value="조재혁">조재혁</option>
					<option value="박휘암">박휘암</option>
					<option value="안미현">안미현</option>
					<option value="페터 오브차로프">페터 오브차로프</option>
					<option value="이영희">이영희</option>
					<option value="피호영">피호영</option>
					<option value="송재광">송재광</option>
					<option value="서세원">서세원</option>
					<option value="김경민">김경민</option>
					<option value="김정미">김정미</option>
					<option value="양승희">양승희</option>
					<option value="정유진">정유진</option>
					<option value="이윤희">이윤희</option>
					<option value="이경민">이경민</option>
					<option value="김형선">김형선</option>
					<option value="백청심">백청심</option>
					<option value="송희송">송희송</option>
					<option value="김지훈">김지훈</option>
					<option value="여미혜">여미혜</option>
					<option value="박희정">박희정</option>
            </select></p>
            </td>
        </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;수상 및 경력</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="history" rows="4" cols="84"></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;요청사항</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="memo" rows="4" cols="84"></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">&nbsp;스탭주지사항</p>
        </td>
        <td width="620" colspan="3">
            <p>&nbsp;<textarea name="etc" rows="4" cols="84"></textarea></p>
        </td>
    </tr>
    <tr>
        <td width="118" bgcolor="#cfcfdf">
            <p align="center">객실번호</p>
        </td>
        <td width="248">
            <p>&nbsp;<input type="text" name="room_no" size="16" maxlength="30"></p>
        </td>
        <td width="122" bgcolor="#cfcfdf">
            <p>&nbsp;티셔츠사이즈</p>
        </td>
        <td width="250">
                <p><span style="font-size:10pt;"><select name="t_size" size="1">
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
        <td width="118" bgcolor="#cfcfdf">
                <p align="center">&nbsp;항공권번호</p>
        </td>
        <td width="248">
                <p>&nbsp;<input type="text" name="air_no" size="16" maxlength="30"></p>
        </td>
        <td width="122">
                <p>&nbsp;</p>
        </td>
        <td width="250">
                <p>&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="118">
                <p>&nbsp;</p>
        </td>
        <td width="248">
                <p>&nbsp;</p>
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
