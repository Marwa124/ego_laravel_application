<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>   
         EGO | profile
    </title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- Bootstrap RTL -->
    <!-- <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.2.1/css/bootstrap.min.css"
    integrity="sha384-vus3nQHTD+5mpDiZ4rkEPlnkcyTP+49BhJ4wJeJunw06ZAp+wzzeBPUXr42fi8If" crossorigin="anonymous"> -->
    <!-- Font Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <!-- Style -->
    <link rel="stylesheet" href="{{asset('front/styles/global.css')}}">
    <link rel="stylesheet" href="{{asset('front/styles/profile.css')}}">
    <!-- arabicstyle -->
    <!-- <link rel="stylesheet" href="./arabicstyle/arabicstyle.css"> -->
</head>

<body>
    <!-- Help Modal -->
    <div class="modal fade" id="helpModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header py-2">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h6>We're here to help </h6>
                    <p>You can find answers to popular questions on our website. Or, our customer service team are
                        always happy to
                        help if you can't find what you're looking for.</p>
                </div>
                <div class="modalFooter border-top py-3 text-center">
                    <h8>Email us </h8>
                    <p class="mb-0">Get in touch by email </p>
                    <p>mail@ego.com</p>
                </div>
            </div>
        </div>
    </div>

    <nav>
        <div class="nav-logo">
            <a href="{{ url('/home') }}">
                <img class="w-100" src="{{asset('front/images/logo.png')}}" alt="">
            </a>
        </div>
        <a href="index.html" data-toggle="modal" data-target="#helpModal">Need help?</a>
    </nav>
    <main>
        <div class="accountTileContainer">
            <h3>My Account</h3>
            <a href="{{route('front.products')}}">Back to Shopping</a>
        </div>
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold btn-block text-left" type="button" data-toggle="collapse"
                            data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                            Details
                        </button>
                    </h2>
                </div>
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <dl class="card-body card-body-info">
                        <dt class="font-weight-bold">Frist Name</dt>
                        <dd>{{substr_replace(auth()->user()->name, "", strpos(auth()->user()->name, ' '))}}</dd>
                        <dt class="font-weight-bold">Last Name</dt>
                        <dd>{{substr(auth()->user()->name, strpos(auth()->user()->name, ' '))}}</dd>
                        <dt class="font-weight-bold">E-mail Address</dt>
                        <dd>{{auth()->user()->email}}</dd>
                        <dt class="font-weight-bold">Phone Number</dt>
                        <dd class=""></dd>
                        <dt class="font-weight-bold">Gender</dt>
                        {{-- <dd>{{auth()->user()->phone}}</dd> --}}
                        {{-- <dt class="font-weight-bold">Gender</dt>
                        <dd>{{auth()->user()->email}}</dd> --}}
                    </dl>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold btn-block text-left collapsed" type="button"
                            data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                            aria-controls="collapseTwo">
                            Login & Security
                        </button>
                    </h2>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                    <dl class="card-body">
                        <p>Apps with access to your EGO account</p>
                        <p>Here you will be able to manage the access to your EGO account by sites and apps that you
                            grant
                            access to your account information. Right now, it looks like you don’t have any sites or
                            apps linked to
                            your EGO account data.</p>
                    </dl>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingThree">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold btn-block text-left collapsed" type="button"
                            data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                            aria-controls="collapseThree">
                            Address
                        </button>
                    </h2>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                    <dl class="card-body">
                        <div class="font-weight-bold py-4">
                            <p>You currently have no addresses saved. </p>
                            <p>Add an address for a faster checkout experience. </p>
                            <div class="">
                                <button class="btn dark-btn">Add Address</button>
                            </div>
                        </div>
                    </dl>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="Orders">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold btn-block text-left collapsed" type="button"
                            data-toggle="collapse" data-target="#collapseOrders" aria-expanded="false"
                            aria-controls="collapseOrders">
                            Orders
                        </button>
                    </h2>
                </div>
                <div id="collapseOrders" class="collapse" aria-labelledby="Orders" data-parent="#accordionExample">
                    <dl class="card-body">
                        <div class="py-4">
                            <p class="font-weight-bold">You currently have no orders </p>
                            <p>When you've placed an order, you'll find all the details here. </p>
                            <div class="">
                                <a href="{{ url('/home') }}" class="btn dark-btn">Start Shopping Now</a>
                            </div>
                        </div>
                    </dl>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="Credits">
                    <h2 class="mb-0">
                        <button class="btn font-weight-bold btn-block text-left collapsed" type="button"
                            data-toggle="collapse" data-target="#collapseCredits" aria-expanded="false"
                            aria-controls="collapseCredits">
                            Credits
                        </button>
                    </h2>
                </div>
                <div id="collapseCredits" class="collapse" aria-labelledby="Credits" data-parent="#accordionExample">
                    <dl class="card-body">

                        <!-- in case no credits -->
                        <!-- <div class="py-4">
              <p class="font-weight-bold">You don't have any credits</p>
            </div> -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Date</th>
                                    <th scope="col">Reason</th>
                                    <th scope="col">Value</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>01/11/2020</td>
                                    <td>Refund</td>
                                    <td>1443 EGP</td>
                                </tr>
                            </tbody>
                        </table>
                </div>
                </dl>
            </div>
        </div>
    </main>
    <footer>
        <a  href="" onclick="event.preventDefault();getElementById('logout-form').submit()">Sign Out</a>
          
        {{-- <a href="" data-toggle="modal" data-target="#helpModal">Need help?</a> --}}
    </footer>
    <form action="{{ url('logout') }}" method="POST" style="display:none" id="logout-form"> 
        @csrf
        
       </form>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
    </script>
</body>

</html>