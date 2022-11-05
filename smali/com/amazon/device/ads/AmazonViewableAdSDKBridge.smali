.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.super Ljava/lang/Object;
.source "AmazonViewableAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;,
        Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;,
        Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;,
        Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "viewableAdSDKBridge"

.field private static final INSTRUMENTATION_JAVASCRIPT_API:Ljava/lang/String;

.field private static final JAVASCRIPT_API:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->LOGTAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === \'[object Array]\';\n    },\n    addViewTreeObservers = function(){\n       viewableAdSDKBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"AddObserversToViewTree\", null);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    removeViewTreeObservers = function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       viewableAdSDKBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"RemoveObserversFromViewTree\", null);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    forEach = function (array, fn) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        var i;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        for (i = 0; i < array.length; i++) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            if (i in array) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                fn.call(null, array[i], i);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    listeners = [],\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    version = 1.1,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    invokeListeners = function(event, args) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        var eventListeners = listeners[event] || [];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        // fire all the listeners\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        forEach(eventListeners, function(listener){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            try {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                listener.apply(null, args);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }catch(e){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                debug(\"Error executing \" + event + \" listener\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                debug(e);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        });\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    debug = function(msg) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        console.log(\"SDK JS API log: \" + msg);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    viewabilityChangeEvent = function(viewable) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        debug(\"viewableChange: \" + viewable);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        var jsonObject = JSON.parse(viewable);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        var args = [jsonObject];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        invokeListeners(\"Viewability\", args);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    }, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    window.viewableBridge = {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       viewabilityChange : viewabilityChangeEvent\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    /* we can add new event properties in future */  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    window.Event = {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            Viewability: \'Viewability\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    // Define the amazonmobileadsviewablebridge object\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    window.amazonmobileadsviewablebridge = {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Command Flow\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            addEventListener : function(event, listener){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                var eventListeners = listeners[event] || [],\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                alreadyRegistered = false;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //verify the event is one that will actually occur/ verfiy it\'s supported by SDK\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!Event.hasOwnProperty(event)){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    return;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //register first set of listeners for this event\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!is_array(listeners[event])) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    listeners[event] = eventListeners;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                forEach(eventListeners, function(l){ \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    // Listener already registered, so no need to add it.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        if (listener === l){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                            alreadyRegistered = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!alreadyRegistered){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    listeners[event].push(listener);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    if (event = Event.Viewability){ \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                       addViewTreeObservers();  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   } \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            removeEventListener : function(event, listener){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (listeners.hasOwnProperty(event)) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    var eventListeners = listeners[event];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    if (eventListeners) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        var idx = eventListeners.indexOf(listener);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        if (idx !== -1) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                            eventListeners.splice(idx, 1);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                            if (event = Event.Viewability){ \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                               removeViewTreeObservers();  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                             } \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getSDKVersion: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               var json = JSON.parse(viewableAdSDKBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetSDKVersion\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "               return json.sdkVersion;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getVersion: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return version;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    };\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})(window, console);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->JAVASCRIPT_API:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function(){\n                var json = JSON.parse(viewableAdSDKBridge."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetInstrumentationURL\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return json.instrumentationPixelUrl;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->INSTRUMENTATION_JAVASCRIPT_API:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 146
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    .line 147
    sget-object v0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 148
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->settings:Lcom/amazon/device/ads/Settings;

    .line 149
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$AddObserversToViewTree;-><init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;-><init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;-><init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;-><init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->registerViewabilityInterest()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->deregisterViewabilityInterest()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->getInstrumentationURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendViewabilityJavascript()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    sget-object v1, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->JAVASCRIPT_API:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->getViewabilityJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deregisterViewabilityInterest()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->deregisterViewabilityInterest()V

    .line 241
    return-void
.end method

.method private getInstrumentationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getInstrumentationPixelUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getViewabilityJavascript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "viewableJSSettingsNameAmazonAdSDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript is null"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 186
    const-string v0, ""

    .line 191
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->INSTRUMENTATION_JAVASCRIPT_API:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getSlotID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerViewabilityInterest()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->registerViewabilityInterest()V

    .line 231
    return-void
.end method


# virtual methods
.method public getJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->appendViewabilityJavascript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "viewableAdSDKBridge"

    return-object v0
.end method

.method public getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonAdSDKViewableEventListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    return-object v0
.end method

.method public hasNativeExecution()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method
