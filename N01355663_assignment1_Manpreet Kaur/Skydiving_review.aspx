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
            <label>Where you did skydiving?</label>
            <asp:TextBox runat="server" ID="skydiving_place" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your skydiving place" ControlToValidate="skydiving_place"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>How many persons were with you?</label>
            <asp:RadioButtonList runat="server" ID="skydiving_personcount">
                <asp:ListItem Text="ONE" Value="one"></asp:ListItem>
                <asp:ListItem Text="TWO" Value="two"></asp:ListItem>
                <asp:ListItem Text="MORE THAN TWO" Value="more than two"></asp:ListItem>
            </asp:RadioButtonList>
           <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select an option" ControlToValidate="skydiving_personcount"></asp:RequiredFieldValidator>
        </section>
        <section>
            <label>Which is the best place to do skydiving?</label>
            <asp:DropDownList runat="server" ID="skydiving_bestplace">
                <asp:ListItem Text="Dubai" Value="dubai"></asp:ListItem>
                <asp:ListItem Text="Nepal" Value="nepal"></asp:ListItem>
                <asp:ListItem Text="Spain" Value="spain"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a best place (going by yourself is not an option)!" ControlToValidate="skydiving_bestplace"></asp:RequiredFieldValidator>
         </section>  
         <section>
            <label>Can you provide me your phone number in case of any type of query left? i.e. (999) 212 8350:</label>
            <asp:TextBox runat="server" ID="skydiver_phone"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="skydiver_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter a valid phone number."></asp:RegularExpressionValidator>
            <!--  I got this regular expression validator from your example-->
         </section>
         <section>
              <label>Please provide your skydiving experience a star rating number. (maximum 5)</label>
              <asp:TextBox runat="server" ID="skydiving_reviewrating"></asp:TextBox>
              <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="skydiving_reviewrating" ErrorMessage="Please enter a rating number between 0 and 5." MinimumValue="0" MaximumValue="5" ></asp:RangeValidator>
         </section>
         <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
         </section>
          <section id="skydivingbox" runat="server"></section>
         <section>
            <input type="submit" value="submit" />
         </section>
        </div>
     </form>
</body>
</html>
