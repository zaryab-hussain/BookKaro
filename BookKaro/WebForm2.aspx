<%@ Page Title="" Language="C#" MasterPageFile="~/BooKaroTheme.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BookKaro.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <title>Contact Us </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    meta charset="utf-8">
  <title>jQuery UI Slider - Range slider</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script>
      $(function () {
          $("#slider-range").slider({
              range: true,
              min: 0,
              max: 500,
              values: [75, 300],
              slide: function (event, ui) {
                  $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
              }
          });
          $("#amount").val("$" + $("#slider-range").slider("values", 0) +
            " - $" + $("#slider-range").slider("values", 1));
      });
  </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

   <div class="row">

       <div class="col-md-4 col-sm-6 col-xs-12">

           <p>
  <label for="amount">Price range:</label>
  <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;"/>
</p>
 
<div id="slider-range"></div>
 

       </div>
        


   </div>

</asp:Content>
