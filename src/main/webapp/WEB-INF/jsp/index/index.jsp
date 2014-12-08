
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ol� mundo</title>
        <link href="<c:url value="/css/estilo.css"/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Lista de Produtos</h1>
        <hr>

        <form method="POST" action="${linkTo[ProdutosController].add}">

            Descri��o: <input type="text" name="p.nome" required/><br>
            Pre�o:     <input type="text" name="p.preco" required /><br>
            <button type="submit">Salvar</button>
        </form>

        <hr>

        <table>
            <tr>
                <td>ID</td>
                <td>Nome</td>
                <td>Pre�o R$</td>
                <td>A��o</td>
            </tr>
            <c:if test="${not empty produtos}">
                <c:forEach items="${produtos}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.nome}</td>
                        <td><button onclick="mostraDetalhe(${p.id});">Detalhes</button></td>
                    </tr>

                </c:forEach>
            </c:if>
        </table>

        <div id="overlay">
            <div>
                <h3>Detalhes do produto</h3>
                ID: <span id="pID"></span> <br>
                NOME: <span id="pNOME"></span> <br>
                PRE�O: <span id="pPRECO"></span> <br>
                <button id="btn-fechar">Fechar</button>
            </div>
        </div>
        <script src="<c:url value="/js/jquery.js"/>"></script>
        <script src="<c:url value="/js/script.js"/>"></script>
    </body>
</html>
