<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportinPage.aspx.cs" Inherits="Web_Project_MedicalTest.Report.ReportinPage" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="../aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>

    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />

</asp:Content>
