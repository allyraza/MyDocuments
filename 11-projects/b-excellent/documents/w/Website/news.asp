<!--#include file="Include/Const.Asp" -->
<!--#include file="Include/NoSQL.Asp" -->
<!--#include file="Include/ConnSiteData.Asp" -->
<%
Call SiteInfo
Function News(SortPath)
    Dim rs, sql, NewsName, NewFlag
    Set rs = server.CreateObject("adodb.recordset")
    sql = "select top 8 * from Qianbo_News where ViewFlag and Instr(SortPath,'"&SortPath&"')>0 order by id desc"
    rs.Open sql, conn, 1, 1
    If rs.EOF Then
        Response.Write "<li>���������Ϣ</li>"&vbCrLf
    Else
        Do While Not rs.EOF
            If Now() - rs("AddTime")<= 2 Then
                NewsName = StrLeft(rs("NewsName"), 60)
                NewFlag = " <img src=""Images/new.gif"" align=""absmiddle"">"
            Else
                NewsName = Mid(rs("NewsName"), 1, 50)
                NewFlag = ""
            End If
            AutoLink = "NewsView.Asp?ID="&rs("id")&""
            Response.Write "<li><span class=""tit""><img src=""images/news_ico.gif"" width=""3"" height=""5"" style=""vertical-align:middle"" /> <a href="""&AutoLink&""" title="""&NewsName&""">"&NewsName&"</a>"&NewFlag&"</span> <span class=""date"">"&formatdatetime(rs("AddTime"),2)&"</span></li>"&vbCrLf
            rs.movenext
        Loop
    End If
    rs.Close
    Set rs = Nothing
End Function
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>���¶�̬-<% =SiteTitle %></title>
<meta name="keywords" content="<% =Keywords %>" />
<meta name="description" content="<% =Descriptions %>" />
<link href="style.css" type="text/css" rel="stylesheet" rev="stylesheet"/>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35734769-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

<body>
<!--#include file="head.asp"-->
<table width="975"  border="0" align="center" cellpadding="0" cellspacing="0" class="margin">
  <tr>
    <td width="302" valign="top" bgcolor="#F7F7F7"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
			  <li>����ҵս��</li>
			  <li>��������ϵ</li>
			  <li>���쵼����</li>
			  <li>��������</li>
			</ul>		  </td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="41%" height="40" class="left_tit">��ϵ����</td>
          <td width="45%" class="left_bg">&nbsp;</td>
          <td width="14%" class="left_bg"><img src="images/left_ico.gif" width="18" height="19" /></td>
        </tr>
      </table>
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="pad_left"><strong>����˼����ҵ����������޹�˾</strong><br />
      �� ����<% =Telephone %><br />
            �� �棺<% =Fax %><br />
            �� ַ��<% =Address %> <br />
            �� �ࣺ<% =ZipCode %><br />
            WEB��<a href="<% =SiteUrl %>"><% =SiteUrl %></a><br />
      E-mail��<a href="mailto:<% =Email %>"><% =Email %></a></td>
  </tr>
</table></td>
    <td width="673" height="28" colspan="3" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="3">��<img src="images/weizhi.gif" width="14" height="14" style="vertical-align:middle;" />&nbsp;����ǰ��λ�ã�<a href="index.asp">����˼����ҵ������ҳ</a> �� <a href="news.asp">���¶�̬</a> </td>
      </tr>
      <tr>
        <td width="51" height="27" align="center" valign="top" bgcolor="#3D8EEA"><img src="images/right_ico.gif" width="28" height="27" /></td>
        <td width="411" valign="top" bgcolor="#3D8EEA"><h2>���¶�̬</h2></td>
        <td width="212" valign="top" bgcolor="#3D8EEA"><img src="images/right_name.gif" width="194" height="27" /></td>
      </tr>
      <tr>
        <td colspan="3" valign="top" class="pad_left">
		  <ul class="news-two">
		     <li style="border:0;"><img src="images/ejlm_ico.gif" style="vertical-align:middle" />&nbsp;<strong>��ҵ��̬</strong>&nbsp;&nbsp;<a href="newslist.asp?SortID=5">More</a></li>
             <%=News("5,")%>
		    </ul>
		  
		  <ul class="news-two">
		     <li style="border:0; margin-top:10px;"><img src="images/ejlm_ico.gif" style="vertical-align:middle" />&nbsp;<strong>ҵ�綯̬</strong>&nbsp;&nbsp;<a href="newslist.asp?SortID=6">More</a></li>
			 <%=News("6,")%>
		  </ul>
		</td>
      </tr>
    </table></td>
  </tr>
</table>
<!--#include file="foot.asp"-->
</body>
</html>