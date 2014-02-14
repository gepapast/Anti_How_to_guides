<%-- 
    Document   : loginregister
    Created on : Jan 17, 2014, 7:03:57 PM
    Author     : George
--%>

<head>
        <meta charset="UTF-8" />
        
        <title>Login and Registration Form </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        
        <link rel="stylesheet" type="text/css" href="css/logreg/loginregister.css" />
        <link rel="stylesheet" type="text/css" href="css/logreg/style.css" />
		<link rel="stylesheet" type="text/css" href="css/logreg/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            
            <section>				
                <div id="container" >
                    
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="login" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your username </label>
                                    <input id="username" name="uname" value="" required="required" type="text" placeholder="myusername"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="pass" value="" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
        				Not a member yet ?
					<a href="#toregister" class="to_register">Join us</a>
				</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="register" autocomplete="on"> 
                                <h1> Register </h1> 
                                <p> 
                                    <label for="namesignup" class="name" data-icon="u">Your name(optional)</label>
                                    <input id="namesignup" name="name"  type="text" placeholder="My Name" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="uname" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="pass" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                
                                <p class="signin button"> 
									<input type="submit" value="Register"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>
