<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebFormApp_ASPNET2.Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="container" style="width:max-content">

        <!-- Name -->
        <div class="">
            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>

            <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="ValidateControls" 
                ControlToValidate="txtName" ErrorMessage="Name should have atleast 2 characters" style="color:red">
            </asp:CustomValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" 
                ControlToValidate="txtName" style="color:red">
            </asp:RequiredFieldValidator>
        </div> 
        
        <!-- Email  -->
        <div class="mb-3">
            <asp:Label ID="Label2" runat="server" Text="Email" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email format" 
                ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color:red">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" 
                ControlToValidate="txtEmail" style="color:red">
            </asp:RequiredFieldValidator>
        </div> 
        
        <!-- Re-Enter Email -->
        <div class="mb-3">
            <asp:Label ID="Label5" runat="server" Text="Re-enter Email" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtEmailRe" CssClass="form-control"></asp:TextBox>

            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Email do not match" 
                ControlToValidate="txtEmail" ControlToCompare="txtEmailRe" style="color:red">
            </asp:CompareValidator>
        </div>

         <!-- Age -->
        <div class="mb-3">
            <asp:Label ID="Label6" runat="server" Text="Age" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>

            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Range of Age is invalid" 
                ControlToValidate="txtAge" MaximumValue="130" MinimumValue="18" Type="Integer" style="color:red">
            </asp:RangeValidator>
        </div>  
        
        <!-- Subject -->
        <div class="mb-3">
            <asp:Label ID="Label3" runat="server" Text="Subject" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control"></asp:TextBox>
        </div> 
        
        <!-- Message Txt Box -->
        <div>
            <asp:Label ID="Label4" runat="server" Text="Your Message" CssClass="form-label"></asp:Label>
            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" columns="60" Rows="5" CssClass="form-control" ></asp:TextBox>


            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message is a mandatory" 
                ControlToValidate="txtName" style="color:red">
            </asp:RequiredFieldValidator>
        </div>

        <!-- Validation Summary -->
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color:red"/>
        </div>

        <div>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" class="btn btn-primary fw-semibold"></asp:Button>
        </div>

    </section>
</asp:Content>
