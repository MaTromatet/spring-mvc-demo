<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

<!-- on utilise les balises Spring, le modelAttribut correspond au nom du model d�fini dans la m�thode du controller "showForm" -->
	<form:form action="processForm" modelAttribute="student">
	
		<!-- le path correspond � la propri�t� de la classe Student" -->
		First name: <form:input path="firstName" />
		
		<br><br>
	
		Last name: <form:input path="lastName" />
		
		<br><br>
	
		<input type="submit" value="Submit" />
	
	</form:form>


</body>

</html>












