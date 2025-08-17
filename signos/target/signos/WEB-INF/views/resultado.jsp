<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signos - Resultado</title>
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
            max-width: 600px;
            width: 90%;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
            font-size: 2.2em;
        }
        .signo-nome {
            font-size: 3em;
            color: #764ba2;
            font-weight: bold;
            margin: 20px 0;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }
        .data-nascimento {
            color: #666;
            font-size: 1.2em;
            margin-bottom: 30px;
        }
        .descricao {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 10px;
            margin: 25px 0;
            border-left: 5px solid #764ba2;
            text-align: left;
            line-height: 1.6;
            font-size: 1.1em;
            color: #333;
        }
        .btn {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
            padding: 12px 25px;
            text-decoration: none;
            border-radius: 25px;
            font-size: 1em;
            font-weight: bold;
            transition: transform 0.3s ease;
            display: inline-block;
            margin: 10px;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        .btn-secondary {
            background: #6c757d;
        }
        .zodiac-symbol {
            font-size: 4em;
            margin: 20px 0;
        }
        .resultado-header {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="resultado-header">
            <h1>✨ Seu Signo ✨</h1>
        </div>
        
        <div class="data-nascimento">
            Data de Nascimento: <strong>${dataNascimento}</strong>
        </div>
        
        <div class="signo-nome">${signo}</div>
        
        <div class="zodiac-symbol">
            <c:choose>
                <c:when test="${signo == 'Áries'}">♈</c:when>
                <c:when test="${signo == 'Touro'}">♉</c:when>
                <c:when test="${signo == 'Gêmeos'}">♊</c:when>
                <c:when test="${signo == 'Câncer'}">♋</c:when>
                <c:when test="${signo == 'Leão'}">♌</c:when>
                <c:when test="${signo == 'Virgem'}">♍</c:when>
                <c:when test="${signo == 'Libra'}">♎</c:when>
                <c:when test="${signo == 'Escorpião'}">♏</c:when>
                <c:when test="${signo == 'Sagitário'}">♐</c:when>
                <c:when test="${signo == 'Capricórnio'}">♑</c:when>
                <c:when test="${signo == 'Aquário'}">♒</c:when>
                <c:when test="${signo == 'Peixes'}">♓</c:when>
                <c:otherwise>🌟</c:otherwise>
            </c:choose>
        </div>
        
        <div class="descricao">
            <strong>Características do seu signo:</strong><br><br>
            ${descricao}
        </div>
        
        <div>
            <a href="${pageContext.request.contextPath}/signos" class="btn">Consultar Outro Signo</a>
            <a href="${pageContext.request.contextPath}/" class="btn btn-secondary">Voltar ao Início</a>
        </div>
    </div>
</body>
</html>

