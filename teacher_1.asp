<%
Response.ContentType = "application/x-msexcel"
Response.CacheControl = "public"
Response.AddHeader "Content-Disposition", "attachment;filename=member_list.xls"
%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>객실번호</title>
<meta name="generator" content="Namo WebEditor v6.0">
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<!--#include file="dbcon.asp"-->
<p>
<%
check="정진우"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;정진우 교수님 : <%=num1%>명&gt;</p>


<%
v_teacher="정진우"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="신수정"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;신수정 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="신수정"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>메일</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("mail")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>







<p><%
check="김영숙"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;김영숙 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="김영숙"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>메일</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("mail")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>







<p><%
check="조은영"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;조은영 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="조은영"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>메일</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("mail")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>






<p><%
check="장형준"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;장형준 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="장형준"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>













<p><%
check="최현숙"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;최현숙 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="최현숙"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="이재향"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;이재향 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="이재향"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="신민자"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;신민자 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="신민자"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="최희연"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;최희연 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="최희연"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>






<p><%
check="주희성"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;주희성 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="주희성"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>







<p><%
check="피경선"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;피경선 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="피경선"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="한기정"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;한기정 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="한기정"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>



<p>
<%
check="안미현"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;안미현 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="안미현"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>
<%
i=1
Do until rs.EOF or i>rs.pagesize

%><div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">

                <p>성명</p>
            </td>
            <td width="183">
                <p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">

                <p>성별</p>
            </td>
            <td width="209">
                <p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>학교</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>주소</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>연락처 1</p>
            </td>
            <td width="183">

                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">

                <p>연락처 2</p>
            </td>
            <td width="209">

                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>





<p><%
check="박종화"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;박종화 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="박종화"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>





<p><%
check="장현정"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;장현정 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="장현정"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>



<p>
<%
check="김경민"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;김정미 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="김정미"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>
<%
i=1
Do until rs.EOF or i>rs.pagesize

%><div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">

                <p>성명</p>
            </td>
            <td width="183">
                <p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">

                <p>성별</p>
            </td>
            <td width="209">
                <p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>학교</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>주소</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>연락처 1</p>
            </td>
            <td width="183">

                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">

                <p>연락처 2</p>
            </td>
            <td width="209">

                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>






<p>
<%
check="서세원"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;서세원 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="서세원"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>



<p>
<%
check="김정미"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;김정미 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="김정미"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>
<%
i=1
Do until rs.EOF or i>rs.pagesize

%><div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">

                <p>성명</p>
            </td>
            <td width="183">
                <p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">

                <p>성별</p>
            </td>
            <td width="209">
                <p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>학교</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>주소</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>연락처 1</p>
            </td>
            <td width="183">

                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">

                <p>연락처 2</p>
            </td>
            <td width="209">

                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>



<p>
<%
check="양승희"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;양승희 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="양승희"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>
<%
i=1
Do until rs.EOF or i>rs.pagesize

%><div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">

                <p>성명</p>
            </td>
            <td width="183">
                <p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">

                <p>성별</p>
            </td>
            <td width="209">
                <p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>학교</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>주소</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>연락처 1</p>
            </td>
            <td width="183">

                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">

                <p>연락처 2</p>
            </td>
            <td width="209">

                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>



<p>
<%
check="이경민"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;이경민 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="이경민"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%><p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>
<%
i=1
Do until rs.EOF or i>rs.pagesize

%><div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">

                <p>성명</p>
            </td>
            <td width="183">
                <p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">

                <p>성별</p>
            </td>
            <td width="209">
                <p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>학교</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>주소</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>연락처 1</p>
            </td>
            <td width="183">

                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">

                <p>연락처 2</p>
            </td>
            <td width="209">

                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">

                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">

                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>
</p>






<p><%
check="송영"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;송영 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="송영"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>








<p><%
check="백청심"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;백청심 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="백청심"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>







<p><%
check="송희송"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;송희송 교수님 :  <%=num1%>명&gt;<br>

<%
v_teacher="송희송"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>





<p><%
check="박희정"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;박희정 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="박희정"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="최정주"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;최정주 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="최정주"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>





<p><%
check="나윤주"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;나윤주 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="나윤주"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>



<p><%
check="전경원"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;전경원 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="전경원"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>




<p><%
check="오지현"
sql = "select count(number) from student where teacher='"&check&"' "
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1


if isnull(rs(0)) then
num1=0

else
num1=rs(0)

end if
rs.close
set rs=nothing
%>
&nbsp;&lt;오지현 교수님 : <%=num1%>명&gt;</p>
<%
v_teacher="오지현"
sql = "select * from student where teacher='"&v_teacher&"' order by number desc"
set rs = server.createobject("adodb.recordset")
rs.open sql,dbcon,1

rs.pagesize=20
if rs.eof then
%>
             <p align="left">아직 신청된 학생이 존재하지 않습니다.


<%
else 
GotoPage = request("GotoPage")
if GotoPage = "" then
  GotoPage = 1
end if
pagecount = rs.PageCount 
rs.AbsolutePage = GotoPage
%>

<%
i=1
Do until rs.EOF or i>rs.pagesize

%>
<div align="left">
    <table border="1" width="606">
        <tr>
            <td width="93">
                <p>성명</p>
            </td>
            <td width="183"><p align="left">&nbsp;&nbsp;<%=rs("name")%></p>
            </td>
            <td width="93">
                <p>성별</p>
            </td>
            <td width="209"><p align="left">&nbsp;&nbsp;<%=rs("sex")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>학교</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("school")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>주소</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("address")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>현지도교수</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("n_teacher")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>연락처 1</p>
            </td>
            <td width="183">
                <p>&nbsp;&nbsp;<%=rs("f_phone")%></p>
            </td>
            <td width="93">
                <p>연락처 2</p>
            </td>
            <td width="209">
                <p>&nbsp;&nbsp;<%=rs("phone")%></p>
            </td>
        </tr>
        <tr>
            <td width="93">
                <p>희망레슨곡</p>
            </td>
            <td width="497" colspan="3">
                <p>&nbsp;&nbsp;<%=rs("title")%></p>
            </td>
        </tr>
    </table>
</div>
<p align="left">   
    
<%
   rs.Movenext
   i=i+1
   Loop

end if
%>

</p>

<p align="left">&nbsp;</p>
</body>

</html>
