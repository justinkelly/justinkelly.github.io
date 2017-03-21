--- 
layout: post
title: Simple javascript mobile OS detector
published: true
date: 2010-10-11
tags: javascript
---

I've searched the web for a simple way to detect all the different mobile 
devices ( iphones, andriod, etc..) with javascript but couldn't find anything decent.

This is what i've come up with and has worked for me

``` javascript
/*
 * Simple javascript mobile OS / iphone/ android detector
 *
 * License: GPLv3+
 * Author: justin.kelly.org.au
 *
 */
$(document).ready(function() {

	var deviceIphone = "iphone";
	var deviceIpod = "ipod";
	var devicePalm = "palm";
	var deviceS60 = "series60";
	var deviceSymbian = "symbian";
	var engineWebKit = "webkit";
	var deviceAndroid = "android";
	var deviceWinMob = "windows ce";
	var deviceWinPhone = "windows phone";
	var deviceBB = "blackberry";

	//Initialize our user agent string to lower case.
	var uagent = navigator.userAgent.toLowerCase();

	//**************************
	// Detects if the current device is an iPhone.
	function DetectIphone()
	{
	   if (uagent.search(deviceIphone) > -1)
		  return true;
	   else
		  return false;
	}

	//**************************
	// Detects if the current device is an iPod Touch.
	function DetectIpod()
	{
	   if (uagent.search(deviceIpod) > -1)
		  return true;
	   else
		  return false;
	}

	//**************************
	// Detects if the current device is an iPhone or iPod Touch.
	function DetectIphoneOrIpod()
	{
		if (DetectIphone())
		   return true;
		else if (DetectIpod())
		   return true;
		else
		   return false;
	}	

	//**************************
	// Detects if the current browser is the S60 Open Source Browser.
	// Screen out older devices and the old WML browser.
	function DetectS60OssBrowser()
	{
	   if (uagent.search(engineWebKit) > -1)
	   {
		 if ((uagent.search(deviceS60) > -1 || 
			  uagent.search(deviceSymbian) > -1))
			return true;
		 else
			return false;
	   }
	   else
		  return false;
	}



	//**************************
	// Detects if the current device is an Android OS-based device.
	function DetectAndroid()
	{
	   if (uagent.search(deviceAndroid) > -1)
		  return true;
	   else
		  return false;
	}


	//**************************
	// Detects if the current device is an Android OS-based device and
	//   the browser is based on WebKit.
	function DetectAndroidWebKit()
	{
	   if (DetectAndroid())
	   {
		 if (DetectWebkit())
			return true;
		 else
			return false;
	   }
	   else
		  return false;
	}


	//**************************
	// Detects if the current browser is a Windows Mobile device.
	function DetectWindowsMobile()
	{
	   if (uagent.search(deviceWinMob) > -1)
		  return true;
	   else
		  return false;
	}

	//**************************
	// Detects if the current browser is a Windows Phone OS 7+ Mobile device.
	function DetectWindowsPhone()
	{
	   if (uagent.search(deviceWinPhone) > -1)
		  return true;
	   else
		  return false;
	}

	//**************************
	// Detects if the current browser is a BlackBerry of some sort.
	function DetectBlackBerry()
	{
	   if (uagent.search(deviceBB) > -1)
		  return true;
	   else
		  return false;
	}

	//**************************
	// Detects if the current browser is on a PalmOS device.
	function DetectPalmOS()
	{
	   if (uagent.search(devicePalm) > -1)
		  return true;
	   else
		  return false;
	}

	function DetectMobileOS()
	{
		if (DetectIphoneOrIpod() || DetectS60OssBrowser() || DetectAndroid() || DetectAndroidWebKit() || DetectWindowsMobile() || DetectBlackBerry() || DetectPalmOS())
		{
			return true
		} else {
			return false
		}
		
	}


	if (DetectMobileOS())
	{
		//do stuff
			
	}
});	
```

Let me know if you find any issues or have enhancements

update: 9th March 2012 to included Windows Phone OS 7 +
