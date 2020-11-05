<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Jobseeker_login.aspx.cs" Inherits="JobHunt.Jobseeker_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container" >
       <div class="row justify-content-center custom-margin">
           <div class="col-md-6 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <center>
                                   <img width="150px" src="image/generaluser.png" />
                               </center>

                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <center>
                                   <h4 text-color:"dark">JobSeeker Login</h4>
                               </center>

                           </div>
                       </div>
                          <div class="row">
                           <div class="col">
                               <center>
                                   <hr>
                               </center>

                           </div>
                       </div>
                          <div class="row">
                           <div class="col">
                               <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>

                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Enter your username" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                               </div>
                               <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                               
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Enter your Password" TextMode="Password" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
                        </div>

                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>New User?</label>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign  Up" OnClick="Button1_Click" />
                                </div>
                            </div>
                        
                        
                   </div>
               </div>
           </div>
       </div>
   </div>

     <!--Footer-->
            <footer>
                
                <div class="footer-top"  style="margin-top: 50px">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
                                <h3>Divinector</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                                <h2>Divinector</h2>
                                <ul>
                                    <li><a href="#">Event</a>
                                     </li>
                                     <li><a href="#">Support</a>
                                         </li>
                                     <li><a href="#">Hosting</a>
                                         </li>
                                     <li><a href="#">Career</a>
                                         </li>
                                     <li><a href="#">Blog</a>
                                         </li>

                                </ul>
                            </div>
                             <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
                                 <h2>Follow us</h2>
                                 <p>Please follow us on social media.</p>
                                 <a href="#"><i class="fa fa-facebook"></i></a>
                                  <a href="#"><i class="fa fa-twitter"></i></a>
                                  <a href="#"><i class="fa fa-Linkedin"></i></a>
                                  <a href="#"><i class="fa fa-pinterest"></i></a>
                             </div>
                             <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
                                 <h2>Our Newletter</h2>
                             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <form action="">
                                  <input type="email">
                                  <input type="submit" value="subscribe">
                              </form>

                             </div>
                            
                        </div>
                    </div>
                </div>
            </footer>

            <!--Footer-->


</asp:Content>