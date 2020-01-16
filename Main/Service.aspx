<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="Web_Project_MedicalTest.Main.Service" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table align="center" class="table table-bordered table-hover table-responsive" style="width: 50%">
            <tr>
                <td colspan="2">
                    <h3>Assign Test to Patient</h3>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" AssociatedControlID="DropDownList1" runat="server" Text="Patient Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn bg-primary dropdown-toggle" DataSourceID="SqlDataSource2" DataTextField="PatientName" DataValueField="PatientID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PatientID], [PatientName] FROM [Patient]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" AssociatedControlID="DropDownList2" runat="server" Text="Particular Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn bg-primary dropdown" DataSourceID="SqlDataSource3" DataTextField="ParticularName" DataValueField="ParticularID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ParticularID], [ParticularName] FROM [Particular]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;
                    <asp:Button ID="btnInsert" align="center" runat="server" CssClass="btn btn-primary" Text="Insert" OnClick="btnInsert_Click" />
                </td>                
            </tr>
        </table>
    </div>


    <div>




        <asp:GridView ID="GridView1" align="center" style="width: 70%" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="20">
            <Columns>
                <asp:TemplateField HeaderText="PatientName" SortExpression="PatientName">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("PatientName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ParticularName" SortExpression="ParticularName">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ParticularName") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ParticularName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Select" Text="Select"></asp:Button>
                        <asp:Button ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Service] WHERE [ServiceID] = @original_ServiceID" 
            InsertCommand="INSERT INTO [Service] ([PatientID], [ParticularID]) VALUES (@PatientID, @ParticularID)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="select Service.ServiceID, Service.PatientID, Service.ParticularID,  Patient.PatientName, Particular.ParticularName 
                            from Patient join Service on Patient.PatientID = Service.PatientID
			                            join Particular on Particular.ParticularID = Service.ParticularID;">
            <DeleteParameters>
                <asp:Parameter Name="original_ServiceID" Type="Int32" />
                <asp:Parameter Name="original_PatientID" Type="Int32" />
                <asp:Parameter Name="original_ParticularID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PatientID" Type="Int32" />
                <asp:Parameter Name="ParticularID" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>


        



    </div>

</asp:Content>
