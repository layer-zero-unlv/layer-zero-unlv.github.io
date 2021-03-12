---
layout: post
title:  "Setting up Burp Suite"
date:   2021-03-12
excerpt: "A small tutorial on how to set up and configure Burp Suite Community Edition a proxy tool."
image: "/images/blog-burp-tut.png"
---


<h2>What is Burp Suite?</h2>

Given that we are ready to launch our own instance of security shepherd by OWASP as our practice range, we deemed it necessary  to do a small introduction to proxies, what they are, and how to set them up.
While the process might be slightly different for different applications, this time we will focus on Burp Suite.

Burp or Burp Suite is a set of tools used for penetration testing of web applications. It is developed by the company named Portswigger, which is also the alias of its founder Dafydd Stuttard. BurpSuite aims to be an all in one set of tools and its capabilities can be enhanced by installing add-ons that are called BApps. 

Burp is a paid application but they hae a community edition which doesnt have options like Spider, web spider/crawler that is used to map the target web application, or Scanner, which scans the website automatically for many common vulnerabilities and lists them with information on confidence over each finding and their complexity of exploitation. Another limitation of the community edition is that you cant save your projects, you only have temporary files swhich will be deeleted when you exit so be mindful of that too.

The rest of the features aree mostly the same:
<ul>
<li>Target</li>
<li>Proxy</li>
<li>Intruder</li>
<li>Repeater</li>
<li>Sequencer</li>
<li>Decodeer</li>
<li>Comparer</li>
<li>Extender</li>
</ul>


You can download Burp Suite <a href="https://portsswigger.net"> here</a>.

It is also worth noting that PortSwigger, the company that develops Burp, also has great tutorials and documentation on how to use Burp on many different kinds of situations and applications so check them out too: <a href="https://portswigger.net/web-security"> https://portswigger.net/web-security</a>.


<h2>What is a Proxy Server?</h2>



A proxy server is basically a middle point between you and the internet. It separates you as the user from websites and they several levels of functionality like security and privacy settings depending on the use case and needs oyu have.

When you use a proxy server, internet traffic flows through the proxy server on its way to the address you requested. The request then comes back through that same proxy server (there are exceptions to this rule), and then the proxy server forwards the data received from the website to you.

<div class="image main">
	<img src="/images/blog-burp-tut-1.png">
</div>

If that’s all it does, why bother with a proxy server? Why not just go straight from to the website and back?

Modern proxy servers do much more than forwarding web requests, all in the name of data security and network performance. Proxy servers act as a firewall and web filter, provide shared network connections, and cache data to speed up common requests. A good proxy server keeps users and the internal network protected from the wild internet. This time, we will use a proxy to change http requests and some times repeat them with different data and more.

<h2>Installing Burp Suite</h2>

If you havent done it yet, you can download Burp Suite <a href="https://portsswigger.net"> here</a>.

The most recent versions of Brup innclude an instance of Chromium browser so there is no extra setting up needed, just go to the proxy tab and click onn the open browser button to launch Chromium and it will be ready to intercept.

<div class="image main">
	<img src="/images/blog-burp-tut-2.png">
</div>


We will show you how to use it with your own broser too.
PortSwigger's official weebsite has a lot of information on how to set it up onn many different browsers but this time we will use Firefox. 
You can read the official documentation <a href="https://portswigger.net/burp/documentation/desktop/getting-started/proxy-setup">here</a> for more browsers.

First we will need to download Firefox. You can go to the downloads page <a href="https://www.mozilla.org/en-US/firefox/download/thanks/"> here</a>.

Next we need to teell the browser where eto send the traffic to. For this, we can set it up in settings, or better yet, download an proxy switcher extension called FoxyProxy that will allow us to send traffic to the proxy with a button like this:


<div class="image main">
	<img src="/images/blog-burp-tut-3.png">
</div>

A proxy switcher is a tool, usually in the form of a browser add-on, that allows one to turn a proxy on and off or cycle between multiple proxies with the click of a button. It saves loads of time as it usually takes many clicks to enable or disable a proxy.

<a href="https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-basic/">This is a direct link to FoxyProxy</a>

You will need to download the extension adding it to Firefox like this:

<div class="image main">
	<img src="/images/blog-burp-tut-4.png">
</div>

You will need to acceept and give it the permissions it requires:

<div class="image main">
	<img src="/images/blog-burp-tut-5.png">
</div>

Next, you can click on the new extension icon and clikc on options. Here we will add the proxy information:

<div class="image main">
	<img src="/images/blog-burp-tut-6.png">
</div>


Now we need to open Burp and go to the Proxy tab. Under Proxy there are several options, we need to go to Options to view the current listeners (ip and port) Burp will use.


<div class="image main">
	<img src="/images/blog-burp-tut-7.png">
</div>

We can see the it is set to the default 127.0.0.1:8080.
We need to give this innformation to Firefox and Foxyproxy now. Under ADD, we seee the form to enter the same innformation as in Burp:

<div class="image main">
	<img src="/images/blog-burp-tut-8.png">
</div>

Title is optional, we only care about the IP address and the port being used.

If we try to test it now, since we aree routing traffic to a new possibly untrusted entity, Firefow will warn us that the website we are trying to reach might be fake, so we need to tell Firefox to trust Burp.
To do this we need to import Burp's CA (certificate authority) certificate into Firefox.
To Do this we need to navidate to 127.0.0.1:8080 and we will see at the top right, an option to download Burp's CA certificate.
We Need to save it:

<div class="image main">
	<img src="/images/blog-burp-tut-9.png">
</div>

Next, we need to import the certificate into Firefox. For this, we need to go to Preferences. You can select preferences from the toolbar or type: <em>about:preferences</em> and scroll down to: <em> Privacy & Security</em>.

<div class="image main">
	<img src="/images/blog-burp-tut-10.png">
</div>

We need to scroll down to the <em>Certificates</em> section and click on view certificates. 

<div class="image main">
	<img src="/images/blog-burp-tut-11.png">
</div>

Click on <em>Import...</em> and select the <em>cacert.cer</em> we downloded previously.

<div class="image main">
	<img src="/images/blog-burp-tut-12.png">
</div>

Accept and trust the CA

<div class="image main">
	<img src="/images/blog-burp-tut-13.png">
</div>


And that is it. You trusted Burp to handle your traffic from firefox. 

It is important to remember that Firefox will send the traffic through Burp when the button on the extension is ON, so your traffic will get stuck if you forget to turn it off.
Also to start filtering traffic, remember to click on Burp's Proxy, then <em>Intercept is on</em> button so you start seeing the requests.

<div class="image main">
	<img src="/images/blog-burp-tut-14.png">
</div>

If you use another browser, you can read the official documentation <a href="https://portswigger.net/burp/documentation/desktop/getting-started/proxy-setup">here</a> on how to set it up, but the steps are going to be fairly smiliar, involving pointing your browser to whateever IP and Port Burp is expecting and trusting a certificate so traffic flows freely.


We will be posting more tutorials and writeups on how to solve security shepherd challenges so stay tunned.






Posted by <a href="https://github.com/kawa5604" target="_blank">Jorge G</a> 

