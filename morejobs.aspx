<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="morejobs.aspx.cs" Inherits="JobHunt.morejobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Job Hunt Website</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/wantjob.css" rel="stylesheet"/>
      <link href="css/fontawesome.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
       <!-- Including the bootstrap CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</head>
<body>
     <form id="form1" runat="server">
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
                              <a class="nav-link" href="wantjob.aspx" >Want a job</a>
                        </li>  
                        <li class="nav-item">
                              <a class="nav-link" href="appliedjobs.aspx" >Applied Jobs</a>
                        </li>
                           <li class="nav-item">
                             <a class="nav-link" href="/Jobseeker_login.aspx?LogoutId=<%:1 %>">Logout</a>
                        </li>
                    </ul>
                   
            </nav> 
            </div>
    <section class="big-banner">
        <div class="container-fluid">
            <div class="col-4">
                <div class="hero-title">
                    <h1 class="display-5 text-center">Want a Job</h1>
                </div>


            </div>

        </div>

    </section>
    




    <div class="container">
        <div class="jumbotron" style="margin-top: 50px">
            <div class="card">
                <h5 class="card-header">Top Searched Jobs</h5>
                <div class="card-body">
                    
      <!--              <div class="form-group pull-right">
                        <input type="text" class="search form-control" placeholder="Search here..." />
                    </div>   -->
                    <table class="table table-hover table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Job Title</th>

                               
                                <th class="text-right">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                              <!-- start -->

                              <% foreach(JobHunt.Models.JobDetails data in getWhileLoopDataList() ) { %>
                                <tr>
                                    <td>
                                   <%-- <%: data.id %>--%>
                                        <%: data.no %>
                                    </td>
                                    <td>
                                        <%: data.Name %>
                                    </td>
                                     <td class="text-right">
                                        
                                        <a class="btn btn-warning badge-pill" href="/JobDescription.aspx?id=<%: data.jid %>" > Details</a>
                                        <a class="btn btn-success badge-pill" href="/applyjob.aspx?ApplyId=<%: data.jid %>" > Apply</a>

                                     

                                    </td>
                                </tr>
                            <% } //foreach %>
                         


                   

                        </tbody>

                    </table>  
                   
    
                </div>
               
            </div>
            
        </div>
        
    </div> 

    </form>


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




    
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
