<%@ page contentType="text/html;charset=UTF-8" %><!doctype html>

<!--

    So you'd like to know how to use impress.js?

    You've made the first, very important step -- you're reading the source code.
    And that's how impress.js presentations are built -- with HTML and CSS code.

    Believe me, you need quite decent HTML and CSS skills to be able to use impress.js effectively.
    And what is even more important, you need to be a designer, too, because there are no default
    styles for impress.js presentations, there is no default or automatic layout for them.

    You need to design and build it by hand.

    So...

    Would you still like to know how to use impress.js?

-->

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=1024"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <title>Grails + Async | Grails outside of the request/response</title>

    <meta name="description" content="Grails + Async"/>
    <meta name="author" content="Colin Harrington"/>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:regular,semibold,italic,italicsemibold|PT+Sans:400,700,400italic,700italic|PT+Serif:400,700,400italic,700italic"
          rel="stylesheet"/>

    <r:require module="presentation"/>
    <r:layoutResources/>

    <link rel="shortcut icon" href="favicon.png"/>
    <link rel="apple-touch-icon" href="apple-touch-icon.png"/>
</head>

<body class="impress-not-supported">

<!--
    For example this fallback message is only visible when there is `impress-not-supported` class on body.
-->
<div class="fallback-message">
    <p>Your browser <b>doesn't support the features required</b> by impress.js, so you are presented with a simplified version of this presentation.
    </p>

    <p>For the best experience please use the latest <b>Chrome</b>, <b>Safari</b> or <b>Firefox</b> browser.</p>
</div>

<div id="impress">

<div id="title" class="step">
    <h1>Grails & Async</h1>

    <p>by <g:link url="https://twitter.com/#!/ColinHarrington">@ColinHarrington</g:link></p>
</div>

<div id="whoami" class="step" data-y="800" data-x="0" data-scale="1">
    <h2>whoami</h2>
    <r:img file="OPI-Logo.png"/>
    Colin Harrington<br/>
    Senior Consultant<br/>
    <g:link url="http://www.objectpartners.com">Object Partners</g:link>
    <br/><br/>
    <g:link url="https://twitter.com/#!/ColinHarrington">@ColinHarrington</g:link>
    <g:link url="http://colinharrington.net">http://colinharrington.net</g:link>
    <a href="mailto:colin.harrington@objectpartners.com">colin.harrington@objectpartners.com</a>
</div>

<div id="history" class="step" data-y="-800">
    <h2>History</h2>
</div>

<div id="history-http" class="step " data-y="-830" data-x="-100" data-scale="0.2" data-rotate="-90">
    <h2>HTML</h2>
    Documents over HTTP<br/>
    <em>Hypermedia</em>
</div>

<div id="history-web2" class="step " data-y="-830" data-x="100" data-scale="0.2" data-rotate="-90">
    <h2>Web 2.0</h2>
    Yay! Javascript isn't that bad..
</div>

<div id="history-ajax" class="step " data-y="-830" data-x="300" data-scale="0.2" data-rotate="-90">
    <h2>Ajax</h2>
    Look at me Ma, I got data via XHR
</div>

<div id="history-ria" class="step" data-y="-830" data-x="500" data-scale="0.2" data-rotate="-90">
    <h2>Return of the Rich Client</h2>

    <div>
        <div class="ria-in">
            <div>HTML5</div>

            <div>CSS3</div>

            <div>&lt;Canvas&gt;, <br/>
                &lt;Video&gt;, etc</div>
        </div>

        <div class="ria-out">
            <div class='strike'>Flash</div>

            <div class='strike'>Browser Plugins</div>

            <div class='strike'>Applets</div>
        </div>
    </div>

</div>

<div id="history-js-frameworks" class="step" data-y="-830" data-x="700" data-scale="0.2" data-rotate="0">
    <h2>Rich Javascript frameworks</h2>
    <r:img dir="images" file="sencha-large.png"/>
    <li><g:link url="http://www.sencha.com/">Sencha</g:link> /Touch (was EXTjs..)</li>
    <r:img dir="images" file="ember.png"/>
    <li><g:link url="http://emberjs.com">Ember.js</g:link></li>
    <r:img dir="images" file="backbonejs.png"/>
    <li><g:link url="http://documentcloud.github.com/backbone/">Backbone.js</g:link></li>
    <li><g:link url="http://spinejs.com/">Spine.js</g:link></li>
</div>

<div id="history-rich-js" class="step" data-y="-630" data-x="700" data-scale="0.2" data-rotate="0">
    <h2>The new world</h2>
    <li>Models</li>
    <li>Views</li>
    <li>Components</li>
    <li>Routes/History</li>
    <li>MVC</li>
    <li>Eventing Systems</li>
    <li>Local storage</li>
</div>

<div id="why-async" class="step" data-y="-400" data-x="800" data-scale="1" data-rotate="0">
    <h1>Why Async?</h1>
</div>

<div id="many-core-world" class="step" data-y="-100" data-x="800" data-scale="0.5" data-rotate="0">
    <h2>Many-core computing</h2>
    <r:img file="intel-many-core.jpg"/>
</div>

<div id="parallel-world" class="step" data-y="-110" data-x="1250" data-scale="0.5" data-rotate="0">
    <h2>Parallellization</h2>
    <r:img file="Intel_50_Core_Chip.jpg"/>
    Concurrency! Procedural, Serial applications don't cut it anymore
</div>

<div id="node-js" class="step" data-y="400" data-x="800" data-scale="1.5" data-rotate="180">
    <r:img file="nodejs.png"/>
</div>

<div id="lang-tools" class="step" data-y="200" data-x="700" data-scale="0.25" data-rotate="0" data-z="-500">
    <r:img file="clojure.png"/>
    <r:img file="300px-Scala_logo.png"/>
    <r:img file="groovy-logo.png"/>
    <r:img file="gpars-logo2.PNG"/>
    Actors, Closures, Functional concepts.
</div>

<div id="many-applications" class="step" data-y="-600" data-x="1300" data-scale="0.5" data-rotate="-90">
    <h2>Many Applications</h2>
    <ul>
        <li>Financial</li>
        <li>Devices</li>
        <li>Gaming</li>
        <li>Social</li>
        <li>Hardware Integraton</li>
        <li>Medical</li>
        <li>etc..</li>
    </ul>
</div>

<div id="apps-one-sided" class="step" data-y="-700" data-x="1100" data-scale="0.5" data-rotate="0">
    <h2>No longer one sided</h2>
    <r:img file="iphone-settings-app-badge-icon.jpg"/>
</div>

<div id="apps-they-are" class="step" data-y="-720" data-x="1020" data-scale="0.1" data-rotate="0">
    They are..
</div>

<div id="apps-interactive" class="step" data-y="-710" data-x="1020" data-scale="0.1" data-rotate="0">
    Interactive
</div>

<div id="apps-dynamic" class="step" data-y="-700" data-x="1020" data-scale="0.1" data-rotate="0">
    Dynamic
</div>

<div id="apps-real-time" class="step" data-y="-690" data-x="1020" data-scale="0.1" data-rotate="0">
    Real-time
</div>

<div id="apps-collaborative" class="step" data-y="-680" data-x="1020" data-scale="0.1" data-rotate="0">
    Collaborative
</div>

<div id="async-in-the-browser" class="step" data-y="-700" data-x="-1000" data-scale="0.5" data-rotate="0">
    <h1>Async in the Browser</h1>
    <li>HTTP = Resource Orientated..</li>
    <li><span class='client'>Client</span> -> request -> <span class="server">Server</span></li>
    %{--(fold under the request) GET /index.html...--}%
    %{--Server locates the resource (or creates it..)--}%
    %{--Server responds with the resource--}%
    %{--HTTP 1.1 200 OK--}%
    %{--date..--}%
    %{--*Expand to show the resource--}%
    %{--*expand to show the resource and the hypermedia.--}%


    %{--This is essentially a 'pull' technology--}%

    %{--How do we get events from the server?--}%
    %{--(ask the audience)--}%
</div>

<div id="request" class="step" data-y="-560" data-x="-1030" data-scale="0.1" data-rotate="0">
    <code>GET /index.html HTTP/1.1
Host: www.example.com</code>
</div>

<div id="server-response" class="step" data-y="-500" data-x="-1000" data-scale="0.5" data-rotate="0">
    <li>Server sends the response</li>
    <li><span class='client'>Client</span> <- Response <- <span class="server">Server</span></li>
</div>

<div id="response" class="step" data-y="-420" data-x="-1030" data-scale="0.1" data-rotate="0">
    <code>HTTP/1.1 200 OK
Date: Mon, 23 May 2005 22:38:34 GMT
Server: Apache/1.3.3.7 (Unix) (Red-Hat/Linux)
Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT
Etag: "3f80f-1b6-3e1cb03b"
Accept-Ranges: bytes
Content-Length: 438
Connection: close
Content-Type: text/html; charset=UTF-8

        ...</code>
</div>

<div id="html-document" class="step" data-y="-300" data-x="-1000" data-scale="0.5" data-rotate="0">
    HTML Document with Hypermedia

    <li>Images</li>
    <li>CSS</li>
    <li>Javascript</li>
    <li>etc.</li>

</div>

<div id="polling" class="step" data-y="0" data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>First Attempt: Polling</h2>
    Ask the Server for updates every X seconds..
    <br/><br/>
    <r:img file="PubSub_poll.jpg" width="100%"/>

</div>

<div id="polling2" class="step" data-y="400" data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>It doesn't scale</h2>
    Lots of overhead!
    <li>network</li>
    <li>client</li>
    <li>server</li>
    <br/>
    5 minutes of polling every 10 seconds
    <li>= 30 requests for 1 client

    <li>* 100 Clients?
    <li>* 100,000 Clients?
</div>

<div id="long-polling" class="step" data-y="800 " data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>2nd attempt: Long Polling</h2>

    <r:img file="umbre.png"/>
    Comet<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=<br/> Umbrella Term
</div>

<div id="long-polling2" class="step" data-y="1100 " data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>Long Polling</h2>

    <r:img file="PubSub_longpoll.jpg" width="100%"/>
</div>

<div id="comet" class="step" data-y="1400 " data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>Comet = Reverse Ajax</h2>
    <r:img file="comet-cleaner.jpg"/>
    <r:img file="ds-ajax.jpg"/>
</div>

<div id="http-streaming" class="step" data-y="1700 " data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>HTTP Streaming</h2>

    <r:img file="PubSub_stream.jpg" width="100%"/>
</div>

<div id="comet-issues" class="step" data-y="2000 " data-x="-1000" data-scale="0.5" data-rotate="0">
    <h2>Loads of issues</h2>
    <li>HTTP Protocol overhead</li>
    <li>Half-duplex</li>
    <li>keep-alives</li>
    <li>Browser Open connections</li>
    <li>etc.</li>
</div>

<div id="websockets" class="step" data-y="1700 " data-x="-600" data-scale="1" data-rotate="-90">
    <h1>Web Sockets</h1>
    We needed a new Protocol
</div>

<div id="websockets1" class="step" data-y="1900 " data-x="-350" data-scale="0.5" data-rotate="-90">
    <h1>API</h1>
    <g:link url="http://dev.w3.org/html5/websockets/">http://dev.w3.org/html5/websockets/</g:link>
    <br/><br/>
    <code>var myWebSocket = new WebSocket("ws://www.websockets.org");</code>
</div>

<div id="websockets2" class="step" data-y="1900 " data-x="-48" data-scale="0.5" data-rotate="-90">
    <code>myWebSocket.onopen = function(evt) {
    alert("Connection open ...");
};
myWebSocket.onmessage = function(evt) {
    alert( "Received Message: " + evt.data);
};
myWebSocket.onclose = function(evt) {
    alert("Connection closed.");
};</code>
</div>

<div id="websockets3" class="step" data-y="1900 " data-x="200" data-scale="0.5" data-rotate="-90">
    <code>myWebSocket.send("Hello WebSockets!");
myWebSocket.close();</code>
</div>

<div id="websockets4" class="step" data-y="1900 " data-x="400" data-scale="0.5" data-rotate="-90">
    <h2>Websockets Protocol</h2>
    <li>HTTP Upgrading.</li>
    <li>ws:// and wss:// uri scheme</li>
    <li>versioned protocol</li>
    <li>Inner Protocols!!</li>
</div>

<div id="websockets-caution" class="step" data-y="1900 " data-x="700" data-scale="0.5" data-rotate="-90">
    <h2>But..</h2>
    <li>Not supported by all browsers
        <g:link url="http://caniuse.com/#feat=websockets">http://caniuse.com/#feat=websockets</g:link></li>
    <li>Just now <g:link url="https://issues.apache.org/bugzilla/show_bug.cgi?id=51181#c61">supported in Tomcat 7.0.27</g:link></li>
    <li>Standalone: 1 bazillion Node.js websockets implementations, several Java & Python servers</li>
</div>

<div id="realistically-2012" class="step" data-y="1900" data-x="1080" data-scale="0.5" data-rotate="-90">
<h2>2012 Realistic Compromise</h2>
    <li>Long Polling/HTTP Streaming
    <li>Flash Sockets (UGH!)
    <li>BlazeDS + Javascript bridge?
    <li>Silverlight Duplex Services (dead in the water)
    <li>Java Applet with TCP or straight socket.
</div>
<div id="realistically-or" class="step" data-y="1900" data-x="1450" data-scale="0.5" data-rotate="-90">
    <h2>Or:</h2>
    Degrade gracefully <br/>on the client and server.
    <br/>
    <r:img file="20091001-VoipSurvivor-one-ring.jpg"/>
</div>

<div id="servlet3" class="step" data-y="-1300" data-x="-1000" data-scale="1" data-rotate="0">
    <h1>Servlet 3.0 Async</h1>
</div>

<div id="servlet3-threads" class="step" data-y="-1300" data-x="-500" data-scale="0.5" data-rotate="-90">
    <li>thread-per-request (thread per HTTP Connection)</li>
    <li>handle 10x the load?</li>
    <li>Threads</li>
    <li>Memory usage</li>
    <li>Thread starvation - Limited pool.</li>
</div>

<div id="servlet3-expensive" class="step" data-y="-1300" data-x="-200" data-scale="0.5" data-rotate="-90">
<h2>Expensive Tasks</h2>
    <li>Long running processes
    <li>Generating Reports
    <li>Complex 3rd party integration
    <li>Coordination Services
    <li>Long Polling
    <li>Streaming
</div>

<div id="servlet3-example" class="step" data-y="-1300" data-x="80" data-scale="0.5" data-rotate="-90">
    <h2>Example: Thread starvation</h2>
    <g:link uri="/nap/sleep/20">Long running process..</g:link>
</div>

<div id="servlet3-grails" class="step" data-y="-1300" data-x="350" data-scale="0.5" data-rotate="-90">
    <h2>Servlet 3.0 in Grails</h2>
    <li>change your <code>grails.servlet.version = "3.0"</code> in BuildConfig.groovy</li>
    <li>Deploy to a Servlet 3.0 Container</li>
</div>

<div id="servlet3-grails2" class="step" data-y="-1300" data-x="700" data-scale="0.5" data-rotate="-90">
    <code>def index() {
    def ctx = startAsync()
    ctx.start {
        new Book(title:"The Stand").save()
        render template:"books", model:[books:Book.list()]
        ctx.complete()
    }
}</code>
</div>

<div id="servlet3-grails3" class="step" data-y="-1300" data-x="1100" data-scale="0.5" data-rotate="-90">
    <code>def index() {
    def ctx = startAsync()
    ctx.start {
        ... // do work
        render(view:'something')
        <strong>ctx.dispatch()</strong>
    }
}</code>
 </div>

<div id="back-to-the-server" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
%{--------------------}%
Back to the Server
%{--Spring Application Events--}%
%{--Example, Pub/Sub--}%

%{--Servlet ContextListener--}%
%{--Lifecycle--}%
%{--Object--}%
%{--Event--}%
%{--Listener Interface and Event Class--}%
%{--Web context (See Accessing the Web Context)--}%
%{--Initialization and destruction--}%

%{--javax.servlet.ServletContextListener
 void	contextDestroyed(ServletContextEvent sce)
          Notification that the servlet context is about to be shut down.
 void	contextInitialized(ServletContextEvent sce)
          Notification that the web application is ready to process requests.
and--}%
%{--Attribute added, removed, or replaced--}%
%{--javax.servlet.ServletContextAttributeListener
 void	attributeAdded(ServletContextAttributeEvent scab)
          Notification that a new attribute was added to the servlet context.
 void	attributeRemoved(ServletContextAttributeEvent scab)
          Notification that an existing attribute has been remved from the servlet context.
 void	attributeReplaced(ServletContextAttributeEvent scab)
          Notification that an attribute on the servlet context has been replaced.


and--}%
%{--ServletContextAttributeEvent--}%
%{--Session (See Maintaining Client State)--}%
%{--Creation, invalidation, and timeout--}%
%{--javax.servlet.http.HttpSessionListener
 void	sessionCreated(HttpSessionEvent se)
          Notification that a session was created.
 void	sessionDestroyed(HttpSessionEvent se)
          Notification that a session was invalidated.

and--}%
%{--HttpSessionEvent--}%
%{--Attribute added, removed, or replaced--}%
%{--javax.servlet.http.HttpSessionAttributeListener

 void	attributeAdded(HttpSessionBindingEvent se)
          Notification that an attribute has been added to a session.
 void	attributeRemoved(HttpSessionBindingEvent se)
          Notification that an attribute has been removed from a session.
 void	attributeReplaced(HttpSessionBindingEvent se)
          Notification that an attribute has been replaced in a session.

          and--}%
%{--HttpSessionBindingEvent--}%

%{--HTTPSession Lifecycle listeners--}%
%{--Request..--}%

%{--Spring Security Listeners.--}%

%{--Singleton Beans that can respond to events.--}%

%{--Message Queues (embedded or external)--}%
%{--JMS    grails install-plugin jms--}%
%{--Show a small example--}%
%{--Talk about ActiveMQ, RabbitMQ just went 1.0 recently..--}%
%{--Templates.--}%
%{--Jesque (using redis)--}%

%{--Don't run non-critical elements within your HTTP Requests.--}%

%{--Cron job shouldn't bring down your prod!--}%
</div>
<div id="quartz" class="step" data-y="-1300" data-x="1100" data-scale="0.5" data-rotate="-90">
    <h2>Quartz Scheduler</h2>
    Triggered Tasks Cron Triggers, custom Triggers.. queue/messaged triggers?
    <r:img file="quartz-icon.png"/>
</div>

%{--Grails Executor Plugin.
grails install-plugin executor

------------------------
class someService {

    def myMethod(){
        ..do some stuff
        runAsync {
            //this will be in its own trasaction
            //since each of these service methods are Transactional
            calcAging()
        }
        .. do some other stuff while aging is calced in background
    }

    def calcAging(){
        ...do long process
    }
}
--------------------------------
runAsync closure - takes any closure and passes it through to the executorService.execute
callAsync closure - takes any closure that returns a value and passes it through to the executorService.submit . You will get a Future back that you can work with. This will not bind a session in java 1.5 and only works on 1.6 or later


Don't forget GPARS...
--}%

<div id="atmosphere" class="step" data-y="-1300" data-x="1100" data-scale="0.5" data-rotate="-90">
%{--Grails Atmosphere plugin--}%
<code>grails install-plugin atmosphere</code>
</div>

<div id="#overview" class="step" data-scale="3">

</div>

<div id="credits" class="step" data-scale="0.1" data-rotate-x="-90" data-rotate-y="0">
    <h2>Credits</h2>
    <ul class="credits">
        <li>http://www.legitreviews.com/images/reviews/1712/slided.jpg</li>
        <li>http://1.bp.blogspot.com/_yhJlczfj8Cw/TAUEOClt7dI/AAAAAAAACN4/XX7GeaLuNSI/s1600/Intel_50_Core_Chip.jpg</li>
        <li>http://nodeblog.files.wordpress.com/2011/07/nodejs.png</li>
        <li>http://java.ociweb.com/mark/clojure/images/clojure.png</li>
        <li>http://engineering.linkedin.com/sites/default/files/300px-Scala_logo.png</li>
        <li>http://craigaspinall.com/talks/groovy-baby/images/groovy-logo.png</li>
        <li>http://gpars.codehaus.org/download/attachments/130514949/gpars-logo2.PNG</li>
        <li>http://admintell.napco.com/ee/images/uploads/appletell/sg105724_thumb.jpg</li>
        <li>http://cdn2.iphone4jailbreak.org/forum/wp-content/uploads/iphone-settings-app-badge-icon.jpg</li>
        <li>http://3.bp.blogspot.com/-5kOG4zsskWY/TdBohGUns-I/AAAAAAAAAAY/tSW9ZBRVcAk/s1600/comet+cleaner.jpg</li>
        <li>http://www.acspersonalsecurity.com/media/catalog/product/cache/1/image/5e06319eda06f020e43594a9c230972d/d/s/ds-ajax.jpg</li>
        <li>http://1.bp.blogspot.com/_8eiTpFJYqEA/TF-ecT5aOKI/AAAAAAAAAXg/GDMzlasK168/s320/umbre.png</li>
        <li>http://blog.radvision.com/images/2009/20091001-VoipSurvivor-one-ring.jpg</li>
        <li>http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_stream.jpg</li>
        <li>http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_longpoll.jpg</li>
        <li>http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_poll.jpg</li>
        <li>http://quartz-scheduler.org/images/logos/logo-quartz-scheduler.png</li>
        http://quartz-scheduler.org/images/home/quartz-icon.png
        http://2.bp.blogspot.com/_dbECP0yvozc/TL8vH1PhGGI/AAAAAAAACwg/Rg3O0o8lqxw/s200/rabbitmq_logo.png
        http://www.rabbitmq.com/img/rabbitmq_logo_strap.png
        http://activemq.apache.org/images/activemq-logo.png
    </ul>

</div>

</div>

<div class="hint">
    <p>Use a spacebar or arrow keys to navigate</p>
</div>
<script>
    if ("ontouchstart" in document.documentElement) {
        document.querySelector(".hint").innerHTML = "<p>Tap on the left or right to navigate</p>";
    }
</script>

<r:layoutResources/>
<script>impress().init();</script>

</body>
</html>