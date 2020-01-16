<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="Web_Project_MedicalTest.Main.Doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <div align="center">
       <h2> Doctor Profile</h2>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover" Height="80px" Width="400px" AutoGenerateRows="False" DataKeyNames="DoctorID" DataSourceID="SqlDataSource2" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
            <Fields>
                <asp:TemplateField HeaderText="DoctorID" InsertVisible="False" SortExpression="DoctorID">
                   <%-- <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("DoctorID") %>'></asp:Label>
                    </EditItemTemplate>--%>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DoctorID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DoctorName" SortExpression="DoctorName">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Display="None" ControlToValidate="TextBox4" runat="server" ErrorMessage="Invalid Name! Write valid Name."></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" ControlToValidate="TextBox4" runat="server" ErrorMessage="Invalid Name! Write valid Name."></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3" Display="None" runat="server" ErrorMessage="Your Email Address Invalid, Write Valid Email. "></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3" Display="None" runat="server" ErrorMessage="Your Email Address Invalid, Write Valid Email."></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ControlToValidate="TextBox2" ErrorMessage="You need to enter your Phone Number!"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ControlToValidate="TextBox2" ErrorMessage="You need to enter your Phone Number!"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" Display="None" runat="server" ErrorMessage="Department Name Required!"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox1" Display="None" runat="server" ErrorMessage="Department Name Required!"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CssClass="btn btn-primary"  CausesValidation="True" CommandName="Update" Text="Update"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton2" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Button ID="LinkButton3" runat="server" CssClass="btn btn-primary"  CausesValidation="True" CommandName="Insert" Text="Insert"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton4" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="LinkButton5" runat="server" CssClass="btn btn-warning" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton6" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New"></asp:Button>
                        &nbsp;<asp:Button ID="LinkButton7" runat="server" CssClass="btn btn-danger" CausesValidation="False" OnClick="LinkButton7_Click" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Doctor] WHERE [DoctorID] = @original_DoctorID AND (([DoctorName] = @original_DoctorName) OR ([DoctorName] IS NULL AND @original_DoctorName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([DepartmentName] = @original_DepartmentName) OR ([DepartmentName] IS NULL AND @original_DepartmentName IS NULL))" 
            InsertCommand="INSERT INTO [Doctor] ([DoctorName], [Email], [Mobile], [DepartmentName]) VALUES (@DoctorName, @Email, @Mobile, @DepartmentName)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [DoctorID], [DoctorName], [Email], [Mobile], [DepartmentName] FROM [Doctor] WHERE ([DoctorID] = @DoctorID)" 
            UpdateCommand="UPDATE [Doctor] SET [DoctorName] = @DoctorName, [Email] = @Email, [Mobile] = @Mobile, [DepartmentName] = @DepartmentName WHERE [DoctorID] = @original_DoctorID AND (([DoctorName] = @original_DoctorName) OR ([DoctorName] IS NULL AND @original_DoctorName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([DepartmentName] = @original_DepartmentName) OR ([DepartmentName] IS NULL AND @original_DepartmentName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_DoctorID" Type="Int32" />
                <asp:Parameter Name="original_DoctorName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_DepartmentName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DoctorName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="DepartmentName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="1" Name="DoctorID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DoctorName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="DepartmentName" Type="String" />
                <asp:Parameter Name="original_DoctorID" Type="Int32" />
                <asp:Parameter Name="original_DoctorName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_DepartmentName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
         <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert-danger" runat="server" />


            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="SelectedIndexChanged" />
            </Triggers>
     </asp:UpdatePanel>

    </div>

        <br />


    <div>
        <h2>Doctors On This Medical</h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DoctorID" DataSourceID="SqlDataSource1"  CssClass= "table table-striped table-bordered table-condensed" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Select" Text="Select"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DoctorID" InsertVisible="False"   SortExpression="DoctorID">
<%--                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DoctorID") %>'></asp:Label>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DoctorID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DoctorName" SortExpression="DoctorName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DoctorName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("DoctorName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [DoctorID], [DoctorName], [Email], [Mobile], [DepartmentName] FROM [Doctor]"></asp:SqlDataSource>
  </div>


</asp:Content>
