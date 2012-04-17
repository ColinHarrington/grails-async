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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=1024" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>Grails + Async | Grails outside of the request/response</title>

    <meta name="description" content="Grails + Async" />
    <meta name="author" content="Colin Harrington" />

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:regular,semibold,italic,italicsemibold|PT+Sans:400,700,400italic,700italic|PT+Serif:400,700,400italic,700italic" rel="stylesheet" />

    <!--

        Impress.js doesn't depend on any external stylesheet. Script adds all styles it needs for
        presentation to work.

        This style below contains styles only for demo presentation. Browse it to see how impress.js
        classes are used to style presentation steps, or how to apply fallback styles, but I don't want
        you to use them directly in your presentation.

        Be creative, build your own. We don't really want all impress.js presentations to look the same,
        do we?

        When creating your own presentation get rid of this file. Start from scratch, it's fun!

    -->
    <r:require module="presentation"/>
    <r:layoutResources/>

    <link rel="shortcut icon" href="favicon.png" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>

<!--

    Body element is used by impress.js to set some useful class names, that will allow you to detect
    the support and state of the presentation in CSS or other scripts.

    First very useful class name is `impress-not-supported`. This class means, that browser doesn't
    support features required by impress.js, so you should apply some fallback styles in your CSS.
    It's not necessary to add it manually on this element. If the script detects that browser is not
    good enough it will add this class, but keeping it in HTML means that users without JavaScript
    will also get fallback styles.

    When impress.js script detects that browser supports all required features, this class name will
    be removed.

    The class name on body element also depends on currently active presentation step. More details about
    it can be found later, when `hint` element is being described.

-->
<body class="impress-not-supported">

<!--
    For example this fallback message is only visible when there is `impress-not-supported` class on body.
-->
<div class="fallback-message">
    <p>Your browser <b>doesn't support the features required</b> by impress.js, so you are presented with a simplified version of this presentation.</p>
    <p>For the best experience please use the latest <b>Chrome</b>, <b>Safari</b> or <b>Firefox</b> browser.</p>
</div>

<!--

    Now that's the core element used by impress.js.

    That's the wrapper for your presentation steps. In this element all the impress.js magic happens.
    It doesn't have to be a `<div>`. Only `id` is important here as that's how the script find it.

    You probably won't need it now, but there are some configuration options that can be set on this element.

    To change the duration of the transition between slides use `data-transition-duration="2000"` giving it
    a number of ms. It defaults to 1000 (1s).

    You can also control the perspective with `data-perspective="500"` giving it a number of pixels.
    It defaults to 1000. You can set it to 0 if you don't want any 3D effects.
    If you are willing to change this value make sure you understand how CSS perspective works:
    https://developer.mozilla.org/en/CSS/perspective

    But as I said, you won't need it for now, so don't worry - there are some simple but interesing things
    right around the corner of this tag ;)

-->
<div id="impress">

    <div id="title" class="step">
        <h1>Grails & Async</h1>
        <p>by <g:link url="https://twitter.com/#!/ColinHarrington">@ColinHarrington</g:link></p>
    </div>

    <div id="whoami" class="step" data-y="800" data-x="0" data-scale="1">
        <h2>whoami</h2>
        Colin Harrington<br/>
        Senior Consultant<br/>
        <g:link url="http://www.objectpartners.com">Object Partners</g:link>
        <br/><br/>
        @ColinHarrington
        http://colinharrington.net
        colin.harrington@objectpartners.com
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

    <div id="parallel-world" class="step" data-y="-100" data-x="1200" data-scale="0.5" data-rotate="0">
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
        <h2>Apps are no longer 1 sided</h2>
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

    <div id="Async-in-the-browser" class="step" class="step" data-y="-680" data-x="1020" data-scale="0.01" data-rotate="0">
        <h1>Asyncronocity in the browser</h1>
        Dive into HTTP
        Resource Orientated..
        Client -> request -> Server
        (fold under the request) GET /index.html...
        Server locates the resource (or creates it..)
        Server responds with the resource
        HTTP 1.1 200 OK
        date..
        *Expand to show the resource
        *expand to show the resource and the hypermedia.


        This is essentially a 'pull' technology

        How do we get events from the server?
        (ask the audience)

        First Attempt:
        Polling
        Ask the Server ..
        Diagrams of the interaction.

        Lots of overhead
         *network
         *client
         *server

        5 minutes of polling every 10 seconds
        = 30 requests
        * 1 client
        * 100 Clients?
        * 100,000 Clients?

        it doesn't scale

        jQuery Periodical Updater with client decay.

        2nd attempt:
        Long Polling

        Comet = Umbrella Term

        Comet vs Ajax
    </div>
    <div id="comet" class="step" class="step" data-y="-690" data-x="1021" data-scale="0.01" data-rotate="0">
        Comet = Umbrella term
        <r:img file="umbre.png"/>
        = Reverse Ajax
    </div>

    <div id="ajax" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        <r:img file="ds-ajax.jpg"/>
    </div>
    <div id="comet-cleaner" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        <r:img file="comet-cleaner.jpg"/>
    </div>
    <div id="long-polling-cleaner" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        Diagram of long polling

        * Issues with Long Polling

        HTTP is limiting
        Protocol overhead.
        20byte JSON chunk wrapped in a 1200 byte HTTP protocol.. Headers, caching, control, etags, date modified
        http://www.lewisbenge.net/index.php/2011/04/html-5-web-sockets-the-real-time-web/

        We need a new protocol for this type of data.

        <h1>Web Sockets</h1>

        The API

        Usage

        Protocol
        HTTP Upgrading.
        ws:// and wss:// uri scheme
        versioned protocol
        Inner Protocols!!

        * Live demo of websockets updating something, chat?  coloring?

        but:
        Websockets are
        Not supported by all browsers

        Just now supported in Tomcat 7.0.xx?
        Standalone servers: 1 bazillion Node.js websockets
        Java world, Python

        2012 Realistically..
        Compromise
        Long Polling
        Flash Sockets (UGH!)
        BlazeDS + Javascript bridge?
        Silverlight Duplex Services (dead in the water)
        Java Applet with TCP or straight socket.

        Degrade gracefully on the client and server.
        (one ring to rule them all


    </div>

    <div id="servlet-3" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        Servlet 3.0 Async
        thread-per-request (thread per HTTP Connection)

        10x the load?

        Threads
        Memory usage
        Thread starvation - Limited pool.

        Expensive Tasks
        Long running processes
        Generating Reports
        Complex 3rd party integration
        Coordination Services
        Long Polling


        Live Example
        Fire off Ajax requests. (or just use the browser to create other tabs..
        /take/nap/10

        change it via jvisualvm



        </div>
        <div id="grails-in-tomcat" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        Diagram of Grails internals in Tomcat
        start with just a browser -> Server request -> Web Page response
        Add Javascript + Ajax

        Zoom in on the server to see Tomcat running surrounded by Apache
        Grails shows up over/inside tomcat with all of its components.


        </div>
        <div id="back-to-the-server" class="step" class="step" data-y="-681" data-x="1021" data-scale="0.01" data-rotate="0">
        ----------------
        Back to the Server
        Spring Application Events
        Example, Pub/Sub

        Servlet ContextListener
        Lifecycle

        HTTPSession Lifecycle listeners
        Request..

        Spring Security Listeners.

        Singleton Beans that can respond to events.

        Message Queues (embedded or external)
        JMS
        Show a small example
        Talk about ActiveMQ, RabbitMQ just went 1.0 recently..
        Templates.
        Jesque (using redis)

        Don't run non-critical elements within your HTTP Requests.

        Cron job shouldn't bring down your prod!

        Quartz Scheduler Triggered Tasks.

        Grails Executor Plugin.

        Grails Atmosphere plugin
    </div>

    <div id="#overview" class="step" data-scale="5">

    </div>
    <div id="credits" class="step" data-scale="0.1" data-rotate-x="-90" data-rotate-y="0">
        <ul>
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