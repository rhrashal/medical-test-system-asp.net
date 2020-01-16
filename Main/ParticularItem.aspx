<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ParticularItem.aspx.cs" Inherits="Web_Project_MedicalTest.Main.Particulars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h4> Add or Modify Particular list</h4>
    <asp:DetailsView DataKeyNames="ParticularID" ID="DetailsView1" runat="server" align="center" CssClass="table table-bordered table-hover" AllowPaging="True" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" >
        <Fields>
            <asp:TemplateField HeaderText="ParticularID" SortExpression="ParticularID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" Text='<%# Bind("ParticularID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" Text='<%# Bind("ParticularID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ParticularID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ParticularName" SortExpression="ParticularName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ParticularName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" runat="server" ErrorMessage="Invalid Name"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ParticularName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ParticularName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                <EditItemTemplate>
                    Chosse Image : <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                    Uplode Image : <asp:FileUpload ID="FileUpload2" runat="server" />
                    <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="80" Width="100" ImageUrl='<%# Bind("ImageUrl") %>' />
                   <%-- <asp:Label ID="Label2" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="TextBox1" runat="server" Display="None" ErrorMessage="Enter valid Balance"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="LinkButton1" CssClass="btn btn-warning" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton2" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Button ID="LinkButton3" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton4" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:Button>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="LinkButton5" runat="server" CssClass="btn btn-warning" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton6" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton7" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>

    

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Web_Project_MedicalTest.Models.Particular" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Select" TypeName="Web_Project_MedicalTest.Models.ParticularTbl" UpdateMethod="Update" OnInserting="ObjectDataSource1_Inserting" OnUpdating="ObjectDataSource1_Updating"></asp:ObjectDataSource>

    </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" align="center" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataKeyNames="ParticularID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="ParticularID" InsertVisible="False" SortExpression="ParticularID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ParticularID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ParticularID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ParticularName" SortExpression="ParticularName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ParticularName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ParticularName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="70" Width="70" ImageUrl='<%# Bind("ImageUrl") %>' />
                      <%--  <asp:Label ID="Label3" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ParticularID], [ParticularName], [ImageUrl], [Rate] FROM [Particular]"></asp:SqlDataSource>

    </div>

</asp:Content>
