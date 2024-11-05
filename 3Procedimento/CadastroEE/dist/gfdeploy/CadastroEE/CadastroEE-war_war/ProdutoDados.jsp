<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="cadastroee.model.Produto" %> 
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Produto</title>
</head>
<body>
    <h1>Cadastro de Produto</h1>
    
    <form action="ServletProdutoFC" method="post">
        <% 
            Produto produto = (Produto) request.getAttribute("produto");
            String acao = (produto == null) ? "incluir" : "alterar";
        %>
        
        <input type="hidden" name="acao" value="<%= acao %>">
        
        <% if ("alterar".equals(acao)) { %>
            <input type="hidden" name="id" value="<%= produto.getIDProduto() %>">
        <% } %>
        
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<%= produto != null ? produto.getNome() : "" %>" required>
        <br>

        <label for="quantidade">Quantidade:</label>
        <input type="number" id="quantidade" name="quantidade" value="<%= produto != null ? produto.getQuantidade() : "" %>" required>
        <br>

        <label for="preco">Preço:</label>
        <input type="number" step="0.01" id="preco" name="preco" value="<%= produto != null ? produto.getPrecoVenda() : "" %>" required>
        <br><br>

        <button type="submit"><%= "incluir".equals(acao) ? "Incluir Produto" : "Alterar Produto" %></button>
    </form>
</body>
</html>
