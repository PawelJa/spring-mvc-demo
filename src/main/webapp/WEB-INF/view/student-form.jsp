<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <title>Student form</title>
</head>

<body>

    <form:form action="processForm" modelAttribute="student">

        First name: <form:input path="firstName" />

        <br><br>

        Last name: <form:input path="lastName" />

        <br><br>

        Country: <form:select path="country">
            <form:options items="${countryOptions}" />
        </form:select>

        <br><br>

        Favorite language:

        <form:radiobuttons path="favoriteLanguage" items="${student.languageOptions}" />

        <br><br>

        Operating systems:

        Windows <form:checkbox path="operatingSystems" value="Windows" />
        Linux <form:checkbox path="operatingSystems" value="Linux" />
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />

        <input type="submit" value="submit" />

    </form:form>

</body>

</html>