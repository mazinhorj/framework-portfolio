<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signos - Página Inicial</title>
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
            margin-bottom: 20px;
            font-size: 2.5em;
        }
        p {
            color: #666;
            font-size: 1.2em;
            margin-bottom: 30px;
            line-height: 1.6;
        }
        .btn {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            transition: transform 0.3s ease;
            display: inline-block;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .zodiac-symbols {
            font-size: 2em;
            margin: 20px 0;
            color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🌟 Descubra seu Signo 🌟</h1>
        <div class="zodiac-symbols">♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓</div>
        <p>Bem-vindo ao nosso sistema de consulta de signos! Descubra qual é o seu signo do zodíaco e conheça suas características principais.</p>
        <a href="${pageContext.request.contextPath}/signos" class="btn">Descobrir Meu Signo</a>
    </div>
</body>
</html>

