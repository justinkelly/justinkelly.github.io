--- 
layout: post
title: Simple 1 page PHP/JQuery contact form
published: true
date: 2010-03-31
tags: 
- jquery
- php
---
I've been after a simple 1 file contact form in PHP and jQuery for ages, 
below is a dead simple cut & paste solution for a simple contact form 

refer: 

* [justin.kelly.org.au/contact.php](http://justin.kelly.org.au/contact.php) for a live example
* also [http://justin.kelly.org.au/#contact_form](http://justin.kelly.org.au/#contact_form) for example of it embedded in another page  

refer code inline below

`contact.php`

{% highlight php %}
{% raw %}
<?php
 
//configs
$email_to ='me@myemail-address.com'; //put your email address here
$email_subject_prefix ='MySite.com contact form: '; //put the email sibject line prefix here
$email_from ='server@yourserver.com'; //put the email address that this form will be sent from
$email_from_nice ='Server'; //put in the 'nice' name for the email sender
 
//If the form is submitted
if(isset($_POST['submit'])) {
 
        //Check to make sure that the name field is not empty
        if(trim($_POST['contactname']) == '') {
                $hasError = true;
        } else {
                $name = trim($_POST['contactname']);
        }
 
        //Check to make sure that the subject field is not empty
        if(trim($_POST['subject']) == '') {
                $hasError = true;
        } else {
                $subject = $email_subject_prefix;
                $subject .= trim($_POST['subject']);
        }
 
        //Check to make sure sure that a valid email address is submitted
        if(trim($_POST['email']) == '')  {
                $hasError = true;
        } else if (!eregi("^[A-Z0-9._%-]+@[A-Z0-9._%-]+\.[A-Z]{2,4}$", trim($_POST['email']))) {
                $hasError = true;
        } else {
                $email = trim($_POST['email']);
        }
 
        //Check to make sure comments were entered
        if(trim($_POST['message']) == '') {
                $hasError = true;
        } else {
                if(function_exists('stripslashes')) {
                        $comments = stripslashes(trim($_POST['message']));
                } else {
                        $comments = trim($_POST['message']);
                }
        }
 
        //Check to make sure comments were entered
        if($_POST['spam_prevention_test']) {
                $isSpam = true;
        }
 
        //If there is no error, send the email
        if(!isset($hasError) AND !isset($isSpam)) {
                $emailTo = $email_to; //Put your own email address here
                $body = "Name: $name \n\nEmail: $email \n\nSubject: $subject \n\nComments:\n $comments";
                $headers = 'From: '.$email_from_nice.' <'.$email_from.'>' . "\r\n" . 'Reply-To: ' . $email;
 
                mail($emailTo, $subject, $body, $headers);
                $emailSent = true;
        }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 
<head>
        <title>PHP Contact Form with JQuery Validation</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.pack.js" type="text/javascript"></script>
 
<script type="text/javascript">
$(document).ready(function(){
        $("#contactform").validate();
});
</script>
 
<style type="text/css">
body {
        font-family:Arial, Tahoma, sans-serif;
}
#contact-wrapper {
        width:430px;
        border:1px solid #e2e2e2;
        background:#f1f1f1;
        padding:20px;
}
#contact-wrapper div {
        clear:both;
        margin:1em 0;
}
#contact-wrapper label {
        display:block;
        float:none;
        font-size:16px;
        width:auto;
}
form#contactform input {
        border-color:#B7B7B7 #E8E8E8 #E8E8E8 #B7B7B7;
        border-style:solid;
        border-width:1px;
        padding:5px;
        font-size:16px;
        color:#333;
}
form#contactform textarea {
        font-family:Arial, Tahoma, Helvetica, sans-serif;
        font-size:100%;
        padding:0.6em 0.5em 0.7em;
        border-color:#B7B7B7 #E8E8E8 #E8E8E8 #B7B7B7;
        border-style:solid;
        border-width:1px;
}
.spam_prevention { display: none; }
 
</style>
</head>
 
<body>
        <div id="contact-wrapper">
 
        <?php if(isset($isSpam)) { //If errors are found ?>
                <p class="error">Your message was considered spam, Please check that you did not fill in the 'If you're human leave this blank' field. Thank y
ou.</p>
        <?php } ?>
        <?php if(isset($hasError)) { //If errors are found ?>
                <p class="error">Please check if you've filled all the fields with valid information. Thank you.</p>
        <?php } ?>
 
        <?php if(isset($emailSent) && $emailSent == true) { //If email is sent ?>
                <p><strong>Email Successfully Sent!</strong></p>
                <p>Thank you <strong><?php echo $name;?></strong> for using my contact form! Your email was successfully sent and I will be in touch with you
soon.</p>
        <?php } ?>
 
        <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" id="contactform">
                <div>
                    <label for="name"><strong>Name:</strong></label>
                        <input type="text" size="50" name="contactname" id="contactname" value="<?php echo $_POST['contactname']; ?>" class="required" />
                </div>
 
                <div>
                        <label for="email"><strong>Email:</strong></label>
                        <input type="text" size="50" name="email" id="email" value="<?php echo $_POST['email']; ?>" class="required email" />
                </div>
 
                <div>
                        <label for="subject"><strong>Subject:</strong></label>
                        <input type="text" size="50" name="subject" id="subject" value="<?php echo $_POST['subject']; ?>" class="required" />
                </div>
 
                <div>
                        <label for="message"><strong>Message:</strong></label>
                        <textarea rows="8" cols="66" style="width: 376px" name="message" id="message" class="required"><?php echo $_POST['message']; ?></texta
rea>
                </div>
 
                <!-- The following field is for robots only, invisible to humans: -->
                <div class="spam_prevention" id="pot">
                        <label for="message"><strong>Spam prevention test:</strong><br/>If you're human leave this blank:</label>
                        <input name="spam_prevention_test" type="text" id="spam_prevention_test" class="spam_prevention_test" value="<?php echo $_POST['spam_p
revention_test']; ?>"/>
                </div>
            <input type="submit" value="Send Message" name="submit" />
        </form>
        </div>
</body>
</html>
{% endraw %}
{% endhighlight %}



note:

* updated 12 July 2010 with super simple spam detection based on [devgrow.com/examples/honeypot/](http://devgrow.com/examples/honeypot/)

