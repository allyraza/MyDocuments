<!--#include file="Include/Const.Asp" -->
<!--#include file="Include/NoSQL.Asp" -->
<!--#include file="Include/ConnSiteData.Asp" -->
<%
Call SiteInfo
If request.QueryString("SortID") = "" Then
    SeoTitle = "�Ƽ��γ�"
ElseIf Not IsNumeric(request.QueryString("SortID")) Then
    SeoTitle = "��������"
ElseIf conn.Execute("select * from Qianbo_DownSort Where ViewFlag and  ID="&request.QueryString("SortID")).EOF Then
    SeoTitle = "��������"
Else
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select * from Qianbo_DownSort where ViewFlag and ID="&request.QueryString("SortID")
    rs.Open sql, conn, 1, 1
    SeoTitle = rs("SortName")
    rs.Close
    Set rs = Nothing
End If
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title><% =SeoTitle %> - <% =SiteTitle %></title>
<meta name="keywords" content="<% =Keywords %>" />
<meta name="description" content="<% =Descriptions %>" />
<link href="style.css" type="text/css" rel="stylesheet" rev="stylesheet"/>
<body>
<!--#include file="head.asp"-->
<table width="975"  border="0" align="center" cellpadding="0" cellspacing="0" class="margin">
  <tr>
    <td width="301" valign="top" bgcolor="#F7F7F7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="41%" height="40" class="left_tit">��������</td>
        <td width="45%" class="left_bg">&nbsp;</td>
        <td width="14%" class="left_bg"><img src="images/left_ico.gif" width="18" height="19" /></td>
      </tr>
      
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="margin">
        <tr>
          <td width="58%" valign="top">
		    <ul class="about">
			  <li>��˾���</li>
			  <li>��˾����</li>
			  <li>�ͻ���¼</li>
			  <li>�������</li>
			  <li>ְҵ����</li>
			</ul>		  </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="41%" height="40" class="left_tit">���ǵķ���</td>
          <td width="45%" class="left_bg">&nbsp;</td>
          <td width="14%" class="left_bg"><img src="images/left_ico.gif" width="18" height="19" /></td>
        </tr>
      
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="margin">
        <tr>
          <td width="42%" align="center"><img src="images/server-1.gif" width="78" height="58" style="margin-bottom:8px;" /><br />
          <img src="images/server_2.gif" width="78" height="58" /></td>
          <td width="58%" valign="top">
            <ul class="server">
              <li>��<a href="serlist.asp?SortID=1">��ҵս��</a></li>
	          <li>��<a href="serlist.asp?SortID=12">������ϵ</a></li>
	          <li>��<a href="serlist.asp?SortID=13">�쵼����</a></li>
	          <li>��<a href="serlist.asp?SortID=14">������</a></li>
	        </ul>		  </td>
        </tr>
      </table></td>
    <td width="673" height="28" colspan="3" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="3">��<img src="images/weizhi.gif" width="14" height="14" style="vertical-align:middle;" />&nbsp;����ǰ��λ�ã�<a href="index.asp">����˼����ҵ������ҳ</a> �� <a href="know.asp"><% =SeoTitle %></a> </td>
      </tr>
      <tr>
        <td width="51" height="27" align="center" valign="top" bgcolor="#3D8EEA"><img src="images/right_ico.gif" width="28" height="27" /></td>
        <td width="411" valign="top" bgcolor="#3D8EEA"><h2>�Ƽ��γ�</h2></td>
        <td width="212" valign="top" bgcolor="#3D8EEA"><img src="images/right_name.gif" width="194" height="27" /></td>
      </tr>
      <tr>
        <td colspan="3" valign="top" class="pad_left">
		  <ul class="news-two">
		     <li style="border:0;"><img src="images/ejlm_ico.gif" style="vertical-align:middle" />&nbsp;<strong><% =SeoTitle %></strong>&nbsp;&nbsp;</li>
             <%=WebContent("Qianbo_DownSort",request.QueryString("SortID"),"")%>
		</td>
      </tr>
    </table></td>
  </tr>
</table>
<!--#include file="foot.asp"-->
<%Function WebContent(DataFrom, ID, SortPath)
    Dim rs, sql
    Dim HideSort
    Set rs = server.CreateObject("adodb.recordset")
    If ID = "" Then
        SortPath = "0,"
    ElseIf Not IsNumeric(ID) Then
        response.Write "<center>���������Ϣ</center>"
        Exit Function
    ElseIf conn.Execute("select * from "&DataFrom&" Where ViewFlag and  ID="&ID).EOF Then
        response.Write "<center>���������Ϣ</center>"
        Exit Function
    Else
        SortPath = conn.Execute("select * from "&DataFrom&" Where ViewFlag and  ID="&ID)("SortPath")
        conn.Execute("update "&DataFrom&" set ClickNumber=ClickNumber+1 Where ID="&ID)
    End If
    sql = "select * from "&DataFrom&" Where not(ViewFlag) and Instr(SortPath,'"&SortPath&"')>0"
    rs.Open sql, conn, 1, 1
    While Not rs.EOF
        HideSort = "and not(Instr(SortPath,'"&rs("SortPath")&"')>0) "&HideSort
        rs.movenext
    Wend
    rs.Close
    Dim idCount
    Dim pages
    pages = NewInfo
    Dim pagec
    Dim page
    page = CLng(request("Page"))
    Dim pagenc
    pagenc = 5
    Dim pagenmax
    Dim pagenmin
    Dim pageprevious
    Dim pagenext
    datafrom = "Qianbo_Download"
    Dim datawhere
    datawhere = "where ViewFlag and Instr(SortPath,'"&SortPath&"')>0 "&HideSort& " "
    Dim sqlid
    Dim Myself, PATH_INFO, QUERY_STRING
    PATH_INFO = request.servervariables("PATH_INFO")
    QUERY_STRING = request.ServerVariables("QUERY_STRING")'
    If QUERY_STRING = "" Then
        Myself = PATH_INFO & "?"
    ElseIf InStr(PATH_INFO & "?" & QUERY_STRING, "Page=") = 0 Then
        Myself = PATH_INFO & "?" & QUERY_STRING & "&"
    Else
        Myself = Left(PATH_INFO & "?" & QUERY_STRING, InStr(PATH_INFO & "?" & QUERY_STRING, "Page=") -1)
    End If
    Dim taxis
    taxis = "order by id desc "
    Dim i
    sql = "select count(ID) as idCount from ["& datafrom &"]" & datawhere
    Set rs = server.CreateObject("adodb.recordset")
    rs.Open sql, conn, 0, 1
    idCount = rs("idCount")
    If(idcount>0) Then
    If(idcount Mod pages = 0)Then
    pagec = Int(idcount / pages)
Else
    pagec = Int(idcount / pages) + 1
End If
sql = "select id from ["& datafrom &"] " & datawhere & taxis
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 1, 1
rs.pagesize = pages
If page < 1 Then page = 1
If page > pagec Then page = pagec
If pagec > 0 Then rs.absolutepage = page
For i = 1 To rs.pagesize
    If rs.EOF Then Exit For
    If(i = 1)Then
    sqlid = rs("id")
Else
    sqlid = sqlid &","&rs("id")
End If
rs.movenext
Next
End If
If(idcount>0 And sqlid<>"") Then
sql = "select * from ["& datafrom &"] where id in("& sqlid &") "&taxis
Set rs = server.CreateObject("adodb.recordset")
rs.Open sql, conn, 0, 1
While Not rs.EOF
    AutoLink = "currView.Asp?ID="&rs("ID")&""
    Response.Write "<li><span class=""tit""><img src=""images/news_ico.gif"" width=""3"" height=""5"" style=""vertical-align:middle"" /> <a href="""&AutoLink&""">"&rs("DownName")&"</a></span><span class=""date"">"&FormatDate(rs("Addtime"), 13)&"</span></li>"&vbCrLf
    rs.movenext
Wend
Else
    response.Write "<li>���������Ϣ</li>"
    Exit Function
End If
response.Write("</ul>")
Response.Write "<table width=""98%"" border=""0"" cellspacing=""5"" cellpadding=""0"">"&vbCrLf
Response.Write "  <tr height=""10"">"&vbCrLf
Response.Write "    <td align=""center"">"&vbCrLf
Response.Write "��<strong style=""color:red"">"&idcount&"</strong>����¼ ҳ�Σ�<strong style=""color:red"">"&page&"</strong>/"&pagec&" ÿҳ��<strong style=""color:red"">"&pages&"</strong>����¼" & vbCrLf
pagenmin = page - pagenc
pagenmax = page+pagenc
If(pagenmin<1) Then pagenmin = 1
If(page>1) Then response.Write ("<a href="""& myself &"Page=1"" title=""�ص���һҳ""><font face=""webdings"" color=""#000000"">9</font></a> ")
If page - (pagenc * 2 + 1)<= 0 Then
    pageprevious = 1
Else
    pageprevious = page - (pagenc * 2 + 1)
End If
If(pagenmin>1) Then response.Write ("<a href="""& myself &"Page="& pageprevious &""" title=""��"& pageprevious &"ҳ""><font face=""webdings"" color=""#000000"">3</font></a> ")
If(pagenmax>pagec) Then pagenmax = pagec
For i = pagenmin To pagenmax
    If(i = page) Then
    response.Write ("&nbsp;<strong style=""color:red"">"& i &"</strong>&nbsp;")
Else
    response.Write ("[<a href="""& myself &"Page="&i&""">"& i &"</a>]")
End If
Next
If page+(pagenc * 2 + 1)>= pagec Then
    pagenext = pagec
Else
    pagenext = page+(pagenc * 2 + 1)
End If
If(pagenmax<pagec) Then response.Write (" <a href="""& myself &"Page="& pagenext &""" title=""��ת����"&pagenext&"ҳ""><font face=""webdings"" color=""#999999"">:</font></a> ")
If(page<pagec) Then response.Write (" <a href="""& myself &"Page="& pagec &""" title=""��ת����"&pagec&"ҳ""><font face=""webdings"" color=""#000000"">:</font></a>")
Response.Write "    </td>"&vbCrLf
Response.Write "  </tr>"&vbCrLf
Response.Write "</table>"&vbCrLf
rs.Close
Set rs = Nothing
End Function%>
</body>
</html>