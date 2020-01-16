<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="Web_Project_MedicalTest.Main.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
  
        <div>

            <table align="center" class="table table-striped table-dark" style="width: 60%">
                <tr>
                    <td colspan="2" align="center" style="height: 31px"><h4>Assign a Doctor to a new Patient</h4></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" AssociatedControlID="txtName" runat="server" Text="Patient Name :"></asp:Label></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" ControlToValidate="txtName" runat="server" ErrorMessage="Invalid! Write Valid Name."></asp:RequiredFieldValidator>
            
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RangeValidator ID="RangeValidator1"  ControlToValidate="txtAge" runat="server" Type="Integer"  MaximumValue="100" MinimumValue="0" Display="None" ErrorMessage="Write valid Age."></asp:RangeValidator>
                    <asp:Label ID="Label7" AssociatedControlID="txtAge" runat="server" Text="Patient Age :"></asp:Label></td>
                    <td><asp:TextBox ID="txtAge" CssClass="form-control" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtMobile" Display="None" runat="server" ErrorMessage="Invalid! Write Valid Mobile Number."></asp:RequiredFieldValidator>
                         <asp:Label ID="Label8" AssociatedControlID="txtMobile" runat="server" Text="Patient Mobile :"></asp:Label></td>
                    <td><asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DropDownList2" Display="None" runat="server" ErrorMessage="Please Select Doctor Name."></asp:RequiredFieldValidator>
                         <asp:Label ID="Label9" AssociatedControlID="DropDownList2" runat="server" Text="Doctor Name :"></asp:Label></td>
                    <td><asp:DropDownList ID="DropDownList2" CssClass="btn bg-primary dropdown-toggle" runat="server" DataSourceID="SqlDataSource3" DataTextField="DoctorName" DataValueField="DoctorID"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [DoctorID], [DoctorName] FROM [Doctor]"></asp:SqlDataSource>
                 </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-primary" Text="Insert" OnClick="btnInsert_Click" /></td>
                </tr>
            </table>
            <div><asp:ValidationSummary ID="ValidationSummary1" runat="server" /></div>

        </div>        

    <div>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-responsive table-hover" style="width: 80%" AutoGenerateColumns="False" DataKeyNames="PatientID" DataSourceID="SqlDataSource1">
            <Columns>
                
                <asp:TemplateField HeaderText="PatientID" InsertVisible="False" SortExpression="PatientID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server"  Text='<%# Eval("PatientID") %>'></asp:Label>
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
                        <asp:DropDownList ID="DropDownList1"  runat="server" CssClass="btn bg-primary dropdown-toggle"  DataSourceID="SqlDataSource2" DataTextField="DoctorName" DataValueField="DoctorID" SelectedValue='<%# Bind("DoctorID") %>'></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [DoctorName], [DoctorID] FROM [Doctor]"></asp:SqlDataSource>
                        <%--<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="btn btn-warning" CausesValidation="false" CommandName="Update" Text="Update"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton2" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="LinkButton3" runat="server" CssClass="btn btn-warning" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton4" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Select" Text="Select"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton5" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Patient] WHERE [PatientID] = @original_PatientID " 
            InsertCommand="INSERT INTO [Patient] ([PatientName], [Age], [MobileNumber], [DoctorID]) VALUES (@PatientName, @Age, @MobileNumber, @DoctorID)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT Patient.PatientID, Patient.PatientName, Patient.Age, Patient.MobileNumber, Doctor.DoctorID, Doctor.DoctorName FROM [Patient] join Doctor on Patient.DoctorID = Doctor.DoctorID;" 
            UpdateCommand="UPDATE [Patient] SET [PatientName] = @PatientName, [Age] = @Age, [MobileNumber] = @MobileNumber, [DoctorID] = @DoctorID WHERE [PatientID] = @original_PatientID " >
            <DeleteParameters>
                <asp:Parameter Name="original_PatientID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PatientName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="MobileNumber" Type="String" />
                <asp:Parameter Name="DoctorID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PatientName" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="MobileNumber" Type="String" />
                <asp:Parameter Name="DoctorID" Type="Int32" />
                <asp:Parameter Name="original_PatientID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>

</asp:Content>
