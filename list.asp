<%
del = request("del")
del = Replace(del, "'", "")
del = Replace(del, """", "")
%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>신청자목록</title>
<style type="text/css"> 
  A {text-decoration: none; color:navy } 
  A:hover {text-decoration: underline; color:#ff4500} 
  td{ font-family:돋움; font-size:14px }
</style>

</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<!--#include file="menu.asp"-->
<!--#include file="dbcon.asp"-->
<table cellpadding="1" cellspacing="1" width="1085" style="border:1px solid #cfcfdf">

    <tr bgcolor="#cfcfdf" height="25" align="center">

        <td width="57">
            No
        </td>
        <td width="91">
            객실번호
        </td>
        <td width="78">
            성명
        </td>
        <td width="63">
            성별
        </td>
        <td width="234">
            학교
        </td>
        <td width="102">
            악기
        </td>
        <td width="103">
            희망교수
        </td>
        <td width="137">
            연락처
        </td>
        <td width="120">
            입금확인
        </td>
<%
if del = "ok" then
%>   
        <td width="100">
            삭제
        </td>
<%
end if
%>
    </tr>

<%

sql = "select (select count(1) from student) cnt, number, room_no, jumin, name, sex, school, kind, teacher, phone, check2 from student order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=30
if rs.eof then

response.redirect "../error.asp"


else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
ct = rs("cnt")
i=1
ct = ct - 30*(GotoPage-1)	
Do until rs.EOF or i>rs.pagesize


%>
		 <tr bgcolor= "white" align="center">

        <td width="57">
            <%=ct%>
        </td>
        <td width="91">
            <%=rs("room_no")%>
        </td>
        <td width="78">
            <b><a href='view.asp?jumin=<%=rs("jumin")%>'><%=rs("name")%></a></b>
        </td>
        <td width="63">
        	<%
        		if rs("sex") = "남"  then
        	%>
        		<font color="blue"><%=rs("sex")%></font>
        	<%
        		else
        	%>
        		<font color="red"><%=rs("sex")%></font>
        	<%
        		end if 
        	%>
        </td>
        <td width="234">
            <%=rs("school")%>
        </td>
        <td width="102">
            <%=rs("kind")%>
        </td>
        <td width="103">
            <%=rs("teacher")%>
        </td>
        <td width="137">
            <%=rs("phone")%>
        </td>
        <td width="120">
            <%=rs("check2")%>
        </td>
<%
if del = "ok" then
%>        
        <td width="100">
            <a href="edit_ok.asp?jumin=<%=rs("jumin")%>&del=ok">삭제</a>
        </td>
<%
end if 
%>
    </tr>
    <tr>
        <td width="1085" colspan="10" bgcolor="#993300" height="1">
        </td>
    </tr>

<%
   rs.Movenext
   i=i+1
   ct = ct - 1
   Loop

end if
%>

</table>


<table width="985" height="50">
	  <tr bgcolor= "white">
  			<td height="20" align="center">
						<%
blockPage=Int((GotoPage-1)/10)*10+1

'************************ 이전 10 개구문 시작 ***************************
if blockPage = 1 Then %>
                [이전]  
<% Else %> 
   
				<a href="list.asp?GotoPage=<%=blockPage-10%>">[이전]</a>&nbsp;
<%  
End If  
'************************ 이전 10 개 구문 끝***************************           
   i=1  
   Do Until i > 10 or blockPage > pagecount  
      If blockPage=int(GotoPage) Then  
%>   
       <b><font color="blue"> <%=blockPage%>  </font> </b>
<%Else%>
    <a href="list.asp?GotoPage=<%=blockPage%>"><%=blockPage%></a>&nbsp; 
<%  
    End If  
           
    blockPage=blockPage+1  
    i = i + 1  
    Loop  
'************************ 다음 10 개 구문 시작***************************   
if blockPage > pagecount Then  %>
		[다음] &nbsp; 


<% Else  %>   
		<a href="list.asp?GotoPage=<%=blockPage%>">[다음]</a>&nbsp; 

<%  
End If  
'************************ 다음 10 개 구문 끝***************************           
%>&nbsp;

        </td>
    </tr>
</table>


<table width="985" border="0" cellspacing="0" cellpadding="0">
  <form action="searchlist.asp" method="post" name="userform">
    <tr> 
      <td valign="middle" width="985"> 
        <table border="0" cellspacing="0" cellpadding="0" align="right">
          <tr> 
            <td height="18"> 
              <div align="right">&nbsp;</div>
            </td>
          </tr>
        </table>

          <select name="search" size="1" style="font-family:굴림; font-size:9pt; background-color:#ffffff; border-width:1; border-color:rgb(199,208,210); border-style:solid; ;" onMouseOver = "this.style.backgroundColor = '#e8eff7'" onMouseOut = "this.style.backgroundColor = '#ffffff'">
            <option value="성명">성명</option>
            <option value="교수">교수</option>
            <option value="입금여부">입금여부</option>
					  <option value="객실번호">객실번호</option>
					  <option value="입금자명">입금자명</option>
          </select>
          <input type="text" name="keyword" size="20" maxlength="20" style="font-family:굴림; font-size:9pt; background-color:#ffffff; border-width:1; border-color:rgb(199,208,210); border-style:solid; ;" onMouseOver = "this.style.backgroundColor = '#e8eff7'" onMouseOut = "this.style.backgroundColor = '#ffffff'">
          <input type="submit" name="Submit" value="검 색"> 
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      </td>
      <td width="18">&nbsp;</td>
    </tr>
  </form>
</table>

</body>

</html>
