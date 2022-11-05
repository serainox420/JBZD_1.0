.class public Lcom/video/adsdk/internal/JavascriptCode;
.super Ljava/lang/Object;
.source "JavascriptCode.java"


# static fields
.field static jsCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "ads = new Object();\n\nif (typeof cachedProgress == \'undefined\') cachedProgress = null;\nif (typeof cachedClicks == \'undefined\') cachedClicks = null;\n\nads.currentExpirationTime = -1;\n\nads.callbacks = {\n    progress:cachedProgress,\n    click:cachedClicks\n};\n\nads.init = function () {};\n\nads.playMovie = function(url,progress,click) {\n    ads.callbacks.progress = progress;\n    cachedProgress = progress;\n    ads.callbacks.click = click;\n    cachedClicks = click;\n    \n    ads._nativeCall(\"playMovie\", url);\n};\n\nads.openURL = function(url) {\n    tempForce = false;\n    if (typeof ads.forceAppBrowser != \'undefined\') {\n         if (typeof ads.forceAppBrowser == \'boolean\') {\n              tempForce = ads.forceAppBrowser;\n         } else if (typeof ads.forceAppBrowser == \'number\' && ads.forceAppBrowser == 1){\n              tempForce = true;\n         };\n    };\n    HTMLOUT.openURL(url, tempForce);\n};\n\nads.showSkip = function() {\n    ads._nativeCall(\"showSkip\", null);\n};\n\nads.stringEndsWith = function(str, suffix)  {\n    return str.indexOf(suffix, str.length - suffix.length) !== -1;\n};\n\nads.prefetch = function(expiration) {\n    ads.currentExpirationTime = expiration;\n    if (window.videoAdObj) {\n        var assets = videoAdObj.adFiles;\n        \n        for (var i=0; i<assets.length; i++) {\n            if (assets[i].url != \'\') {\n                ads._nativePrefetchCall(assets[i].url, ads.currentExpirationTime);\n            }\n        }\n    }\n};\n\nads.track = function(event) {\n    ads._nativeCall(\"track\", event);\n};\n\nads.display = function() {\n    ads._nativeCall(\"display\", null);\n};\n\nads.finalReturn = function(status) {\n    ads._nativeCall(\"finish\", status);\n};\n\n\nads._nativeCall = function(action, params) {\n\t   HTMLOUT._nativeCall(action,params);\n};\n\nads._nativePrefetchCall = function(url, timestamp) {\n\t   HTMLOUT._nativePrefetchCall(url,timestamp);\n};\n\n\nads.setBackgroundColor = function(color) {\n\t   HTMLOUT._SetBackgroundColorOfNativePlayer(color);\n};\n\nads.waitForVideoAdObjInterval = 100;\nads.waitForVideoAdObjTimeout = 5000;\nads.waitForVideoAdObj = function(timePassed) {\n  if(window.videoAdObj) {\n     console.log(\"videoAdObj is here!\");\n     videoAdObj.load_vp();\n  } else {\n    if (timePassed <= ads.waitForVideoAdObjTimeout) {\n      console.log(\"waiting for videoAdObj\");\n      setTimeout(function() {\n          ads.waitForVideoAdObj(timePassed + ads.waitForVideoAdObjInterval);\n      }, ads.waitForVideoAdObjInterval);\n    } else {\n      var message = \'wait for videoAdObj timed out\';\n      console.log(message);\n      HTMLOUT.jsError(message, document.location.href);\n    }\n  }\n};\nsetTimeout(function() {\n  ads.waitForVideoAdObj(0);\n}, ads.waitForVideoAdObjInterval);"

    sput-object v0, Lcom/video/adsdk/internal/JavascriptCode;->jsCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
