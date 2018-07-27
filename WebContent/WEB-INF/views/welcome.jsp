<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regional Officer Details</title>
</head>
<body>
	<form action="SROData" method="post">
		<%
			String user = (String) session.getAttribute("uname");
		%>
		<h2 align="left">
			Welcome			<%=user%></h2>
			
				<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="tblbdr">
			                       
                 <tr bgcolor="#E8F6F9">
                              <td width="15%" align="left"  class="headngblue" >Start Date:*</td>
                        <td width="33%" align="left" >
					

						
                    <input type="hidden" name="start_date_year" id="start_date_year" value="2018"/>
                    <input type="hidden" name="start_date_month" id="start_date_month" value="7"/>
                    <input type="hidden" name="start_date_day" id="start_date_day" value="27"/>
                    <input type="hidden" name="start_date_hour" id="start_date_hour" value="14"/>
                    <input type="hidden" name="start_date_minute" id="start_date_minute" value="42"/>
                    <input type="hidden" name="start_date" id="start_date" value=""/>

                    <input type="text" id="start_date_value" name="start_date_value" readonly="true"/>

                    <img src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/images/skin/calendar.png" id="start_date-trigger" alt="Date"/>
                    <script type="text/javascript">

                        Calendar.setup({
                            name:"start_date",
                            inputField:"start_date_value",
                            ifFormat:"%d/%m/%Y",
                            button:"start_date-trigger",                            
                            showsTime:false,
                            timeFormat:"24",
                            onUpdate:start_date_updated,
                            singleClick:true,
                            range:[1999,2999],
                            date:new Date(2018,6,27,14,42)
                        });

                        function start_date_updated(calendar) {

                            document.getElementById('start_date').value='struct'
                            document.getElementById('start_date_year').value= calendar.date.getFullYear();
				            document.getElementById('start_date_month').value= calendar.date.getMonth()+1;
				            document.getElementById('start_date_day').value= calendar.date.getDate();

                            if(calendar.showsTime) {
                                document.getElementById('start_date_hour').value= calendar.date.getHours();
				                document.getElementById('start_date_minute').value= calendar.date.getMinutes();
                            }else {
                                document.getElementById('start_date_hour').value = 0;
				                document.getElementById('start_date_minute').value = 0;
                            }

                        }

                        function start_date_clean() {
                                document.getElementById('start_date').value='';
                                document.getElementById('start_date_value').value=''
                                document.getElementById('start_date_year').value= '';
				                document.getElementById('start_date_month').value= '';
				                document.getElementById('start_date_day').value= '';
                                document.getElementById('start_date_hour').value = '';
				                document.getElementById('start_date_minute').value = '';                            
                        }

                    </script>
               
                   </td>
                      
                      
                      
                              <td  width="15%" align="left"  class="headngblue">End Date:*</td>
                        <td align="left" width="37%"  >
					
							
							
                    <input type="hidden" name="end_date_year" id="end_date_year" value="2018"/>
                    <input type="hidden" name="end_date_month" id="end_date_month" value="7"/>
                    <input type="hidden" name="end_date_day" id="end_date_day" value="27"/>
                    <input type="hidden" name="end_date_hour" id="end_date_hour" value="14"/>
                    <input type="hidden" name="end_date_minute" id="end_date_minute" value="42"/>
                    <input type="hidden" name="end_date" id="end_date" value=""/>

                    <input type="text" id="end_date_value" name="end_date_value" readonly="true"/>

                    <img src="/OCMMS/plugins/calendar-1.2.0-SNAPSHOT3/images/skin/calendar.png" id="end_date-trigger" alt="Date"/>
                    <script type="text/javascript">

                        Calendar.setup({
                            name:"end_date",
                            inputField:"end_date_value",
                            ifFormat:"%d/%m/%Y",
                            button:"end_date-trigger",                            
                            showsTime:false,
                            timeFormat:"24",
                            onUpdate:end_date_updated,
                            singleClick:true,
                            range:[1999,2999],
                            date:new Date(2018,6,27,14,42)
                        });

                        function end_date_updated(calendar) {

                            document.getElementById('end_date').value='struct'
                            document.getElementById('end_date_year').value= calendar.date.getFullYear();
				            document.getElementById('end_date_month').value= calendar.date.getMonth()+1;
				            document.getElementById('end_date_day').value= calendar.date.getDate();

                            if(calendar.showsTime) {
                                document.getElementById('end_date_hour').value= calendar.date.getHours();
				                document.getElementById('end_date_minute').value= calendar.date.getMinutes();
                            }else {
                                document.getElementById('end_date_hour').value = 0;
				                document.getElementById('end_date_minute').value = 0;
                            }

                        }

                        function end_date_clean() {
                                document.getElementById('end_date').value='';
                                document.getElementById('end_date_value').value=''
                                document.getElementById('end_date_year').value= '';
				                document.getElementById('end_date_month').value= '';
				                document.getElementById('end_date_day').value= '';
                                document.getElementById('end_date_hour').value = '';
				                document.getElementById('end_date_minute').value = '';                            
                        }

                    </script>
               
							
                   </td>
  				</tr></table>
  				
<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="tblbdr">
  				<tr bgcolor="#E8F6F9">
                <td width="15%" align="left" colspan="6" class="headngblue">Please select region:*</td></tr>
                
                
                
                  
                    <tr bgcolor="#E8F6F9">
                    
                	<td  width="25%" align="left" class="headngblue">Bahadurgarh(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27803"></td>
                      
                    <td  width="25%" align="left" class="headngblue">Ballabhgarh(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27804"></td>
                    
                      
                    <td  width="25%" align="left" class="headngblue">Dharuhera(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27805"></td>
                    
                    </tr>
                    
                    
                                       
                    <tr bgcolor="#E8F6F9">
                    
                	<td  width="25%" align="left" class="headngblue">Faridabad(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27806"></td>
                   
                    
                    <td  width="25%" align="left" class="headngblue">Gurgaon North(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27807"></td>
                    
                    
                    <td  width="25%" align="left" class="headngblue">Gurgaon South(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27808"></td>
                    
                    </tr>
                    
                    
                    
                    <tr bgcolor="#E8F6F9">
                    <td  width="25%" align="left" class="headngblue">Hissar(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27809"></td>
                    
                    <td  width="25%" align="left" class="headngblue">Jind(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27810"></td>
                    
                    <td  width="25%" align="left" class="headngblue">Panchkula(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27811"></td>
                    
                    </tr>
                    
                    
                    <tr bgcolor="#E8F6F9">
                    <td  width="25%" align="left" class="headngblue">Panipat(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27812"></td>
                    
                    <td  width="25%" align="left" class="headngblue">Sonipat(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27813"></td>
                    
                    
                    <td  width="25%" align="left" class="headngblue">Yamuna Nagar(RO)</td>
                	<td  align="left"  class="headngblue">
                    <input id="groupId" type="checkbox" name="groupId" value="27814"></td>
                    
                    </tr>
                    
                    
                    
  				
  				
  				</table>
		<table border="1" align="left" style="table-layout: auto;">
		<tr><td align="center">
		Regional Officer Data</td>
		</tr>
			<tr>
				<td>Number of CTE Received:</td>
				<td><input type="text" name="arcvd" /></td>
			</tr>
			<br />
			<tr>
				<td>Number of CTE Pending:</td>
				<td><input type="text" name="aprcsd" /></td>
			</tr>
			<br />
			<tr>
				<td>Number of CTE Granted:</td>
				<td><input type="text" name="aprcsd" /></td>
			</tr>
			<br/>
			<tr>
				<td>Number of CTE Rejected:</td>
				<td><input type="text" name="aprcsd" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save" /></td>
				<td><input type="submit" value="Cancel" /></td>
			</tr>
		</table>
	</form>
</body>
</html>