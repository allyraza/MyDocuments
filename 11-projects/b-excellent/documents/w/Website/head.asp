<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<table width="1002"  border="0" align="center" cellpadding="0" cellspacing="0" class="margin">
  <tr>
    <td width="243" align="center"><a href="index.asp"><img src="<%=SysRootDir%><%=SiteLogo%>" border="0"></a></td>
    <td width="10" align="center"><img src="images/top_1.gif" width="5" height="107" /></td>
    <td width="400" valign="top" class="top">
	<h1>����˼����ҵ����������޹�˾</h1>
	<div class="top_about">��һ��Ϊ����Э�����˼���ҵ����ѧϰ���Ľ��ͷ�չ��ȫ������������������������ѵ����ѯ����...<a href="#"><font color="#0D6EA0">Let's Start</font></a></div>
	</td>
    <script language="javascript">
	function login_check(){
		if (document.login.username.value==""){ 
			alert('����д�����û�����'); 
			document.login.username.focus(); 
			return false; 
		} 
		if (document.login.password.value==""){ 
			alert('����д�������룡'); 
			document.login.password.focus(); 
			return false; 
		} 
	}
	function collapse_change() {
	var obj = document.getElementById("logtable");
	obj.style.display = "block";
	}
	</script>
    <td width="353"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" id="logtable" style="display:none;">
      <form action="http://218.106.248.67/cgi-bin/mailbox.cgi" method="post" onsubmit="return login_check();" name="login" id="login" target="_blank">  
      <tr>
        <td colspan="2" align="left"><img src="images/logotit.jpg" width="189" height="27" /></td>
      </tr>
      <tr>
        <td width="31%" align="right">�û�����</td>
        <td width="69%" align="left"><input name="username" type="text" id="username" size="15" class="linput">   </td>
        <input type="hidden" name="mail_domain" value="b-excellent.com">
      </tr>
      <tr>
        <td align="right">�� �룺</td>
        <td align="left"><input name="password" type="password" id="password" size="15" class="linput">  </td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td align="left"><input name="imageField" type="image" src="images/login.jpg" style="border:0px;"></td>
      </tr></form>
    </table></td>
  </tr>
</table>
<table width="1002" border="0" align="center" cellpadding="0" cellspacing="0" class="margin">
  <tr>
    <td>
	  <ul class="nav">                              
	    <li><a href="index.asp">��վ��ҳ</a></li>
		<li><a href="about.asp">��������</a></li>
		<li><a href="service.asp">����Χ</a></li>
		<li><a href="directory.asp">�ͻ���¼</a></li>
		<li><a href="know.asp">֪ʶ԰��</a></li>
		<li><a href="message.asp">�ÿ�����</a></li>
		<li><a href="contact.asp">��ϵ����</a></li>
        <li><a href="#" onClick="collapse_change()">�����¼</a></li>
	  </ul>
	</td>
  </tr>
</table>
<table width="975" border="0" align="center" cellpadding="0" cellspacing="0" class="margin">
  <tr>
    <td><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','973','height','260','src','images/banner','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','images/banner' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="973" height="260">
      <param name="movie" value="images/banner.swf" />
      <param name="quality" value="high" />
      <embed src="images/banner.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="973" height="260"></embed>
    </object></noscript></td>
  </tr>
</table>