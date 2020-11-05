<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applyjob.aspx.cs" Inherits="JobHunt.applyjob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Job Hunt Website</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/applyjob.css" rel="stylesheet"/>
      <link href="css/fontawesome.min.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
       <!-- Including the bootstrap CDN -->
</head>
<body>
    <form id="form1" >
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">JobHunt</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mr-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="HomePage.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <%--<li class="nav-item">
                            <a class="nav-link" href="#">Profile</a>
                        </li>--%>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                              <a class="nav-link" href="wantjob.aspx">Want A Job</a>
                        </li>  
                        <li class="nav-item">
                              <a class="nav-link" href="appliedjobs.aspx" >Applied Jobs</a>
                        </li>
                        <li class="nav-item">
                             <a class="nav-link" href="/Jobseeker_login.aspx?LogoutId=<%:1 %>">Logout</a>
                        </li>
                        
                    </ul>
                  

                   
                </div>
            </nav>
             </div>
    </form>
      <section class="big-banner">
        <div class="container-fluid">
            <div class="col-4">
                <div class="hero-title">
                    <h1 class="display-5 text-center">Submit Required Information</h1>
                </div>


            </div>

        </div>

    </section>

           <div class="container"> 
               <div class="jumbotron" style="margin-top: 50px">
                <form runat="server">
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="validationServer01">First name</label>
                           <%-- <input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" value="Mark" required/>--%>


                             <asp:TextBox ID="TextBox1" runat="server"  class="form-control "  placeholder="eg.Sadia"  ></asp:TextBox>


                           <%-- <div class="valid-feedback">
                                Looks good!
                            </div>--%>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="validationServer02">Last name</label>
                           <%-- <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" value="Otto" required/>--%>
                              <asp:TextBox ID="TextBox2" runat="server"  class="form-control "  placeholder="eg.Tasnim"></asp:TextBox>
                           <%-- <div class="valid-feedback">
                                Looks good!
                            </div>--%>
                        </div>

                    </div>
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="validationServerEmail">Email</label>
                            <div class="input-group">
                                <%--<input type="text" class="form-control is-invalid" id="validationServerEmail" placeholder="ex:myname@gmail.com" aria-describedby="inputGroupPrepend3" required>--%>
                                  <asp:TextBox ID="TextBox3" runat="server"  class="form-control"  placeholder="eg.abc@gmail.com"></asp:TextBox>
                                <%--<div class="invalid-feedback">
                                    Please choose a valid email address.
                                </div>--%>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="validationServerPhoneNumber">Phone Number</label>
                            <div class="input-group">
                               <%-- <input type="text" class="form-control is-invalid" id="validationServerPhoneNumber" placeholder="+8801XXXXXXXXX" aria-describedby="inputGroupPrepend4" required>--%>
                                  <asp:TextBox ID="TextBox4" runat="server"  class="form-control "  placeholder="eg.+8801XXXXXXXXX" ></asp:TextBox>
                               <%-- <div class="invalid-feedback">
                                    Please choose a valid phone number.
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-10">
                            <label for="validationServerPhoneNumber">City</label>
                            <div class="input-group">
                            
                                  <asp:TextBox ID="TextBox5" runat="server"  class="form-control "  placeholder="eg.Dhaka" ></asp:TextBox>
                             
                            </div>

                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-sm-10">
                             <label for="validationServerPhoneNumber">Address</label>
                            <div class="input-group">
                            
                                  <asp:TextBox ID="TextBox6" runat="server"  class="form-control "  placeholder="eg.1419/B Bashabo" ></asp:TextBox>
                             
                            </div>
                        </div>
                   </div>
                    <div class="form-row">
                        <div class="col-sm-10">
                             <label for="validationServerPhoneNumber">Qualification</label>
                            <div class="input-group">
                            
                                  <asp:TextBox ID="TextBox7" runat="server"  class="form-control "  placeholder="eg.B.SC in Computer Science and Engineering " TextMode="MultiLine" ></asp:TextBox>
                             
                            </div>
                        </div>
                       </div>
                    <div class="form-row">
                        <div class="col-sm-10">
                            <label for="validationServerPhoneNumber">Experience</label>
                            <div class="input-group">
                            
                                  <asp:TextBox ID="TextBox8" runat="server"  class="form-control "  placeholder="eg.prodive your experience " TextMode="MultiLine" ></asp:TextBox>
                             
                            </div>
                        </div>
                    </div>
                   <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="validationServerCV">Upload CV (PDF only)</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                            <br />
                            <br />
                            <br />

                        </div>
                    </div>
                 
                    <%--<button class="btn btn-primary" type="submit">Submit form</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="postjob"  />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="back" />
                    <%--<button class="btn btn-danger" type="submit">Back</button>--%>
                </form>

        </div>  
               </div>  
       
   




    
     <!--Footer -->
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

    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
