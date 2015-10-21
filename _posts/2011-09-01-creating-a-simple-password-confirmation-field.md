--- 
layout: post
title: "Creating a simple password confirmation field with Zend_Form : How to"
published: true
date: 2011-09-01
tags: 
- php
- zend framework
posterous_url: http://blog.justin.kelly.org.au/creating-a-simple-password-confirmation-field
posterous_slug: creating-a-simple-password-confirmation-field
---
If you creating a user signup form with `Zend_Form` and need a password confirmation field just use the code below, its very simple but couldn't find any info on the zend framework site on how to do it

`User.php`
{% highlight php %}
<?php
 
class Application_Form_User extends Zend_Form
{
 
    public function init()
    {
        /* Form Elements & Other Definitions Here ... */
 
        $this->setName('user');
        $id = new Zend_Form_Element_Hidden('id');
        $id->addFilter('Int');
        // add all your field here....
 
        $email = new Zend_Form_Element_Text('email');
        $email->setLabel('Email')
            ->setRequired(true)
            ->addFilter('StripTags')
            ->addFilter('StringTrim')
            ->addValidator('EmailAddress')
            ->addValidator('NotEmpty');
 
        $password = new Zend_Form_Element_Password('password');
        $password->setLabel('Password')
            ->addFilter('StripTags')
            ->addFilter('StringTrim');
 
        /* password confirmation - just set the token section to the password field name */
        $confirmPswd = new Zend_Form_Element_Password('confirm_pswd');
        $confirmPswd->setLabel('Confirm Password:');
        $confirmPswd->setAttrib('size', 35);
        $confirmPswd->setRequired(true);
        $confirmPswd->addValidator('Identical', false, array('token' => 'password'));
        $confirmPswd->addErrorMessage('The passwords do not match');
 
        $submit = new Zend_Form_Element_Submit('submit');
        $submit->setAttrib('id', 'submitbutton');
        $this->addElements(array($id,   
             $email, $password, $confirmPswd,
        $submit));
    }
 
}
{% endhighlight %}
