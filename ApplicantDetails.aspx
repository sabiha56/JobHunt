<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicantDetails.aspx.cs" Inherits="JobHunt.ApplicantDetails" %>

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
    <link href="css/jobdescription.css" rel="stylesheet">
    <link href="css/fontawesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                    <a class="nav-link" href="postajob.aspx" >Post a job</span></a>
                           </li >
                          
                           <li class="nav-item">
                                <a class="nav-link" href="joblist.aspx">Job List</a>
                           </li>
                          <li class="nav-item">
                            <a class="nav-link" href="HomePage.aspx">Logout</a>
                        </li>
                    </ul>
                            
                </div>
            </nav> 
             </div>
    
     <section class="big-banner">
        <div class="container-fluid">
            <div class="col-4">
                <div class="hero-title">
                    <h1 class="display-5 text-center">Applicant Details</h1>
                </div>
            </div>
        </div>
    </section>

   





    <div class="container">
      
        <div class="jumbotron" style="margin-top: 50px">
            <div class="row">
               <div class="col-md-8">


                    <% foreach(JobHunt.Models.JobDetails data1 in getjobtitle() ) { %>
                       
                                          <h4>Job Title  : </h4>
                                                  <p><%: data1.Name%></p>

                      <% } //foreach %>
                     

                       <% foreach(JobHunt.Models.applicants data in getWhileLoopDataList() ) { %>

                                         <h4>First Name : </h4>
                                            <p><%: data.applicant_firstname %></p>
                                         <h4>Last Name :</h4>
                                             <p><%: data.applicant_lastname %></p>
                                        <h4>Email</h4>
                                             <p><%: data.email %></p>
                                       <h4>Phone Number : </h4>
                                            <p><%: data.phoneno %></p>
                                      <h4>City:</h4>
                                            <p><%: data.city %></p>
                                       <h4>Address : </h4>
                                             <p><%: data.addres %></p>
                                        <h4>Qualification : </h4>
                                             <p><%: data.qualification %></p>
                                       <h4>Experience : </h4>
                                             <p><%: data.experience %></p>
                                       <h4>CV (PDF Format):</h4>  
                                        <div>  
        <asp:Button ID="bttnpdf"  runat="server" Text="Click for open PDF" Font-Bold="True" OnClick="bttnpdf_Click" />  </div>
                   <br \ />
                                    
                            <a class="btn btn-success badge-pill" href="/applicantlist.aspx?acceptId=<%: data.apply_id %>" style="width: 80px;"> Accept</a>
                           <a class="btn btn-danger badge-pill" href="/applicantlist.aspx?deleteId=<%: data.apply_id %>" style="width: 80px;"> Delete</a>
                     
                       <% } //foreach %>
                   </div>
                </div>
            </div>
        </div>
        
                

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

        </form>
</body>
</html>

