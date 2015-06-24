<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post cms</title>
<script type="text/javascript">
function doSubmit()
{
	document.log.work.value="postsql";
	document.log.method="post";
	document.log.action="Admin";
	document.log.submit();
}
</script>
</head>
<body>
<%
	String name="";
	if(session.getAttribute("ImageName")!=null)
	{
		name=(String)session.getAttribute("ImageName");
	}
%>
<form name="log" >
<input type="hidden" name="work">
	<table width="800" height="600" border=1>
    	<tr>
        	<td colspan=2 align="center">
            	NEW POST
            </td>
            
        </tr>
        <tr>
        	<td>
            	Category:
            </td>
            <td>
            	<select name="category">
                	<option value="Cinema">Cinema</option>
                    <option value="Politics">Politics</option>
                    <option value="Sports">Sports</option>
                    <option value="Technologies">Technologies</option>
                    <option value="Products">Products</option>
                    <option value="Education">Education</option>
                    <option value="Others">Others</option>
                    
                </select>
            </td>
            
        </tr>
        <tr>
        	<td>
            	Title:
            </td>
        	<td>
            	<input type="text" name="title" size="30" />
            </td>
        </tr>
        <tr>
        	<td>
            	Short Description:
            </td>
        	<td>
            	<textarea name="sd" rows="5" cols="30" name="sd">
                </textarea>
            </td>
        </tr>    
        <tr>
        <td>
            Date:
        </td>
        	<td>
        		<input type="date" name="date" >
        	</td>
        </tr>
        
        <td>
           Image
        </td>
        <td>
            <input type="text" name="img" id="img" size="30" value=<%=name %> disabled>
        </td>
        </tr>
        </tr>
        <tr>
        	<td valign="top">
            	Main Description:
            </td>
        	<td>
            	<textarea name="d" rows="40" cols="70" name="sd">
                </textarea>
            </td>
        </tr>
        <tr>
        <td>
        </td>
        <td>
        
        </td>
        </tr>
        <tr>
        	<td align="center" colspan="2">
            	<input type="button" name="sub" value="submit" onclick="doSubmit()" />
            </td>
        	
        </tr>
        
    </table>
</form>
</body>
</html>