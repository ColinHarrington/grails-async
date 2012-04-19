<%@ page contentType="text/html;charset=UTF-8" %><!doctype html>
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

<div id="apps-one-sided" class="step" data-y="-725" data-x="1100" data-scale="0.5" data-rotate="0">
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

<div id="async-in-the-browser" class="step" data-y="-750" data-x="-1000" data-scale="0.5" data-rotate="0">
    <h1>Async in the Browser</h1>
</div>

<div id="async-in-the-browser2" class="step" data-y="-620" data-x="-1000" data-scale="0.5" data-rotate="0">
    <li>HTTP = Resource Orientated..</li>
    <li><span class='client'>Client</span> -> request -> <span class="server">Server</span></li>
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

<div id="websockets1" class="step" data-y="1900 " data-x="-320" data-scale="0.5" data-rotate="-90">
    <h1>API</h1>
    <g:link url="http://dev.w3.org/html5/websockets/">http://dev.w3.org/html5/websockets/</g:link>
    <br/><br/>
    <code>var myWebSocket = new WebSocket("ws://www.websockets.org");</code>
</div>

<div id="websockets2" class="step" data-y="1900 " data-x="15" data-scale="0.5" data-rotate="-90">
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

<div id="websockets3" class="step" data-y="1900 " data-x="280" data-scale="0.5" data-rotate="-90">
    <code>myWebSocket.send("Hello WebSockets!");
myWebSocket.close();</code>
</div>

<div id="websockets4" class="step" data-y="1900 " data-x="500" data-scale="0.5" data-rotate="-90">
    <h2>Websockets Protocol</h2>
    <li>HTTP Upgrading.</li>
    <li>ws:// and wss:// uri scheme</li>
    <li>versioned protocol</li>
    <li>Inner Protocols!!</li>
</div>

<div id="websockets-caution" class="step" data-y="1900 " data-x="800" data-scale="0.5" data-rotate="-90">
    <h2>But..</h2>
    <li>Not supported by all browsers
        <g:link url="http://caniuse.com/#feat=websockets">http://caniuse.com/#feat=websockets</g:link></li>
    <li>Just now <g:link url="https://issues.apache.org/bugzilla/show_bug.cgi?id=51181#c61">supported in Tomcat 7.0.27</g:link></li>
    <li>Standalone: 1 bazillion Node.js websockets implementations, several Java & Python servers</li>
</div>

<div id="realistically-2012" class="step" data-y="1900" data-x="1180" data-scale="0.5" data-rotate="-90">
<h2>2012 Realistic Compromise</h2>
    <li>Long Polling/HTTP Streaming
    <li>Flash Sockets (UGH!)
    <li>BlazeDS + Javascript bridge?
    <li>Silverlight Duplex Services (dead in the water)
    <li>Java Applet with TCP or straight socket.
</div>

<div id="realistically-or" class="step" data-y="1900" data-x="1550" data-scale="0.5" data-rotate="-90">
    <h2>Or:</h2>
    Degrade gracefully <br/>on the client and server.
    <br/>
    <r:img file="20091001-VoipSurvivor-one-ring.jpg"/>
</div>

<div id="atmosphere" class="step" data-y="1900" data-x="2100" data-scale="0.5" data-rotate="0">
    <h1>Atmosphere</h1>
    "The Asynchronous WebSocket/Comet Framework"<br/>
    <code>compile ":atmosphere:0.4.2.1"</code>
</div>

<div id="atmosphere1" class="step" data-y="2200" data-x="2100" data-scale="0.5" data-rotate="0">
    <p>Client <em>and</em> server side components to support event driven messaging over websockets or graceful degredation to Comet</p>
    <g:link url="http://grails.org/plugin/atmosphere">http://grails.org/plugin/atmosphere</g:link>
</div>

<div id="cometd" class="step" data-y="2500" data-x="2100" data-scale="0.5" data-rotate="0">
    <h1>CometD</h1>
    <code>compile ":cometd:0.2.2"</code>
</div>

<div id="cometd1" class="step" data-y="2800" data-x="2100" data-scale="0.5" data-rotate="0">
    <p>CometD is a scalable HTTP-based event routing bus that uses an Ajax Push technology pattern known as Comet.</p>

    <p>This plugin allows your Grails application to send asynchronous notifications to HTTP clients using CometD and the Bayeux protocol.</p>
    <g:link url="http://www.grails.org/plugin/cometd">http://www.grails.org/plugin/cometd</g:link>
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

<div id="back-to-the-server" class="step" data-y="-1300" data-x="2200" data-scale="1" data-rotate="0">
    <h1>Back to the Server</h1>
    (Grails mostly)
</div>

<div id="spring-application-events" class="step" data-y="-900" data-x="2200" data-scale="0.5" data-rotate="0">
    <h2>Spring Application Events</h2>
    <r:img file="spring-logo.png"/>
</div>

<div id="publish-event" class="step" data-y="-700" data-x="2200" data-scale="0.5" data-rotate="0">
    <code>applicationContext.publishEvent(
    new MyApplicationEvent(...)
)</code>
    <div class="footnote">* ApplicationContext extends ApplicationEventPublisher</div>
</div>


<div id="application-event" class="step code" data-y="-400" data-x="2200" data-scale="0.5" data-rotate="0">
<code>class MyApplicationEvent extends ApplicationEvent {
    public MyApplicationEvent(src, ...) {
        super(src)
        ...
    }
}</code>
</div>

<div id="application-event-listener" class="step code" data-y="-30" data-x="2200" data-scale="0.5" data-rotate="0">
<code>class MyApplicationListener implements ApplicationListener {
    void onApplicationEvent(ApplicationEvent e) {
        ... Do your thing ...
    }
}</code>
</div>

<div id="built-in" class="step" data-y="-900" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>Already there</h2>
    <li>ServletContextListener</li>
    <li>ServletContextAttributeListener</li>
    <li>HttpSessionListener</li>
    <li>HttpSessionAttributeListener</li>
    <li>Standard Spring Events</li>
    <li>Many More..</li>
</div>

<div id="servlet-context-listener" class="step code smallerCode" data-y="-600" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>ServletContextListener</h2>
<code>void	contextDestroyed(ServletContextEvent sce)
void	contextInitialized(ServletContextEvent sce)</code>
</div>

<div id="servlet-context-attributes-listener" class="step code smallerCode" data-y="-300" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>ServletContextAttributeListener</h2>
    <code>void	attributeAdded(ServletContextAttributeEvent scab)
void	attributeRemoved(ServletContextAttributeEvent scab)
void	attributeReplaced(ServletContextAttributeEvent scab)</code>
</div>

<div id="session-listener" class="step code smallerCode" data-y="0" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>HttpSessionListener</h2>
    <code> void	sessionCreated(HttpSessionEvent se)
void	sessionDestroyed(HttpSessionEvent se)</code>
</div>

<div id="session-attribute-listener" class="step code smallerCode" data-y="300" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>HttpSessionAttributeListener</h2>
    <code>void	attributeAdded(HttpSessionBindingEvent scab)
void	attributeRemoved(HttpSessionBindingEvent scab)
void	attributeReplaced(HttpSessionBindingEvent scab)</code>
</div>

<div id="spring-security-listeners" class="step" data-y="600" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>Spring Security Event Listeners</h2>
    ...
</div>

<div id="singletons" class="step" data-y="800" data-x="2800" data-scale="0.5" data-rotate="0">
    <h2>Singleton Beans</h2>
    can subscribe to published events (Grails Services, etc.)
</div>

<div id="message-queues" class="step" data-y="-900" data-x="3400" data-scale="0.5" data-rotate="0">
    <h2>Message Queues</h2>
</div>

<div id="message-queues-impls" class="step" data-y="-1100" data-x="3400" data-scale="0.5" data-rotate="-180">
    <li><r:img file="rabbitmq_logo_strap.png"/>
    <li><r:img file="activemq-logo.png"/>
    <li>Jesque > resque > (redis)
    <li>Many more
</div>

<div id="message-queues-install" class="step code" data-y="-700" data-x="3400" data-scale="0.5" data-rotate="0">
<code>BuildConfig.groovy <<

compile ":jms:1.2"</code>
</div>
<div id="jms-service-example0" class="step code" data-y="-450" data-x="3400" data-scale="0.5" data-rotate="0">
    <code>  //standard template and no post processor
jmsService.send(destination, message)
    // use the standard template
jmsService.send(destination, message, postProcessor)</code>
</div>

<div id="jms-service-example1" class="step code" data-y="-150" data-x="3400" data-scale="0.5" data-rotate="0">
<code>jmsService.send(
    queue: "aQueue",
    msg,
    "standard",
    null
) // send to a literal queue</code>
    </div>

<div id="jms-service-example2" class="step code" data-y="150" data-x="3400" data-scale="0.5" data-rotate="0">
<code>jmsService.send(
    topic: "aTopic",
    msg,
    "standard",
    null
) // send to a literal topic</code>
</div>

<div id="jms-service-example3" class="step code" data-y="450" data-x="3400" data-scale="0.5" data-rotate="0">
<code>jmsService.send(
    service: "person",
    msg,
    "standard",
    null
) // send to the queue '«appname».person'</code>
</div>

<div id="jms-service-example4" class="step code" data-y="800" data-x="3400" data-scale="0.5" data-rotate="0">
<code>jmsService.send(
    service: "person",
    method: "doIt",
    msg,
    "standard",
    null
) // send to the
queue '«appname».person.doIt'</code>
</div>
<div id="jms-service-example5" class="step code" data-y="1200" data-x="3400" data-scale="0.5" data-rotate="0">
<code>jmsService.send(
    app: "remote",
    service: "person",
    method: "doIt",
    msg,
    "standard",
    null
) // send to the
queue 'remote.person.doIt'</code>
</div>

<div id="jms-subscribe" class="step" data-y="-900" data-x="4000" data-scale="0.5" data-rotate="0">
    <h1>Receiving Messages</h1>
</div>

<div id="jms-subscribe1" class="step code" data-y="-600" data-x="4000" data-scale="0.5" data-rotate="0">
    <code>class PersonService {
    static exposes = ["jms"]
    def onMessage(msg) {
        // handle message
    }
}</code>
</div>

<div id="jms-subscribe2" class="step code" data-y="-250" data-x="4000" data-scale="0.5" data-rotate="0">
    <code>class PersonService {
    static exposes = ["jms"]
    static destination = "somethingHappened"
    static isTopic = true
    static adapter = "custom"
    def onMessage(msg) {
        // handle message
    }
}</code>
</div>

<div id="jms-subscribe3" class="step code" data-y="200" data-x="4000" data-scale="0.5" data-rotate="0">
    <code>import grails.jms.*
class PersonService {
    static exposes = ["jms"]

    @Queue(
        name = "myQueue",
        selector = "name IS NOT NULL"
    )
    def addPerson(msg) {
        ...
    }
}</code>
</div>

<div id="jms-subscribe4" class="step code" data-y="650" data-x="4000" data-scale="0.5" data-rotate="0">
    <code>import grails.jms.*
class PersonService {
    static exposes = ["jms"]

    @Subscriber(topic = "aTopic")
    def somethingHappened(msg) {
        ...
    }
}</code>
</div>

<div id="executor" class="step" data-y="-900" data-x="4600" data-scale="0.5" data-rotate="0">
    <h2>Executor Plugin</h2>
    <code>compile ":executor:0.3"</code>
</div>

<div id="executor-runasync" class="step" data-y="-700" data-x="4600" data-scale="0.5" data-rotate="0">
    <h2>runAsync closure</h2>
    takes any closure and passes it through to the executorService.execute
</div>
<div id="executor-callAsync" class="step" data-y="-400" data-x="4600" data-scale="0.5" data-rotate="0">
    <h2>callAsync closure</h2>
    takes any closure that returns a value and passes it through to the executorService.submit . You will get a Future back that you can work with. This will not bind a session in java 1.5 and only works on 1.6 or later
</div>

<div id="executor-example" class="step code" data-y="0" data-x="4600" data-scale="0.5" data-rotate="0">
    <code>class someService {
    def myMethod() {
        runAsync {
            calcAging()
        }
        ...
    }
}</code>
</div>

<div id="gpars" class="step" data-y="400" data-x="4600" data-scale="0.5" data-rotate="0">
    <r:img file="gpars-logo2.PNG"/>
    <h2>gpars</h2>
    (Groovy Parallel Systems)
    <li>Built into Groovy!
    <li>Clever and clean design
    <li>Elegant Java and Groovy APIs
    <li>Flexibility through meta-programming
    <li>Application-level solutions that scale with number of cores
</div>

<div id="gpars-features" class="step slide" data-y="900" data-x="4600" data-scale="0.5" data-rotate="0">
    <li>Concurrent collection processing
    <li>Composable asynchronous functions
    <li>Fork/Join abstraction
    <li>Actor programming model
    <li>Dataflow concurrency constructs
    <li>CSP
    <li>Agent - an thread-safe reference to mutable state
    <li>STM (Software Transactional Memory)
</div>

<div id="quartz" class="step" data-y="1300" data-x="4600" data-scale="0.5" data-rotate="0">
    <r:img file="quartz-icon.png"/>
    <h2>Quartz Scheduler</h2>
    <li>Triggered Tasks
    <li>Cron Triggers
    <li>Custom Triggers.. queue/messaged triggers?
</div>

<div id="others" class="step" data-y="1600" data-x="4600" data-scale="0.5" data-rotate="0">
    <h2>Others?</h2>
    <li>XMPP Plugin
    <li>Persistant queries (datastores)
    <li>???
</div>

<div id="questions" class="step" data-y="2000" data-x="4600" data-scale="0.5" data-rotate="0">
    <h1>Questions?</h1>
    <r:img file="question-mark.jpg"/>
</div>

<div id="thank-you" class="step" data-scale="1" data-y="2000" data-x="7000" data-rotate="0">
    <h1>Thank you!</h1>
    <br/><br/><br/><br/><br/>
    <g:link url="https://twitter.com/#!/ColinHarrington">@ColinHarrington</g:link>
</div>

<div id="credits" class="step" data-scale="0.1" data-rotate-x="-90" data-rotate-y="0">
    <h2>Credits</h2>
    
<pre style="font-size:15px;">http://www.legitreviews.com/images/reviews/1712/slided.jpg
http://1.bp.blogspot.com/_yhJlczfj8Cw/TAUEOClt7dI/AAAAAAAACN4/XX7GeaLuNSI/s1600/Intel_50_Core_Chip.jpg
http://nodeblog.files.wordpress.com/2011/07/nodejs.png
http://java.ociweb.com/mark/clojure/images/clojure.png
http://engineering.linkedin.com/sites/default/files/300px-Scala_logo.png
http://craigaspinall.com/talks/groovy-baby/images/groovy-logo.png
http://gpars.codehaus.org/download/attachments/130514949/gpars-logo2.PNG
http://admintell.napco.com/ee/images/uploads/appletell/sg105724_thumb.jpg
http://cdn2.iphone4jailbreak.org/forum/wp-content/uploads/iphone-settings-app-badge-icon.jpg
http://3.bp.blogspot.com/-5kOG4zsskWY/TdBohGUns-I/AAAAAAAAAAY/tSW9ZBRVcAk/s1600/comet+cleaner.jpg
http://www.acspersonalsecurity.com/media/catalog/product/cache/1/image/5e06319eda06f020e43594a9c230972d/d/s/ds-ajax.jpg
http://1.bp.blogspot.com/_8eiTpFJYqEA/TF-ecT5aOKI/AAAAAAAAAXg/GDMzlasK168/s320/umbre.png
http://blog.radvision.com/images/2009/20091001-VoipSurvivor-one-ring.jpg
http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_stream.jpg
http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_longpoll.jpg
http://publib.boulder.ibm.com/infocenter/wasinfo/v6r1/topic/com.ibm.websphere.ajax.devguide.help/images/PubSub_poll.jpg
http://quartz-scheduler.org/images/logos/logo-quartz-scheduler.png
http://quartz-scheduler.org/images/home/quartz-icon.png
http://2.bp.blogspot.com/_dbECP0yvozc/TL8vH1PhGGI/AAAAAAAACwg/Rg3O0o8lqxw/s200/rabbitmq_logo.png
http://www.rabbitmq.com/img/rabbitmq_logo_strap.png
http://activemq.apache.org/images/activemq-logo.png
http://www.automatedbusinesslogic.com/_/rsrc/1313079021776/architecture/framework-integration/framework-integration---spring/Spring%20Logo.png?height=200&width=200
</pre>
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