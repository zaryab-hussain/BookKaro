<%@ Page Title="" Language="C#" MasterPageFile="~/BooKaroTheme.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BookKaro.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <title>Book Karo</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/clientslider.css" rel="stylesheet"/>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/jquery.scrollbox.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    
    <!-- begin:header -->
    <div id="header" class="header-slide">
      <div class="container">

      </div>
    </div>
    <!-- end:header -->
        
    <!-- begin:service -->
    <div id="service">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <div class="quick-search">
                      <div class="row">
                          
                              <div class="col-md-6 col-sm-6 ">
                                  <div class="form-group">
                                      <asp:Label ID="Label1" class="formlabels" runat="server">Date</asp:Label>
                                      
                                      <div class='input-group date' id='datetimepicker1'>
                                          <asp:TextBox ID="dateselection" runat="server" class="form-control" ></asp:TextBox>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                                      </div>

                                  </div>
                                 
                                  <div class="form-group">
                                     <asp:Label ID="Label2" class="formlabels" runat="server">Location</asp:Label>
                                      <asp:DropDownList class="form-control" ID="AreaList" runat="server">
                                      <asp:ListItem>Gulistan-e-Jauhar</asp:ListItem>
                                      <asp:ListItem>Shahrae-e-Faisal</asp:ListItem>
                                      <asp:ListItem>Defence/Clifton</asp:ListItem>
                                      <asp:ListItem>North Nazimabad</asp:ListItem>
                                  </asp:DropDownList>
                                  </div>
                              </div>
                              <!-- break -->
                              <div class="col-md-6 col-sm-6 ">
                                  <div class="form-group">
                                      <asp:Label ID="Label3"  class="formlabels" runat="server">Event Type</asp:Label>
                                   <asp:DropDownList class="form-control" ID="EventList" runat="server">
                                      <asp:ListItem>Birthday</asp:ListItem>
                                      <asp:ListItem>Weeding</asp:ListItem>
                                      <asp:ListItem>Business</asp:ListItem>
                                  </asp:DropDownList>
                                  </div>
                                  <div class="form-group">
                                      <asp:Label ID="Label4"  class="formlabels" runat="server">No. of Guests</asp:Label>
                                    
                                     <asp:DropDownList class="form-control" ID="GuestList" runat="server">
                                      <asp:ListItem>100-300</asp:ListItem>
                                      <asp:ListItem>300-500</asp:ListItem>
                                      <asp:ListItem>500-1000</asp:ListItem>
                                      <asp:ListItem>1000+</asp:ListItem>
                                  </asp:DropDownList>
                                  </div>
                              </div>

                              <div class="col-md-12 col-sm-12 "><asp:Button ID="QuickPlanButton" runat="server" Text="Book Karo!" class="btn btn-success btn-lg btn-block" />
</div>
                         
                      </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <!-- end:service -->








    <!-- begin:partner -->
    <div id="partner">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="heading-title bg-white">
              <h2>Our Premium Partners</h2>
            </div>
          </div>
        </div>
        <!-- break -->
          
        <div class="row">
          <div class="col-md-12">
              <div id="demo4" class="scroll-img">
                  <ul>
                      <li><a href="#" target="_blank"><img src="img/hanif-rajput-logo.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/movenpick.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/marriott-hotels-resorts-suites-logo-primary.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/Avari-Towers-FL.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/pec.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/lasania.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/mela.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/pc.jpg"/></a></li>
                      <li><a href="#" target="_blank"><img src="img/marquee.jpg"/></a></li>

                  </ul>
              </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end:partner -->
    <script type="text/javascript">
        $(function ($) {
            $('#datetimepicker1').datetimepicker()
        });

        $(function ($) {

            $('#demo4').scrollbox({
                direction: 'h',
                switchItems: 4,
                distance: 670
            });

        });
    </script>
</asp:Content>
