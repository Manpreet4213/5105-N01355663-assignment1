<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skydiving_review.aspx.cs" Inherits="N01355663_assignment1_Manpreet_Kaur.Skydiving_review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SKYDIVING REVIEW</title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
        <h1>SKYDIVING REVIEW</h1>
        <section>
            <label>How does skydiving feel?</label>
            <asp:TextBox runat="server" ID="aspx_skydiving_feeling" ></asp:TextBox>
        </section>
        <section>
            <label>How many persons were with you?</label>
            <div>
                <asp:RadioButtonList runat="server" ID="aspx_skydiving_personaccompanying">
                    <asp:ListItem Text="ONE" Value="one"></asp:ListItem>
                    <asp:ListItem Text="TWO" Value="Two"></asp:ListItem>
                    <asp:ListItem Text="MORE THAN TWO" Value="More than two"></asp:ListItem>
                </asp:RadioButtonList> 
            </div>
         </section>
         <section>
            <label>What was altitude from where you jumped?</label>
            <div>
                <asp:RadioButtonList runat="server" ID="aspx_skydiving_jumpingaltitude">
                    <asp:ListItem Text="5,500 FEET" Value="5,500 feet"></asp:ListItem>
                    <asp:ListItem Text="10,000 FEET" Value="10,000 feet"></asp:ListItem>
                    <asp:ListItem Text="14,000 FEET" Value="14,000 feet"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
         </section>
         <section>
            <label>What kind of aircraft was used when you did skydiving?</label>
            <asp:CheckBoxList ID="aspx_skydiving_aircraft" runat="server">
                <asp:ListItem Text="Helicopters" Value="helicopters"></asp:ListItem>
                <asp:ListItem Text="Hot air ballons" Value="hot air ballons"></asp:ListItem>
            </asp:CheckBoxList>
         </section>
         <section>
            <label>What was it like when the plane door opened?</label>
            <asp:CheckBoxList ID="aspx_skydiving_planedooropened" runat="server">
                <asp:ListItem Text="Exciting" Value="exciting"></asp:ListItem>
                <asp:ListItem Text="Terrifying" Value="terrifying"></asp:ListItem>
            </asp:CheckBoxList>
          </section>
          <section>
            <label>Which is the best place to do skydiving?</label>
            <asp:DropDownList runat="server" ID="aspx_skydiving_bestplace">
                <asp:ListItem Text="Dubai" Value="dubai"></asp:ListItem>
                <asp:ListItem Text="Nepal" Value="nepal"></asp:ListItem>
                <asp:ListItem Text="Spain" Value="spain"></asp:ListItem>
            </asp:DropDownList>
         </section> 
         <section>
            <asp:Button runat="server" Text="submit" />
         </section>
        </div>
     </form>
</body>
</html>
