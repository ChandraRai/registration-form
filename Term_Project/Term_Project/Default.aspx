<%@ Page Title="" Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Term_Project.Addmember" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="formWrapper">

        <div id="form">             
            <div class="logo">     
                <img src="Images/logo.png" alt="NCCS logo" height="60" width="60">
                <h1 class="text-center">Artist Registration</h1>
            </div>
            <asp:Label ID="LabelField" runat="server" Visible="false">All Fields are required.</asp:Label>            
            <br />
            <br />
            <div class="form-item">
                <p class="formLabel">Name</p>
                <input type="text" name="name" id="name" runat="server" class="form-style" autocomplete="off" />
            </div>
           
            <div class="form-item">
                <p class="formLabel">Address</p>
                <input type="text" name="address" id="address" runat="server" class="form-style" autocomplete="off" />
            </div>

            <div class="form-item">
                <p class="formLabel">Contact</p>
                <input type="text" name="contact" id="contact" runat="server" class="form-style" autocomplete="off" />
            </div>

            <div class="form-item">
                <p class="formLabel">Email</p>
                <input type="email" name="email" id="email" runat="server" class="form-style" autocomplete="off" />
            </div>

           <div class="form-item">
                <p class="formLabel">Genre (eg. dance, song, comedy)</p>
                <input type="text" name="genre" runat="server" id="genre" class="form-style" autocomplete="off" />               
            </div>

            <div class="form-item">
                <p class="formLabel">Link</p>
                <input type="text" name="link" id="link" runat="server" class="form-style" autocomplete="off" />
            </div>

            <div class="form-item">                
                <input type="submit" class="login" value="Register" onserverclick="SaveButton_Click" runat="server">     
                <input type="submit" class="login" value="Cancel" onserverclick="CancelButton_Click" runat="server">     
            </div>
            
        </div>
    </div>


</asp:Content>
