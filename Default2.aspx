<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 438px;
        }
        .auto-style3 {
            width: 438px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        #txt_tel_no_isd {
            width: 118px;
        }
        #txt_tel_no {
            width: 107px;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style7 {
            width: 438px;
            font-size: large;
        }
        .auto-style8 {
            width: 438px;
            font-size: large;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 438px;
            height: 26px;
        }
        .auto-style11 {
            width: 438px;
            height: 56px;
        }
        .auto-style12 {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel id="panel1" runat="server" BackImageUrl="~/final.jpg" Height="100%" Width="100%">
    <table style="margin:0 auto" >
        
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Registration for Category:</span></strong></font><font color ="red">*</font></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"     
        RepeatDirection="Horizontal"
        RepeatLayout="Table" ForeColor="Maroon" style="font-size: large; font-weight: 700;">
            <asp:ListItem Text="U14"   Value="U14"></asp:ListItem>
            <asp:ListItem Text="U17" Value="U17"></asp:ListItem>
            <asp:ListItem Text="U19" Value="U19"></asp:ListItem>
            <asp:ListItem Text="U22" Value="U22"></asp:ListItem>
                    <asp:ListItem Text="U25" Value="U25"></asp:ListItem>
        </asp:RadioButtonList>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="please select" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
               <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Player Name:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td><span style="font-size:medium; font-weight: 700; margin-right: 8px">First Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5" style="font-weight: bold">Last Name</span><br/>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox14" ErrorMessage="please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox15" ErrorMessage="please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;</td>
            
        </tr>
         <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Sex:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList>
             </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Father&#39;s Name:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><font color ="black"><strong><span class="auto-style6">Mother&#39;s Name:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Date of Birth:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td >
                <asp:TextBox ID="TextBox12" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Mobile No.:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Residential Address:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Email ID:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td >
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style7"><font color ="black"><strong>Weight:</strong></font></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="in Kg" ForeColor="black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Height:</span></strong></font><span class="auto-style6">&nbsp;&nbsp;&nbsp;</span></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="in CM" ForeColor="black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" ><font color ="black"><strong>About Game Skills</strong></font></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><font color ="black"><strong>Level:</strong></font></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Club Level" Value="Club Level"></asp:ListItem>
                    <asp:ListItem Text="School Level" Value="School Level"></asp:ListItem>
                    <asp:ListItem Text="Causual" Value="Causual"></asp:ListItem>
                    <asp:ListItem Text="Locality" Value="Locality"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><font color ="black"><strong><span class="auto-style6">Bowling Arm:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td class="auto-style9">
                
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Left Arm" Value="Left Arm"></asp:ListItem>
                    <asp:ListItem Text="Right Arm" Value="Right Arm"></asp:ListItem>
                    <asp:ListItem Text="Both" Value="Both"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Bowling Pace:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
                
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Med Pace" Value="Med Pace"></asp:ListItem>
                    <asp:ListItem Text="Full Pace" Value="Full Pace"></asp:ListItem>
                    <asp:ListItem Text="Spinner" Value="Spinner"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Wicket Keeper:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
&nbsp;
                <asp:RadioButtonList ID="RadioButtonList6" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="Yes"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><font color ="black"><strong>Cricket Academy Name:</strong></font></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="black"><strong><span class="auto-style6">Batting:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td>
                   <asp:RadioButtonList ID="RadioButtonList7" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Left Hand" Value="Left Hand"></asp:ListItem>
                    <asp:ListItem Text="Right Hand" Value="Right Hand"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><font color ="black"><strong><span class="auto-style6">First Preference:</span></strong></font><font color ="red"><strong><span class="auto-style6">*</span></strong></font></td>
            <td class="auto-style12">
                <asp:RadioButtonList ID="RadioButtonList8" runat="server" ForeColor="Maroon" RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Batting" Value="Batting"></asp:ListItem>
                    <asp:ListItem Text="Bowling" Value="Bowling"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><font color ="black"><strong>Team Captain Experience: </strong>
                </font></td>
            <td>
              <asp:RadioButtonList ID="RadioButtonList9" runat="server" ForeColor="Maroon"  RepeatDirection="Horizontal" RepeatLayout="Table" style="font-size: large; font-weight: 700;">
                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                    <asp:ListItem Text="No" Value="Yes"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><font color ="black"><strong>Chief Coach Name &amp; Contact Number:</strong></font></td>
            <td>
                &nbsp;<span style="font-size:medium; font-weight: 700; margin-right: 8px">Coach Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style5" style="font-weight: bold">Number</span><br/>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><font color ="red"><strong>*Mandatory Field</strong></font></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
            
    </table>
        </asp:Panel>
        
</asp:Content>

