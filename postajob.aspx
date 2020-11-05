<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postajob.aspx.cs" Inherits="JobHunt.postajob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Job Hunt Website</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/postjob.css" rel="stylesheet">
      <link href="css/fontawesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
       <!-- Including the bootstrap CDN -->

</head>
<body>
    <form id="form" >
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
                     
                      
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="postajob.aspx">Post A Job</a>
                           </li >
                           
                           <li class="nav-item">
                                <a class="nav-link" href="joblist.aspx">Job List</a>
                           </li>
                          <li class="nav-item">
                           <a class="nav-link" href="/Recruiter_login.aspx?LogoutId=<%:1 %>">Logout</a>
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
                         <h1 class="display-5 text-center">Post a Job</h1>
                    </div>
                </div>
     </div>
    </section>
    


    <!-- middle part form-->

    <div class="container">
         <div class="jumbotron" style="margin-top: 50px">
              <form runat="server">
                <div class="row">

                   <div class="col-md-8">
               
                    <div class="form-group row" >
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Job Title</label>
                          <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server"  class="form-control"  placeholder="eg.Professional UI/UX Designer" ></asp:TextBox>
                              <%--<input id="jobtitle1" type="email" class="form-control" id="jobtitle1" placeholder="eg.Professional UI/UX Designer"/>--%>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <%--  <input type="password" class="form-control" id="company1" placeholder="eg.abc@gmail.com"/>--%>
                            <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="eg.abc@gmail.com"></asp:TextBox>
                        </div>
                    </div>
                    <fieldset class="form-group">
                   
                            <legend class="col-form-label col-sm-2 pt-0" style="align-content:center">Job Status</legend>
                            <div class="col-sm-10">
                

                             <asp:RadioButtonList ID="rblMeasurementSystem" runat="server">
                                <asp:ListItem Text="Full Time" Value="Full Time" />
                                <asp:ListItem Text="Part Time" Value="Part Time" />
                                <asp:ListItem Text="Freelance" Value="Freelance" />
                                <asp:ListItem Text="Internship" Value="Internship" />
                                <asp:ListItem Text="Temporary" Value="Temporary" />
                            </asp:RadioButtonList>


                            </div>

                    </fieldset>

        

                         <div class="form-group ">
                            <label for="exampleFormControlTextarea1">Location</label>
                            <%--<input type="password" class="form-control" id="inputPassword3" placeholder="eg.Gulshan-1, Dhaka"/>--%>
                            <asp:TextBox ID="TextBox3" runat="server"   class="form-control"  ></asp:TextBox>
                        </div>
                         <div class="form-group">
                             <label for="exampleFormControlTextarea1">Job Category</label>
                            <%-- <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>--%>
                             <asp:TextBox ID="TextBox6" runat="server"  class="form-control"></asp:TextBox>
                         </div>
                          <div class="form-group">
                             <label for="exampleFormControlTextarea1">Job Description</label>
                            <%-- <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>--%>
                             <asp:TextBox ID="TextBox4" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
                         </div>

                         <div class="form-group">
                           <label for="exampleFormControlTextarea1">Job Requirements</label>
                             <%-- <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>--%>
                           <asp:TextBox ID="TextBox5" runat="server"  class="form-control" TextMode="MultiLine"></asp:TextBox>
                       </div>
                   </div>
                    
                   
                     
                  
                    <%--<div class="form-group row">--%>
                        <div class="col-sm-10">
                             <asp:Button ID="Button1" runat="server" Text="Post" CssClass="btn btn-primary" OnClick="postjob" />
                             
                           
                        </div>
                   <%-- </div>--%>
                </form>


             


            </div>
            <%--<div class="col-md-4" >
                <div style="background:white; padding:15px;">
                    <h5>Contact Info</h5>
                    <h6>Address</h6>
                    <p class="h6">203 Fake St. Mountain View, Dhaka</p>
                    <h6>Phone</h6>
                    <p class="h6">+88013733844</p>
                    <h6>Email</h6>
                    <p class="h6">xcompany@gmail.com</p>
                </div>
                


            </div>--%>
        </div>
        </div>
    </div>








    <!-- middle part form-->





     <!--Footer-->
            <footer>
                
                <div class="footer-top"  style="margin-top: 50px">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
                                <h3>Divinector   of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

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
