<%@ page language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${!empty empList }">
		<table border="1" bgcolor="cyan" align="center">
			<tr bgcolor="pink">
				<th>eno</th>
				<th>ename</th>
				<th>desg</th>
				<th>salary</th>
				<th>deptNo</th>
				<th>operations</th>
			</tr>
			<c:forEach var="emp" items="${empList }">
				<tr>
					<td>${emp.empno }</td>
					<td>${emp.ename }</td>
					<td>${emp.job }</td>
					<td>${emp.sal }</td>
					<td>${emp.deptno }</td>

					<td><a href="edit_employee?eno=${emp.empno}"><img
							src="images/edit1.png" width="50" height="50">
							&nbsp;&nbsp;&nbsp;</a><a href="delete_employee?eno=${emp.empno}"
						onclick="confirm('Do you want to delete')"><img
							src="images/delete1.png" width="50" height="50"> </a></td>
				</tr>
			</c:forEach>
		</table>
	</c:when>

	<c:otherwise>
		<h1 style="color: red; text-align: center">Records not found</h1>
	</c:otherwise>

</c:choose>
<br>

<blink>
	<%-- To print the service class given msg --%>
	<h1 style="color: green; text-align: center">${resultMsg }</h1>
</blink>

<h1 style="text-align: center">
	<a href="insert_employee">Add Employee<img src="images/add1.png" /></a>
</h1>
<br>
<Br>
<h1 style="text-align: center">
	<a href="./">home<img src="images/home1.png" /></a>
</h1>
