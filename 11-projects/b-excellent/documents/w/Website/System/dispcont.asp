<!--#include file="../Include/Const.Asp" -->
<!--#include file="../Include/ConnSiteData.Asp" -->
<!--#include file="CheckAdmin.Asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="Images/Admin_style.css">
<%
If InStr(session("AdminPurview"), "|1,") = 0 Then
    response.Write ("<br /><br /><div align=""center""><font style=""color:red; font-size:9pt; "")>��û�в鿴��ģ���Ȩ�ޣ�</font></div>")
    response.End
End If%>
<br />
<table class="tableBorder" width="95%" border="0" align="center" cellpadding="5" cellspacing="1">
<tr><td class="forumRow">
<%page3=request("pag") 
if page3="" then page3=session("contpag") '��ҳ������ǰ��ҳ 
if page3="" then page3="1" 
pa=request("pa") 
if pa="" then pa=session("contpa") 'ÿҳ��ʾ�� 
if pa="" then pa=15 'Ĭ��ÿҳ��ʾ15����������� 
session("contpag")=page3 
session("contpa")=pa 
pages=pa 'ÿҳ��ʾ����***************����һ�γ�������ʵ�ַ�ҳ���� 
SQL="SELECT * FROM tab order by -dat,-id" 
dim rs 
Set rs=Server.CreateObject("ADODB.RecordSet") 
rs.Open sql,conn,1,1 
csi=0 
cs1=0 
cs100=0 
csdat1=0 
do while not rs.eof 
csi=csi+rs("cs") 
if rs("cs")=1 then cs1=cs1+1 
if rs("cs")>=100 then cs100+1 
if datevalue(rs("dat"))=date then 
csdat1=csdat1+1 
end if 
rs.movenext 
loop 
ZS=RS.RECORDCOUNT 
'*****************************************************8����һ�γ������ڷ�ҳ��ʾ 
%> 
����<%Response.Write zs%>����¼�������ǵ�<%Response.Write page3%>ҳ ÿҳ��ʾ��[<a href="dispcont.asp?pag=<%=page3%>&pa=15">15]����[<a href="dispcont.asp?pag=<%=page3%>&pa=20">20]����[<a href="dispcont.asp?pag=<%=page3%>&pa=30">30]����[<a href="dispcont.asp?pag=<%=page3%>&pa=40">40]�� 
[<a href="dispcont.asp">ˢ��] 
<div align="left"> 
<table border="0" cellpadding="0" style="font-size: 9pt"> 
<tr><td>ҳ��</td><%page2=1 
for i=1 to zs step pages 
if page3=cstr(page2) then 
%><td >[<%Response.Write page2%>]</td> 
<% else %> 
<td ><a href="dispcont.asp?pag=<%Response.Write page2%>">[<%Response.Write page2%>]</td> 
<% end if 
page2=page2+1 
next 
sn=pages*(page3-1) '��ǰ��¼��=ÿҳ��ʾ��*ҳ��-ÿҳ��ʾ�� 
if sn>zs then sn=0 
rs.move sn,1 
'**********************************����һ�����ڷ�ҳ 
%> </tr></table> 
</div> <table style="font-size: 9pt" width="100%" bordercolorlight="#000000" border="1" bordercolordark="#FFFFFF" bgcolor="#A4D1E8" cellspacing="0" cellpadding="3"> 
<tr><td>���</td><td>������ʱ��</td><td>������IP</td><td>���ʴ���</td><td>�״η�������</td></tr><% 
for i=1 to pages 
Response.Write "</tr>" 
Response.Write "<td>"&rs("ID")&"</td>" 
Response.Write "<td>"&rs("dat")&"</td>" 
Response.Write "<td>"&rs("IP")&"</td>" 
Response.Write "<td>"&rs("CS")&"</td>" 
Response.Write "<td>"&rs("DAT1")&" </td>" 
Response.Write "</tr>" 
rs.movenext 
if rs.eof then exit for 
next 
rs.close 
%> 
<tr><td>�ϼ�<%=zs%></td><td>���ʴ���Ϊ100�����ϵ���<%=cs100%> </td><td>���ʴ���Ϊ1���У�<%=cs1%></td><td>�ܷ��ʴ���<%=csi%></td><td>�����������<%=csdat1%></td></tr> 
</table>
	</td>
    </tr>
</table>
<br />