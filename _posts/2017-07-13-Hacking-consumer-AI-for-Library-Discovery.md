---
layout: post
title: Hacking consumer AI for Library Discovery
published: true
tags: alexa aws lambda
comments: true
---

# Build your First Alexa Skill

![VALA TEch Camp 2017](https://www.vala.org.au/images/stories/VALAlogos/VTC-Square_Logo.jpg)

For the [VALA Tech Camp 2017](https://portal.vala.org.au/camp_speakers#Justin) I've been asked to do workshop on 'Hacking consumer AI for Library Discovery'. In this blog post and the workshop I'll run through how to utilise consumer AI (in this example Amazon Alexa) to work with a library discovery service (Trove) 

_Note: Trove is the National Library of Australia's discovery service and more. You can read more about Trove at [http://trove.nla.gov.au/general/about](http://trove.nla.gov.au/general/about)_

End Result: Be able to talk to Trove using Alexa.

Objective: Create an Alexa 'skill' that can query the Trove API

Services we are going to use:

 * Trove API
 * AWS Lambda
 * AWS Alexa/Echo
 * Echosim.com

Requirements:

* Trove API key (recommended)
	* Create a Trove account at https://trove.nla.gov.au/signup
	* Then apply for a Trove API key on the ‘For developers‘ page
		* http://trove.nla.gov.au/userProfile#developer
		* Select non-commercial API purposes
		* And the purpose entre ‘Development of Amazon Echo to Trove API app’
		* An API key should then be immediately available
	* Amazon AWS account (required)
		* A free account can be created at https://aws.amazon.com/
	* Amazon Developers portal access (required)
		* Create/login to https://developer.amazon.com using the same account as the AWS account
	* GitHub account is not required but recommended

#### Aleax skills

First up we'll details what an Alexa skill is.

An Alexa skill is a services that adds extra functioanlity to your Amazon Alexa/Echo device.  In this workshop we'll be creating a skill called `Trove Australia`. THe main techincal parts of a `skill` are:

* Invoication Name
* Intents
* Utterances

Each Alexa skill is comprised of an “Invocation Name” which you can think of as your app name, a set of “Intents” and the phrases that map to each intent, and the software that can detect the intent and return an appropriate result. These "Intents" are are executed by ALexa when a user says a specific "Utterance". We'll dive deeper into each of these later

The skill we’re going to build is going to be an basic enough program that queries Trove for random book.

### Skill Steps

Building your first skill will comprise of four steps. First we’re going to copy the “Hello, World!” code into Amazon Lambda, which will be responsible for running the code. Next we’re going to set up our skill in the Amazon Alexa Skills Developer Portal, and link our lambda account to that skill. Then we’re going to test using the Amazon service simulator and on an Alexa-enabled device. Lastly, we’ll walk through the steps of customizing your skill to your needs.


#### Step 1: AWS Lambda

![Lambda]({{site.baseurl}}/img/lambda.png)

* Open the [AWS Lambda console](https://console.aws.amazon.com/lambda/home?region=us-east-1#/create?step=2)
* Login or create an account with the same Amazon account that your Alexa device is linked to.

Next we'll create a Lambda function that weill talk to the Trove API

![lambda function]({{site.baseurl}}/img/lambda_function.png)

In the AWS Lambda console click `Create a Lambda function`, then in the Slect blueporint screen - select `Pytign 3.6` from the Runtime dropdown and click the `Blank function`. In the 'Configure triggers' screen click on the dotted grey box and select `Alexa Skills Kit`. This setups the basic lambda function ready for Alexa.

In `Configure function`

Enter the name and description of your Lambda function. It’s not very important what the name is but it needs to be unique, you can just use “Trove”. In the top right it should say “N. Virginia”. If that’s not the case please select “US-East (N. Virginia)” from the dropdown.

_Why North Virginia?_ As of the time of this writing, the [Alexa Skills Kit is only hosted in East US (N. Virginia.)](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/developing-an-alexa-skill-as-a-lambda-function)

Remember to set Python 3.5 as the Runtime

#### Source code

![lambda_source_code]({{site.baseurl}}/img/lambda_source_code.png)

In the code section you get the option to either enter the code inline or upload a zip file. As the code we are using requires a few extra Python modules we'll chouse the zip option.


Download the zip I've already prepared of the full source code for the Trove skill and upload it in to the `Function Package` section of the page 

* [https://github.com/justinkelly/alexa/raw/master/src/lambda_function.zip](https://github.com/justinkelly/alexa/raw/master/src/lambda_function.zip) 

Back in Lambda, you’re going to scroll down a bit and we are going to enter our Traove API key as an environment variable. This allows the Python script to access the API without us having to store it directly in the file.

IN the `key` section enter `TROVE_API_KEY` and in the field to the right of it paste in your Trove API key

#### Set Execution Role

Scroll down a bit further to the “Lambda function handler and role” section. You’re going to want to set the role to “lambda\_basic\_execution”. It’s important to note that if this is your first time using Lambda, you’ll have to create the “lambda\_basic\_execution” role. You can do that by selecting the first option “* Basic Execution” and clicking the blue button on the next page. After you take that step, you should be able to select “lambda\_basic\_execution”.


![Step 1d: Finish Creating Lambda Function](https://cdn-images-1.medium.com/max/1200/1*C36HxbtFT3lF9pFmv3JmDQ.png)

Once you’ve created the function, click on the “Event Sources” tab, then click the blue “Add event source” link, then select “Alexa Skills Kit” from the modal dropdown.

Please note if you’ve never signed up for the [Amazon Developer Portal](https://developer.amazon.com/edw/home.html#/skills/list), you’ll have to do that first before the “Alexa Skills Kit” will appear from the Event Sources dropdown. Please also make sure you use the same Amazon account as the one you’re using for AWS and your Echo.

## Step 1 Done

![Step 1 Done](https://cdn-images-1.medium.com/max/800/1*WXBkb3sWDvcw6ifyzvrItQ.gif)

Keep the Amazon Lambda tab open though, we’ll need to come back to it!

## Step 2

![Step 2: Amazon Skills Portal](https://cdn-images-1.medium.com/max/800/1*fLVUygy4wQszmxRPS5PWHA.png)

![Step 2a: Amazon Developer Login](https://cdn-images-1.medium.com/max/800/1*hGmDXfH3F2mKH6gIkCPZXA.png)

Open the [Amazon Developer Skills portal](https://developer.amazon.com/edw/home.html#/skills/list) and login with the same Amazon account that your Alexa device is linked with.

![Step 2b: Navigate to Add New Skill](https://cdn-images-1.medium.com/max/800/1*MqUtpDDSsBTUuysjBier_A.png)

Click the yellow “Get Started >” button under “Alexa Skills Kit”, then the yellow “Add a New Skill” button on the next page.

![Step 2c: Name and Invocation Name](https://cdn-images-1.medium.com/max/800/1*7S6kAmf6jLZ7_8RaOZhs4Q.png)

The name of your Amazon Alexa skill must be unique for your account, and the invocation name is what you’ll use to activate the skill. “Alexa, tell <invocation name> to say Hello, World”. You can use “Hello World” if you’re lacking in creativity. Click the yellow “Next” button when you’re ready!

![Step 2d: Interaction Model](https://cdn-images-1.medium.com/max/1200/1*iXt3o6KxIZ-wdrRfi4aHpA.png)

Here is where we’re going to tell the skill which intents we support, and what type of words will trigger each intent. Get ready for some copy and pasting.

![Step 2e: Copy Intent Schema](https://cdn-images-1.medium.com/max/800/1*Di-Zf3m1N0AWiHKXIpuqPg.png)

Open the [Hello World intent schema](https://github.com/Donohue/alexa/blob/master/speechAssets/IntentSchema.json) and copy all of the text in the box.

![Step 2f: Paste Intent Schema](https://cdn-images-1.medium.com/max/1200/1*eBNZPWCWbasqh7H64sAGWQ.png)

Back in the Amazon Skills portal, paste the intent schema you copied into the Intent Schema field.

![Step 2g: Copy Sample Utterances](https://cdn-images-1.medium.com/max/800/1*ob0OlUPBdm8svBKhUFCdnA.png)

Open the [Hello World sample utterances](https://github.com/Donohue/alexa/blob/master/speechAssets/SampleUtterances.txt) and copy all of the text in the box.

![Step 2h: Paste Sample Utterances](https://cdn-images-1.medium.com/max/1200/1*DFmTpNRTDYFaox3JqVGnQw.png)

Back in the Amazon Skills portal, paste the sample utterances you copied into the Sample Utterances field. Click the yellow “Next” button after you’ve pasted the Sample Utterances.

![Step 2i: Configuration](https://cdn-images-1.medium.com/max/1200/1*HKEFi0ievrGYBnoG0jBNMA.png)

Change the radio button from “HTTPS” to “Lambda ARN” and select the “No” radio button under Account Linking. Now we’ll have to go and grab the Lambda Amazon Resource Name (ARN) from our Lambda tab. You still have that open, right?

![Step 2j: Copy ARN](https://cdn-images-1.medium.com/max/800/1*yodxeQKrYjxxh26txdKtKg.png)

The ARN is on the top right of the Lambda function page. I have it selected in the image above. You’ll want to copy the selection as I have it above.

![Step 2k: Paste ARN](https://cdn-images-1.medium.com/max/800/1*iJHo8qnBQb__hbQL0ro7lA.png)

Paste the ARN into the text field, and press “Next”.

## Step 2 Done

![Step 2 Done](https://cdn-images-1.medium.com/max/800/1*npQAFDyVe3nr1v8x3MCW7A.gif)

## Step 3

![Step 3: Amazon Skill Test](https://cdn-images-1.medium.com/max/800/1*EQPNZwXv_8QO6_cvs3kiXA.png)

![Step 3a: Service Simulator](https://cdn-images-1.medium.com/max/800/1*web80Yh6h15z3Psxa2VL3g.png)

After you click “Next” on the “Configuration” tab, you should be on the “Test” tab. Under the “Service Simulator” portion you’ll be able to enter a sample utterance to trigger your skill. For the “Hello, World” example you should type “say hello world”, and on the right you should see the output from the Lambda function you created: “Hello, World!”

![Step 3b: Test on Device](https://cdn-images-1.medium.com/max/800/1*XC3Eqp55G1VIXV5IAx3KBQ.png)

If you got the correct output using the Service Simulator, try it on the Amazon Echo. We were using “last name” as the invocation name in this presentation, but you should use the invocation name you set in step 2c.

> Alexa, tell Hello World to say Hello World

## Step 3 Done

![Step 3 Done](https://cdn-images-1.medium.com/max/800/1*dsYNwEAIA57WXUbAMmYxLQ.gif)

Congrats, you just created your first Alexa skill! 👏👏

## Step 4: Customize

![Step 4: Customize](https://cdn-images-1.medium.com/max/800/1*8tYf2HJDh9k-0F43bn-oLA.png)

![Step 4a: Change Sample Utterances](https://cdn-images-1.medium.com/max/800/1*DWJUFWqGUSxekLk9xOf7BQ.png)

Go back to “Interaction Model” tab in the Alexa Skill Developer portal, and edit the words on the right of “TestIntent” with the words you would like to say to Alexa. An example might be “who is the coolest person on earth”, and you’d say “Alexa, ask <invocation name> who is the coolest person on earth?” Next we’ll customize the output.

![Step 4b: Change Lambda Output](https://cdn-images-1.medium.com/max/800/1*12QfN7P6jHdXpSBo0WEJ1w.png)

* Go to the "Code" tab in Lambda.
* Scroll to line 104 and replace Hello, World with your output.
* Keep the quotes around your output.
* Click "Save".
* Test in Amazon Developer Portal.

## Step 4 Done

![Step 4 Done](https://cdn-images-1.medium.com/max/800/1*KdfqphskuVljnRPIgB3q8w.gif)
