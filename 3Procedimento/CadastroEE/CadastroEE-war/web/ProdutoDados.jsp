<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="cadastroee.model.Produto" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Produto</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="container">
    <h1>Cadastro de Produto</h1>
    
    <form action="ServletProdutoFC" method="post" class="form">
        <% 
            Produto produto = (Produto) request.getAttribute("produto");
            String acao = (produto == null) ? "incluir" : "alterar";
        %>
        
        <input type="hidden" name="acao" value="<%= acao %>">
        <% if ("alterar".equals(acao)) { %>
            <input type="hidden" name="id" value="<%= produto.getIDProduto() %>">
        <% } %>
        
        
        <div class="mb-3">
            <label for="nome" class="form-label">Nome:</label>
            <input type="text" class="form-control" id="nome" name="nome" value="<%= produto != null ? produto.getNome() : "" %>" required>
        </div>

       
        <div class="mb-3">
            <label for="quantidade" class="form-label">Quantidade:</label>
            <input type="number" class="form-control" id="quantidade" name="quantidade" value="<%= produto != null ? produto.getQuantidade() : "" %>" required>
        </div>

       
        <div class="mb-3">
            <label for="preco" class="form-label">Preço:</label>
            <input type="text" class="form-control" id="preco" name="preco" value="<%= produto != null ? produto.getPrecoVenda() : "" %>" required>
        </div>

        
        <button type="submit" class="btn btn-primary"><%= "incluir".equals(acao) ? "Incluir Produto" : "Alterar Produto" %></button>
    </form>
</body>
</html>
