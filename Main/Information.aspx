<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Web_Project_MedicalTest.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div>
       <h2>Patient List</h2>
       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn bg-primary dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="PatientName" DataValueField="PatientID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

       <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [PatientName],[PatientID] FROM [Patient]"></asp:SqlDataSource>
   
       <asp:Button ID="btnReport" runat="server" CssClass="btn btn-primary " OnClick="btnReport_Click" Text="Show Report" />
   
   </div>
    <br />
    <div>
        <h2>Individual Patient Details</h2>


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    
               
       

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientID" DataSourceID="SqlDataSource2" CssClass= "table table-striped table-bordered table-condensed">
            <Columns>
                <asp:TemplateField HeaderText="PatientID" InsertVisible="False" SortExpression="PatientID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("PatientID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PatientID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PatientName" SortExpression="PatientName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PatientName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" SortExpression="Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MobileNumber" SortExpression="MobileNumber">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MobileNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("MobileNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DoctorName" SortExpression="DoctorName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ParticularName" SortExpression="ParticularName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ParticularName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("ParticularName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image" SortExpression="ImageUrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"  Height="100" Width="100" ImageUrl='<%# Bind("ImageUrl") %>' />
                        <%--<asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT  Patient.PatientID, Patient.PatientName, Patient.Age, Patient.MobileNumber,
		Doctor.DoctorName, Doctor.DepartmentName, Particular.ParticularName, Particular.ImageUrl, Particular.Rate
            FROM [Patient] join Doctor on Patient.DoctorID = Doctor.DoctorID
				join Service on Service.PatientID = Patient.PatientID 
				join Particular on Particular.ParticularID = Service.ParticularID WHERE Patient.PatientID = @PatientID1">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="PatientID1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

           </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
    </div>

</asp:Content>
