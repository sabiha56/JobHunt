<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="JobHunt.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <!--Carousel-->

    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/image1.jpg"class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h1>Job Hunt</h1>
                    <p>Find Your Dream Job</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="image/image2.jpg"class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                     <h1>Job Hunt</h1>
                    <p>Find Your Dream Job</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="image/image3.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h1>Job Hunt</h1>
                    <p>Find Your Dream Job</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!--carousel-->

    <!--Grid Part-->
    <div class="container">
        <div class="card text-center">

    <div class="card-deck">
        <div class="card" style="margin-top: 50px">
            <img src="image/admin.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="text-center">Admin</h5>
                <p class="card-text">Manage the whole system</p>
                 <a href="Admin_login.aspx" class="btn btn-primary">Go To Admin Profile</a>
               
            </div>
        </div>
        <div class="card" style="margin-top: 50px">
            <img src="image/company.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="text-center">Company</h5>
                <p class="card-text">You will find suitable candidates here</p>
                 <a href="CompanyProfile.aspx" class="btn btn-primary">Go To Company Profile</a>
              
            </div>
        </div>
      <div class="card" style="margin-top: 50px">
            <img src="image/jobseeker.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="text-center">Job Seeker</h5>
                <p class="card-text">You will find your desired jobs here</p>
                 <a href="jobseekerprofile.aspx" class="btn btn-primary">Go To Job Seeker Profile</a>
               
            </div>
        </div>
    </div>
            </div>
        </div>
    <!--Grid Part-->
        <!--Grid Part-->

    <% int a = 0;%>
    <div class="container">
        <div class="jumbotron" style="margin-top: 50px">
        <h1 class="card-title text-center" style="margin-bottom: 20px">Browse Job By Category</h1>

            <div class="card-deck">

               <% foreach(JobHunt.Models.JobDetails data in getWhileLoopDataList() ) { %>

               
                <div class="col-md-4" >

               
                  <div class="card">
                    
                    <div class="card-body text-center">
                        <a  class="stretched-link" href="/categoryjobs.aspx?category=<%: data.category %>"></a>

                        <%if (a == 0)
                            { %>

                        <i class="fa fa-desktop fa-4x center" style="color: blue;"  ></i>     <%  a = 1;
                           }
                          else if (a == 1)
                            {%>

                         <i class="fa fa-users fa-4x center" style="color: red;" aria-hidden="true"></i> 
                        <% a = 2;
                         } else if (a == 2) { %>


                         <i class="fa fa-users fa-4x center" style="color: blue;" aria-hidden="true"></i>  
                        
                        <% a = 3;
                           } else { %>
                             <i class="fa fa-pencil fa-4x center" style="color: blue;" aria-hidden="true"></i> 
                         <%a = 0;
                             } %>

                        <p></p>
                        <p class="card-text text-center"> <%: data.category %></p>
                    
                    </div>
                </div>


             </div>

              <% } //foreach %>

 </div>
 </div>
        </div>

    <section id="team">
        <div class="container my-3 py-5 text-center">
            <div class="row mb-5">
                <div class="col">
                    <p class="mt-3">What our clients Say?</p>
                    <h1>Our Success Stories</h1>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <img src="image/person1 (1).jpg" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Susan</h3>
                            <h5>Full Stack Developer</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet lectus lacus, in pulvinar diam gravida a. Fusce magna nisi, semper eu hendrerit in, viverra eu enim</p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <img src="image/person3 (1).jpg" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Susan</h3>
                            <h5>Software Engineer</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet lectus lacus, in pulvinar diam gravida a. Fusce magna nisi, semper eu hendrerit in, viverra eu enim</p>
                        </div>
                    </div>
                </div>



                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <img src="image/person3 (2).jpg" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Susan</h3>
                            <h5>Marketing Manager</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet lectus lacus, in pulvinar diam gravida a. Fusce magna nisi, semper eu hendrerit in, viverra eu enim</p>
                        </div>
                    </div>
                </div>

                 <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <img src="image/person4.jpg" class="img-fluid rounded-circle w-50 mb-3" />
                            <h3>Susan</h3>
                            <h5>Real State Agent</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet lectus lacus, in pulvinar diam gravida a. Fusce magna nisi, semper eu hendrerit in, viverra eu enim</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

        <!--     </div>
    </div>   -->


















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
                                  <a href="#"><i class="fa fa-pinterest"></i></a>
                                  <a href="#"><i class="fa fa-Linkedin"></i></a>
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
