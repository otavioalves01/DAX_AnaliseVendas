# Projeto de Análise de Vendas — Power BI + DAX

## 📘 Sobre o Projeto
Este projeto foi desenvolvido com o objetivo de praticar **modelagem de dados relacional**, **construção de medidas DAX** e **análise de vendas** no Power BI.  

A base simula o banco de dados de uma **loja de eletrônicos**, contendo informações sobre **produtos, categorias, clientes, vendedores e vendas**.  
O foco é aplicar conceitos de **análise de desempenho comercial**, como faturamento, lucratividade e ticket médio.

---

## 🗂 Estrutura do Banco de Dados

O banco segue um modelo relacional no formato **Star Schema**, com a tabela `vendas` como fato principal e as demais como dimensões.

### Tabelas:
- **categorias** → contém as categorias dos produtos (ex: Celulares, Notebooks, TVs etc.)
- **produtos** → nome, preço e custo de cada produto, associado a uma categoria
- **clientes** → dados cadastrais e data de cadastro de cada cliente
- **vendedores** → nome e equipe de cada vendedor
- **vendas** → cabeçalho da venda (cliente, vendedor, data e forma de pagamento)
- **itens_venda** → itens vendidos em cada venda (produto, quantidade e preço unitário)

### Relacionamentos:
- `categorias (1) → produtos (N)`
- `produtos (1) → itens_venda (N)`
- `vendas (1) → itens_venda (N)`
- `clientes (1) → vendas (N)`
- `vendedores (1) → vendas (N)`

---

## 🧮 Principais Medidas DAX Criadas

| Medida | Descrição |
|--------|------------|
| **Total Vendas** | Soma do valor total das vendas (`quantidade * preço_unitário`). |
| **Total Itens Vendidos** | Soma da quantidade total de produtos vendidos. |
| **Total Custo** | Soma do custo total dos produtos vendidos. |
| **Lucro Bruto** | Diferença entre Total Vendas e Total Custo. |
| **Margem de Lucro (%)** | Percentual de lucro sobre o faturamento. |
| **Ticket Médio** | Valor médio gasto por cliente (`Total Vendas / número de vendas`). |
| **Vendas Mês Atual** | Total de vendas considerando apenas o mês corrente. |
| **Total Vendas Mês Anterior** | Total de vendas do mês anterior (usando `SAMEPERIODLASTMONTH`). |
| **Vendas Celulares** | Total de vendas apenas para a categoria *Celulares*. |
