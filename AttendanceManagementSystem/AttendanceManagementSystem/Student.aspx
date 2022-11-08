<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="AttendanceManagementSystem.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
<div style="background-image: url('Images/BackGroundImage.png'); width: 1200px">

<table align="center" style="height: 340px; width: 392px">
        <tr>
            <td colspan="2" align="center">
                <h2>
                    Add Student</h2>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <b>First Name: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" placeholder="Student's First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Fist Name is empty" ForeColor="Red" >*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Name should be in Characters" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Last Name: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="197px" Height="41px" placeholder="Student's Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Last Name is empty" ForeColor="Red" >*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Name should be in Characters" 
                        ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
             <b>Roll_No: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
               <asp:TextBox ID="TextBox4" runat="server" Width="197px" Height="41px" 
                    TextMode="Number" placeholder="Student Roll_No."></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Roll No. is empty" 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Invalid Roll Number" 
                        ForeColor="Red" ValidationExpression="[0-9]{2}">*</asp:RegularExpressionValidator>
               </td>  
               
        </tr>
        <tr>
            <td>
             <b>Email: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
               <asp:TextBox ID="TextBox2" runat="server" Width="197px" Height="41px" 
                    TextMode="Email" placeholder="Student Email_Id"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Email is empty" 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
               </td>  
               
        </tr>
        <tr>
            <td>
             <b>Contact_No: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
               <asp:TextBox ID="TextBox3" runat="server" Width="197px" Height="41px" 
                    TextMode="Number" placeholder="Student Phone_No."></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Contact No is empty" 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Invalid Phone Number" 
                        ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
               </td>  
               
        </tr>
        <tr>
            <td>
             <b>Course: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="40px" Width="197px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Select Course " 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
             <b>Year: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"
                    Height="40px" Width="197px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem Value="0" >Select Year</asp:ListItem>
                    <asp:ListItem Value="1">First Year</asp:ListItem>
                    <asp:ListItem Value="2">Second Year</asp:ListItem>
                    <asp:ListItem Value="3">Third Year</asp:ListItem>
                    <asp:ListItem Value="4">Final Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="Select Year" 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
             </td>
         </tr>
        <tr>
            <td>
             <b>Semester: &nbsp;&nbsp;&nbsp;</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="40px" Width="197px">
                    <asp:ListItem Value="0" >Select Semester</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Select Semester" 
                    ForeColor="Red" >*</asp:RequiredFieldValidator>
             </td>
         </tr>
         
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True"
                    Height="47px" Width="86px" Font-Size="Medium" OnClick="Button1_Click" /></td>
            
        </tr> 

        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label></td>
            
        </tr>
        <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center">
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </td>
        </tr>
        
        </table>
    <br />
    <br />
    <br />
    <br />
    <br />
  </div>
 </center>  
</asp:Content>
