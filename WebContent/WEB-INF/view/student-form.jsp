<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

<!-- on utilise les balises Spring, le modelAttribut correspond au nom du model défini dans la méthode du controller "showForm" -->
	<form:form action="processForm" modelAttribute="student">
	
		<!-- le path correspond à la propriété de la classe Student" -->
		First name: <form:input path="firstName" />
		
		<br><br>
	
		Last name: <form:input path="lastName" />
		
		<br><br>
		
		Country:
		
<%-- 	<form:select path="country">
		
		<form:option value="BR">Brazil</form:option>
		<form:option value="FR">France</form:option>
		<form:option value="DE">Germany</form:option>
		<form:option value="IN">India</form:option>
		<form:option value="US">United States of America</form:option>
		
		</form:select> --%>
		
		<form:select path="country">
			
			<!-- items qui va se referer à la hashmap dans la classe Student contenant la liste des pays  -->
			<form:options items="${student.countryOptions}" />
			
		</form:select> 
		
		<br><br>
	
		<input type="submit" value="Submit" />
	
	</form:form>


</body>

</html>












