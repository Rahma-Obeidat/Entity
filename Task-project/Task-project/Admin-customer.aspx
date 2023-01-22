<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-customer.aspx.cs" Inherits="Task_project.Admin_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .big_div{
             background-image: url("images/bac.jpg");
             background-repeat:no-repeat;
             background-size:cover;
            
             width:100%;
             height:750px;
           /*  margin-left:10%;*/
            /* margin-top:4%;*/
              position:relative;

        }
           .div_add{
    border:solid 3px #2B3A55;
    border-radius:50px;
    width:35%;
    height:500px;
    margin-left:32%;
    margin-top:10%;
    
    position:absolute;
    
}
              h1{
    text-align:center;
    color:#2B3A55;
}
             .textbox{
     border:solid 2px #2B3A55;
     width:60%;
     height:30px;
     margin-left:20%;
}

               .drop{
                  border:solid 2px #2B3A55;
                  width:54%;
                   height:30px;
                   /* margin-left:20%;*/
            }
                .lable{
 margin-left:20%;
 color:#2B3A55;
 font-weight:bold;
 font-size:large;
            }

                .btn{
     border:solid 2px #2B3A55;
     color:white;
     background-color:#2B3A55;
    /* margin-left:20%;*/
     border-radius:30px;
     padding:5px;
     font-size:small;
     font-weight:bold;
}

                 .btn_Add{
                border:solid 2px #2B3A55;
     color:white;
     background-color:#2B3A55;
     margin-left:10%;
     border-radius:30px;
     padding:10px;
     font-size:large;
     font-weight:bold;
            }
             .btn_Show{
                border:solid 2px #2B3A55;
     color:white;
     background-color:#2B3A55;
     margin-left:10%;
     border-radius:30px;
     padding:10px;
     font-size:large;
     font-weight:bold;
            }
              .lable3{
 margin-left:10%;
 color:#2B3A55;
 font-weight:bold;
 font-size:large;
            }
              .l{
                  color:red;
                  margin-left:32%;
                  font-size:large;
                  font-weight:bold;
              }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="big_div">
            
        
        <div class="div_add">
            <h1>Add Customer</h1>
            <asp:TextBox ID="Textname" runat="server" placeholder="Name" CssClass="textbox"></asp:TextBox><br /><br />
            <asp:TextBox ID="TextEmail" runat="server" placeholder="Email"  CssClass="textbox"></asp:TextBox><br /><br />
            <asp:TextBox ID="Textphone" runat="server" placeholder="Phone"  CssClass="textbox"></asp:TextBox><br /><br />

            <asp:TextBox ID="TextAge" runat="server" placeholder="Age"  CssClass="textbox"></asp:TextBox><br /><br />
            <asp:Label ID="Label1" runat="server" Text="City" CssClass="lable"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop"></asp:DropDownList><br /><br />
             <asp:Label ID="Label3" runat="server" Text="Choose Image : " CssClass="lable3"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/><asp:Button ID="upload" runat="server" Text="upload" OnClick="upload_Click" class="btn" /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label> <br />
            <asp:Button ID="Button1" runat="server" Text="Add Customer" OnClick="Button1_Click" class="btn_Add"/>

          
                <asp:Button ID="ButtonShow" runat="server" Text="Show All Customers" OnClick="ButtonShow_Click" CssClass="btn_Show" /><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Please Fill All Fields" Visible="false" CssClass="l"></asp:Label>


        </div>
     </div>
    </form>
</body>
</html>
