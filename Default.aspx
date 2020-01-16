<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Project_MedicalTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Medical Test & Repoting System</h1>
        <asp:Image ID="Image1" CssClass="img-responsive" runat="server" ImageUrl="~/Image/Hospital-Management-System-1.jpg" />
        <p><a href="Main/Patients.aspx" class="btn btn-primary btn-lg">Click here &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add or Modify Doctors Profile</h2>
            
            <p>
                <a class="btn btn-primary" href="Main/Doctors.aspx">Click here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Add or Modify Test/Particular List</h2>
            
            <p>
                <a class="btn btn-primary" href="Main/ParticularItem.aspx">Click here &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Entry the Medical test </h2>
           
            <p>
                <a class="btn btn-primary" href="Main/Service.aspx">Click here &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
