<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1-UserInfo.aspx.cs" Inherits="WK3_WebServerControls.WebForm1_UserInfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <configuration>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
</configuration>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <asp:Label ID="NameLabel" runat="server" Text="Please Enter Your Name"></asp:Label>
           <asp:TextBox ID="UserName" runat="server" CssClass="text-box-user" OnTextChanged="UserName_TextChanged"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="UserName"></asp:RequiredFieldValidator>
    <br></br>
            <asp:Label ID="AgeLabel" runat="server" Text="Please Enter Your Age"></asp:Label>
            <asp:TextBox ID="UserAge" runat="server" CssClass="text-box-user"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ControlToValidate="UserAge"></asp:RequiredFieldValidator>
           <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="UserAge" ErrorMessage="Input Value Btwn.18-100" MaximumValue="100" MinimumValue="18" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    <br><br />
            <asp:Label ID="TelLabel" runat="server" Text="Please Enter Your Cell No."></asp:Label>
            <asp:TextBox ID="UserCell" runat="server" CssClass="text-box-user"></asp:TextBox>
    
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredField" ControlToValidate="UserCell"></asp:RequiredFieldValidator>
    
    <br></br>
            <asp:Label ID="EmailLabel" runat="server" Text="Please Enter Your Email"></asp:Label>
            <asp:TextBox ID="UserEmail" runat="server" CssClass="text-box-user"></asp:TextBox>
   
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UserEmail" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
   
    <br><br />
            <asp:Label ID="ConfirmLabel" runat="server" Text="Please Confirm Your Email"></asp:Label>
            <asp:TextBox ID="EmailConfirm" runat="server" CssClass="text-box-user" OnTextChanged="EmailConfirm_TextChanged"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UserEmail" ErrorMessage="RequiredField"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailConfirm" ControlToValidate="UserEmail" ErrorMessage="Email Does Not MAtch"></asp:CompareValidator>
    <br></br>
    <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
  

</asp:Content>
