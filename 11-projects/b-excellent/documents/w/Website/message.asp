<!--#include file="Include/Const.Asp" -->
<!--#include file="Include/ConnSiteData.Asp" -->
<%
Call SiteInfo
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>�ͻ����� - <% =SiteTitle %></title>
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

</head>
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
        <td colspan="3">��<img src="images/weizhi.gif" width="14" height="14" style="vertical-align:middle;" />&nbsp;����ǰ��λ�ã�<a href="index.asp">����˼����ҵ������ҳ</a> �� �ÿ����� </td>
      </tr>
      <tr>
        <td width="44" height="27" align="center" valign="top" bgcolor="#3D8EEA"><img src="images/right_ico.gif" width="28" height="27" /></td>
        <td width="435" valign="top" bgcolor="#3D8EEA"><h2>�ÿ�����</h2></td>
        <td width="194" valign="top" bgcolor="#3D8EEA"><img src="images/right_name.gif" width="194" height="27" /></td>
      </tr>
      <tr>
        <td colspan="3" valign="top" class="pad_left"><table width="90%" border="0" align="center" cellpadding="5" cellspacing="1" bordercolor="#CCCCCC" bgcolor="#E1E1E1"><form action="MessageSave.Asp" method="post" name="formWrite" id="formWrite">
          <tr>
            <td width="19%" align="center" valign="top" bgcolor="#F7f7f7">�������⣺</td>
            <td width="81%" bgcolor="#F7f7f7"><input name="MesName" type="text" id="MesName" size="40" maxlength="100" onfocus="if (this.value=='����д����'){this.value='';}" onblur="if (this.value==''){this.value='����д����';}" value="����д����" />
                      <font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">�ա�����</td>
            <td bgcolor="#FFFFFF"><input name="Linkman" type="text" id="Linkman" size="20" maxlength="50" onfocus="if (this.value=='��������������'){this.value='';}" onblur="if (this.value==''){this.value='��������������';}" value="��������������" />
                      <font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#F7F7F7">��  ��</td>
            <td bgcolor="#F7F7F7"><input name="Sex" type="radio" value="����" checked="checked" />
                      ����
                      <input type="radio" name="Sex" value="Ůʿ" />
                      Ůʿ <font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">��˾���ƣ�</td>
            <td bgcolor="#FFFFFF"><input name="Company" type="text" size="50" maxlength="100" onfocus="if (this.value=='���������Ĺ�˾����'){this.value='';}" onblur="if (this.value==''){this.value='���������Ĺ�˾����';}" value="���������Ĺ�˾����" />
                      <font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#F7F7F7">��ϵ��ַ��</td>
            <td bgcolor="#F7F7F7"><input name="Address" type="text" size="50" maxlength="100" onfocus="if (this.value=='������������ϵ��ַ'){this.value='';}" onblur="if (this.value==''){this.value='������������ϵ��ַ';}" value="������������ϵ��ַ" /><font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">��ϵ�绰��</td>
            <td bgcolor="#FFFFFF"><input name="Telephone" type="text" id="Telephone" onfocus="if (this.value=='������������ϵ�绰'){this.value='';}" onblur="if (this.value==''){this.value='������������ϵ�绰';}" value="������������ϵ�绰" size="30" /><font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#F7F7F7">�������:</td>
            <td bgcolor="#F7F7F7"><input name="Fax" type="text" id="Fax" onfocus="if (this.value=='���������Ĵ������'){this.value='';}" onblur="if (this.value==''){this.value='���������Ĵ������';}" value="���������Ĵ������" size="30" /><font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">�ֻ����룺</td>
            <td bgcolor="#FFFFFF"><input name="Mobile" type="text" id="Mobile" onfocus="if (this.value=='�����������ֻ�����'){this.value='';}" onblur="if (this.value==''){this.value='�����������ֻ�����';}" value="�����������ֻ�����" size="30" /><font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#F7F7F7">�������䣺</td>
            <td bgcolor="#F7F7F7"><input name="Email" type="text" id="Email" onfocus="if (this.value=='���������ĵ�������'){this.value='';}" onblur="if (this.value==''){this.value='���������ĵ�������';}" value="���������ĵ�������" size="30" /><font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">��������</td>
            <td bgcolor="#FFFFFF">
              <label>
              <textarea name="Content" cols="55" rows="7" onfocus="if (this.value=='--����ʲô������������������ǣ�--'){this.value='';}" onblur="if (this.value==''){this.value='--����ʲô������������������ǣ�--';}">--����ʲô������������������ǣ�--</textarea>
              </label>
                       </td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#F7F7F7">��֤�룺</td>
            <td bgcolor="#F7F7F7"><input name="CheckCode" type="text" size="6" maxlength="6" class="memberName" />
                      <a href="javascript:refreshimg()" title="�������������ͼƬ��"><img src="Include/CheckCode/CheckCode.Asp" name="checkcode" align="absmiddle" id="checkcode" style="border: 1px solid #ffffff" /></a> <font color="red">*</font></td>
          </tr>
          <tr>
            <td align="center" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
            <td bgcolor="#FFFFFF"><input name="Submit" type="submit" value="��������" class="cartButton" /></td>
          </tr></form>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<!--#include file="foot.asp"-->
</body>
</html>
