<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:directive.page import="java.util.Vector"/>
<jsp:directive.page import="java.util.Hashtable"/>

<jsp:useBean id="JSPDataBean" scope='request' class="simpleWebFrame.web.JSPDataBean" />

<div id="popwindow">
<h2><span>重置密码</span><a style="" class="close-button" href="javascript:closeInfoWindow('infoWindow');">关闭</a></h2>

<div style="width:400px; padding:10px">
	<div style="margin-top:10px;">
	<table cellpadding="0" cellspacing="0">
	<tr>
		<td width="25%" align="right" style="height:30px;font-weight:bold;"><span class="red">* </span>密码：</td>
		<td width="75%"><input type="password" maxlength="20" name="password" id="password" value="" /> (6-20个英文字符)</td>
	</tr>
	<tr>
		<td align="right" style="height:30px;font-weight:bold;"><span class="red">* </span>确认密码：</td>
		<td><input type="password" maxlength="20" name="password2" id="password2" value="" /></td>
	</tr>
	</table>
	</div>
</div>

<div style="text-align: center;" class="buttonsDIV">
	<a class="btn_y" onclick="javascript:doAction('resetUserPassword');"><span>确认</span></a>&nbsp;
	<a class="btn_y" onclick="javascript:closeInfoWindow('infoWindow');"><span>取消</span></a>
</div>
</div>
