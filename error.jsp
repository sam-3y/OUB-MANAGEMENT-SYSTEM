
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
    <centre>
        <h1>Error!</h1>
        <h2><%=exception.getMessage() %>  </h2>
    
    </centre>
       
    </body>
</html>
