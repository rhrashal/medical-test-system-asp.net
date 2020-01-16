<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="Web_Project_MedicalTest.Main.WebUserControl" %>

<asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>