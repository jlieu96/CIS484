<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FinancialReport.aspx.cs" Inherits="FinancialReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
       <asp:Label ID="lblTitle" runat="server" Text="Financial report" Font-Size="X-Large" ForeColor="Blue"></asp:Label><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
                  
                <asp:Label ID="lblInvoice" runat="server" Text="Invoice #:" Font-Size="Large" ForeColor="#0099ff"></asp:Label>
                <asp:TextBox ID="txtInvoice" runat="server"></asp:TextBox><br />
        <br />
        <br />
                <asp:Label ID="lblOrganization" runat="server" Text="Organization Title:"  Font-Size="Large" ForeColor="#0099ff"></asp:Label>
                <asp:TextBox ID="txtOrganization" runat="server"></asp:TextBox>
        <br />
        <br />
               <asp:Label ID="lblPayType" runat="server" Text="PayType"  Font-Size="Large" ForeColor="#0099ff"></asp:Label>
            
                    

            
        <asp:DropDownList ID="DropDownList1" runat="server">
       </asp:DropDownList>
            
                    

            
        <br />
        <br />
                <asp:Label ID="lblCheckNumber" runat="server" Text="Check Number:"  Font-Size="Large" ForeColor="#0099ff"></asp:Label>
                <asp:TextBox ID="txtCheckNumber" runat="server"></asp:TextBox>
   
        <br />
        <br />
                <asp:Label ID="lblAmount" runat="server" Text="Amount:"  Font-Size="Large" ForeColor="#0099ff"></asp:Label>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <br />
        <br />
                <asp:Label ID="lblProgram" runat="server" Text="Program Name:"  Font-Size="Large" ForeColor="#0099ff"></asp:Label>
                <asp:DropDownList ID="dpProgram" runat="server">
                    </asp:DropDownList>
       <br />
        <br />
       
               <asp:Button ID="btnInsert" class="btn btn-primary" runat="server" Text="Insert" Width="150" OnClick="btn1_Select" />
        <br />
       
            <asp:Label ID="lblStatus" runat="server"></asp:Label> <br />
        <br />
</asp:Content>

