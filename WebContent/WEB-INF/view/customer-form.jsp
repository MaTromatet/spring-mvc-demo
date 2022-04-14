<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
	<title>Customer Registration Form</title>
	
	<!-- le style du message d'erreur si il y a une erreur -->
	<style>
		.error {color:red}
	</style>
</head>
<body>

<i>Fill out the form. Asterisk (*) means required.</i>
<br><br>

	<form:form action="processForm" modelAttribute="customer">
	
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name (*): <form:input path="lastName" />
		<!-- s'affiche que si il y a une erreur dans le formulaire avec la classe CSS .error -->
		<form:errors path="lastName" cssClass="error" />
		
		<br><br>

		<input type="submit" value="Submit" />
				
	</form:form>

</body>

</html>










