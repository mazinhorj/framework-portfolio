<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signos - Consultar Signo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
            font-size: 2.2em;
        }
        .form-group {
            margin-bottom: 25px;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
            font-size: 1.1em;
        }
        input[type="date"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="date"]:focus {
            border-color: #667eea;
            outline: none;
        }
        .btn {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease;
            width: 100%;
            margin-top: 10px;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .btn-secondary {
            background: #6c757d;
            margin-top: 15px;
            padding: 10px 20px;
            font-size: 0.9em;
        }
        .error {
            color: #dc3545;
            background: #f8d7da;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
        }
        .zodiac-symbols {
            font-size: 1.5em;
            margin: 20px 0;
            color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🔮 Consultar Signo</h1>
        <div class="zodiac-symbols">♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓</div>
        
        <c:if test="${not empty erro}">
            <div class="error">${erro}</div>
        </c:if>
        
        <form action="${pageContext.request.contextPath}/resultado" method="post">
            <div class="form-group">
                <label for="dataNascimento">Data de Nascimento:</label>
                <input type="date" id="dataNascimento" name="dataNascimento" required>
            </div>
            
            <button type="submit" class="btn">Descobrir Meu Signo</button>
        </form>
        
        <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Voltar ao Início</a>
    </div>
</body>
</html>

