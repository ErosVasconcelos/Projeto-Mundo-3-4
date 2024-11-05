<%@ page import="java.util.List" %>
<%@ page import="cadastroee.model.Produto" %>

<html>
<head>
    <title>Lista de Produtos</title>
</head>
<body>
    <h1>Lista de Produtos</h1>
    <a href="ServletProdutoFC?acao=formIncluir">Incluir Produto</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Quantidade</th>
            <th>Preço</th>
            <th>Ações</th>
        </tr>
        <%
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
            for (Produto produto : produtos) {
        %>
        <tr>
            <td><%= produto.getIDProduto() %></td>
            <td><%= produto.getNome() %></td>
            <td><%= produto.getQuantidade() %></td>
            <td><%= produto.getPrecoVenda() %></td>
            <td>
                <a href="ServletProdutoFC?acao=formAlterar&id=<%= produto.getIDProduto() %>">Alterar</a>
                <a href="ServletProdutoFC?acao=excluir&id=<%= produto.getIDProduto() %>">Excluir</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
