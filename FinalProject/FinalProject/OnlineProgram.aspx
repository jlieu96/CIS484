<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineProgram.aspx.cs" Inherits="OnlineProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Online Programs</h1>
        <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="DateTxt" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label2" runat="server" Text="Month"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        
        <asp:Label ID="Label4" runat="server" Text="Kids in class"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label5" runat="server" Text="State/Country"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label6" runat="server" Text="Number of people"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label7" runat="server" Text="Grade Level"></asp:Label>
        <asp:DropDownList ID="DDLgradelevel" runat="server"></asp:DropDownList><br />

        <asp:Label ID="Label8" runat="server" Text="Teacher Name"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label10" runat="server" Text="Educator"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label11" runat="server" Text="Theme"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label12" runat="server" Text="Animals Used"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    </div>
</asp:Content>
