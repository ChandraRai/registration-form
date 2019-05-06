<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Memberpage.aspx.cs" Inherits="Term_Project.Memberpage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Data_Container">
        <div class="row">
            <div class="col-18 col-md-auto">
                <p>Registered Artists List</p>
                <asp:GridView ID="MemberGridView" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-striped table-dark">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Member ID" Visible="true" />
                        <asp:BoundField DataField="Name" HeaderText="Name" Visible="true" />
                        <asp:BoundField DataField="Address" HeaderText="Address" Visible="true" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" Visible="true" /> 
                        <asp:BoundField DataField="Email" HeaderText="Email" Visible="true" />
                        <asp:BoundField DataField="Genre" HeaderText="Genre" Visible="true" /> 
                        <asp:BoundField DataField="Link" HeaderText="Video/Audio Link" Visible="true" />                        
                    </Columns>
                </asp:GridView> 
            </div>  
        </div>
    </div>
</asp:Content>
