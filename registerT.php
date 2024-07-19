<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Teacher Registration Form</title>    

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
    </style>


    <!-- Custom styles for this template -->
    <link href="sign-in.css" rel="stylesheet">
  </head>
  
  <body class="d-flex align-items-center py-4 bg-body-tertiary">
    <?php require_once 'registerT.php' ?>
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    
    <main class="form-signin w-100 m-auto">
      <form action="registerT.php" method="post">
        <h1 class="h3 mb-3 fw-normal">Teacher Registration</h1>
          <div class="col-12">
            <label for="Name" class="form-label">Name</label>
            <input type="text" class="form-control" id="Name" name="Name">
          </div>
          <div class="col-12">
            <label for="Hire-Date" class="form-label">Hire Date</label>
            <input type="date" class="form-control" id="Hire-Date" name="Hire-Date">
          </div>
          <div class="col-12">
            <label for="Address_ID" class="form-label">Address_ID</label>
            <input type="number" class="form-control" id="Address_ID" name="Address_ID" value="submit">
          </div>
          <div class="col-12">
            <label for="Class_ID" class="form-label">Teaching Class</label>
            <select id="Class_ID" name="Class_ID" class="form-select">
              <option selected value="201">Reception Year</option>
              <option value="202">Year One</option>
              <option value="203">Year Two</option>
              <option value="204">Year Three</option>
              <option value="205">Year Four</option>
              <option value="206">Year Five</option>
              <option value="207">Year Six</option>
            </select>
          <div class="col-12">
            <label for="PhoneNumber" class="form-label">Phone Number</label>
            <input type="number" class="form-control" id="PhoneNumber" name="PhoneNumber">
          </div>
          <div class="col-12">
            <label for="Email">Email address</label>
            <input type="email" class="form-control" name="Email" id="Email" placeholder="name@example.com">
          </div>
          <div class="col-12">
            <label for="Salary" class="form-label">Salary</label>
            <input type="text" class="form-control" id="Salary" name="Salary">
          </div><br>
          <div class="mb-3">
            <label for="BackgroundCheck" class="form-label">Background Check</label>
            <textarea class="form-control" id="BackgroundCheck" name="BackgroundCheck" rows="3"></textarea>
          </div>
          <br>
          <?php
              if ($_SERVER["REQUEST_METHOD"] == "POST") {
                  $Name = $_POST['Name'];
                  $HireDate = date('Y-m-d', strtotime($_POST['Hire-Date']));
                  $Address_ID = (int)$_POST['Address_ID'];
                  $Class_ID = (int)$_POST['Class_ID'];
                  $PhoneNumber = (int)$_POST['PhoneNumber'];
                  $Email = $_POST['Email'];
                  $Salary = $_POST['Salary'];
                  $BackgroundCheck = $_POST['BackgroundCheck'];
                  //Database Connection
                  $conn = new mysqli('localhost', 'root', 'password', 'Rishton Academy Primary School');
                  if($conn-> connect_error) {
                      die('Connection Failed : ' . $conn->connect_error);
                  } else{
                      $stmt = $conn->prepare("insert into Teacher(Name, HireDate, Address_ID, Class_ID, PhoneNumber, Email, Salary, BackgroundCheck)
                          value(?, ?, ?, ?, ?, ?, ?, ?)");
                      $stmt->bind_param("ssiiisss", $Name, $HireDate, $Address_ID, $Class_ID, $PhoneNumber, $Email, $Salary, $BackgroundCheck);

                      $stmt->execute();
                      echo "Registration Successfully!";
                      
                      $stmt->close();
                      $conn->close();
                  }

              }
          ?>


          <button class="btn btn-primary w-100 py-2" type="submit">Register</button>
        </form>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
