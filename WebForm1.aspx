<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Taskk.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
     
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
   
     <style type="text/css">
         body{
             background: -webkit-linear-gradient(45deg,skyblue,salmon);
         }

        .auto-style1 {
            width: 100%;
            font-size:2em;
        }
        .auto-style2 {
            height: 26px;
            width: 143px;
        }
        .auto-style3 {
            width: 209px;
        }
        .auto-style6 {
            width: 98px;
        }
        .auto-style7 {
            width: 209px;
            height: 30px;
        }
        .auto-style8 {
            width: 202px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
            width: 143px;
        }
        .auto-style10 {
            height: 26px;
            width: 209px;
        }
        .auto-style11 {
            height: 26px;
            width: 202px;
        }
        .auto-style12 {
            width: 202px;
        }
        .auto-style13 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <h1 class="jumbotron" style="text-align: center">FoodNation</h1>
        <h2  style="text-align: center">Customer Information</h2>
       <br />
         <table class="auto-style1">
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mobile No<asp:Label ID="total" runat="server" ForeColor="White" Text=":"></asp:Label>
                </td>
                <td><br />
                    <asp:TextBox ID="Contact" runat="server"></asp:TextBox>
                </td>
            </tr>
            
        </table>
        <br /><br />
        <br />

<h2 class="jumbotron col-md-12 text-center"> Menu </h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">ITEMS</td>
                <td class="auto-style11">
                    QTY</td>
                <td class="auto-style2">
                    ADD</td>
            </tr>
            <tr>
                <td class="auto-style10">Paneer Khofta</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="q1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="ADD" Width="71px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mashroom</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="q2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" Width="70px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Vada Pav</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="q3" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" Text="ADD" OnClick="Button3_Click" Width="70px" />
                </td>
            </tr>
            <tr>
                <td id="b4" class="auto-style7">Chiken Biryani<br />
&nbsp;(dalui Special )</td>
                <td id="b4" class="auto-style8">
                    <asp:DropDownList ID="q4" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td id="b4" class="auto-style9">
                    <asp:Button ID="Button4" runat="server" Text="ADD" OnClick="Button4_Click" Width="71px" />
                </td>
       </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Generate Bill" />
                </td>
            </tr>
            <tr>
                <td id="b4" class="auto-style7">&nbsp;</td>
                <td id="b4" class="auto-style8">
                    &nbsp;</td>
                <td id="b4" class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

        </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
