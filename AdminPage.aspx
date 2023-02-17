<%@ Page Title="" Language="C#" MasterPageFile="~/SWCharactersmp.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="StarWarsCharactersmp.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center; text-decoration:underline">Admin Page:</h1>
    <br />
    <%= msg %>
</asp:Content>
