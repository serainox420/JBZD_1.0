.class public Lcom/inmobi/re/configs/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# static fields
.field public static final PRODUCT_MRAID:Ljava/lang/String; = "mraid"

.field public static final PRODUCT_RENDERING:Ljava/lang/String; = "rendering"

.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/inmobi/re/configs/ConfigParams;

.field private static d:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/inmobi/re/configs/ConfigParams;

    invoke-direct {v0}, Lcom/inmobi/re/configs/ConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;

    .line 25
    new-instance v0, Lcom/inmobi/re/configs/Initializer$1;

    invoke-direct {v0}, Lcom/inmobi/re/configs/Initializer$1;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 42
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sput-object p0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    .line 45
    invoke-static {p0}, Lcom/inmobi/re/configs/Initializer;->c(Landroid/content/Context;)V

    .line 47
    :try_start_0
    const-string v0, "rendering"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 74
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->c(Landroid/content/Context;)V

    .line 76
    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/inmobi/re/configs/ConfigParams;

    invoke-direct {v1}, Lcom/inmobi/re/configs/ConfigParams;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Lcom/inmobi/re/configs/ConfigParams;->setFromMap(Ljava/util/Map;)V

    .line 79
    sput-object v1, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 83
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Config couldn\'t be parsed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    invoke-static {p0}, Lcom/inmobi/re/configs/Initializer;->a(Landroid/content/Context;)V

    .line 60
    :try_start_0
    const-string v0, "rendering"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    .line 70
    return-void
.end method

.method public static getConfigParams()Lcom/inmobi/re/configs/ConfigParams;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->b(Landroid/content/Context;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;

    return-object v0
.end method

.method public static getMRAIDString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    const-string v0, "mraid"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    new-instance v3, Lcom/inmobi/re/configs/Initializer$2;

    invoke-direct {v3}, Lcom/inmobi/re/configs/Initializer$2;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getRawData()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    .line 103
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    :cond_0
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},imIsObjInvalid=function(a){return\"undefined\"==typeof a||null==a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=\n[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.mraidview.startListeningMicIntensity()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==\na&&0==c[a].count&&window.mraidview.stopListeningMicIntensity()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=JSON.parse(arguments[c]);b[c]=d}else b[c]=arguments[c];window.mraid.broadcastEvent(b[0],b[1],\nb[2])}}},__im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),window.location=a)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){for(var b=this.urlScheme+\"://\"+a,c,d=!0,g=1;g<arguments.length;g+=2)c=arguments[g+\n1],null!=c&&(d?(b+=\"?\",d=!1):b+=\"&\",b+=arguments[g]+\"=\"+escape(c));__im__iosNativeCall.executeNativeCall(b);return\"OK\"};this.nativeCallComplete=function(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"}};\n(function(){var a=window.mraidview={},b={allowOrientationChange:!0,forceOrientation:\"none\"},c=[],d=!1;a.fireGalleryImageSelectedEvent=function(a,f,b){var c=new Image;c.src=\"data:image/jpeg;base64,\"+a;c.width=f;c.height=b;window.mraid.broadcastEvent(\"galleryImageSelected\",c)};a.fireCameraPictureCatpturedEvent=function(a,f,b){var c=new Image;c.src=\"data:image/jpeg;base64,\"+a;c.width=f;c.height=b;window.mraid.broadcastEvent(\"cameraPictureCaptured\",c)};a.firePostStatusEvent=function(a){window.mraid.broadcastEvent(\"postStatus\",\na)};a.fireMediaTrackingEvent=function(a,f){var b={};b.name=a;var c=\"inmobi_media_\"+a;\"undefined\"!=typeof f&&(null!=f&&\"\"!=f)&&(c=c+\"_\"+f);window.mraid.broadcastEvent(c,b)};a.fireMediaErrorEvent=function(a,f){var b={name:\"error\"};b.code=f;var c=\"inmobi_media_\"+b.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(c=c+\"_\"+a);window.mraid.broadcastEvent(c,b)};a.fireMediaTimeUpdateEvent=function(a,f,b){var c={name:\"timeupdate\",target:{}};c.target.currentTime=f;c.target.duration=b;f=\"inmobi_media_\"+c.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(f=f+\"_\"+a);window.mraid.broadcastEvent(f,c)};a.fireMediaCloseEvent=function(a,f,b){var c={name:\"close\"};c.viaUserInteraction=f;c.target={};c.target.currentTime=b;f=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(f=f+\"_\"+a);window.mraid.broadcastEvent(f,c)};a.fireMediaVolumeChangeEvent=function(a,f,b){var c={name:\"volumechange\",target:{}};c.target.volume=f;c.target.muted=b;f=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(f=\nf+\"_\"+a);window.mraid.broadcastEvent(f,c)};a.showAlert=function(a){utilityController.showAlert(a)};a.zeroPad=function(a){var f=\"\";10>a&&(f+=\"0\");return f+a};a.useCustomClose=function(e){try{displayController.useCustomClose(e)}catch(f){a.showAlert(\"use CustomClose: \"+f)}};a.close=function(){try{displayController.close()}catch(e){a.showAlert(\"close: \"+e)}};a.stackCommands=function(a,f){d?c.push(a):(eval(a),f&&(d=!0))};a.executeStack=function(){for(d=!1;0<c.length;){var a=c.shift();eval(a)}};a.emptyStack=\nfunction(){for(;0<c.length;)c.shift()};a.expand=function(e){try{displayController.expand(e)}catch(f){a.showAlert(\"executeNativeExpand: \"+f+\", URL = \"+e)}};a.setExpandProperties=function(e){try{e?this.props=e:e=null,displayController.setExpandProperties(a.stringify(e))}catch(f){a.showAlert(\"executeNativesetExpandProperties: \"+f+\", props = \"+e)}};a.getExpandProperties=function(){try{return eval(\"(\"+displayController.getExpandProperties()+\")\")}catch(e){a.showAlert(\"getExpandProperties: \"+e)}};a.setOrientationProperties=\nfunction(e){try{e?b=e:e=null,displayController.setOrientationProperties(a.stringify(e))}catch(f){a.showAlert(\"executeNativesetOrientationProperties: \"+f+\", props = \"+e)}};a.getOrientationProperties=function(){return b};a.resizeProps=null;a.setResizeProperties=function(e){var f,b;try{f=parseInt(e.width);b=parseInt(e.height);if(isNaN(f)||isNaN(b)||1>f||1>b)throw\"Invalid\";e.width=f;e.height=b;a.resizeProps=e;displayController.setResizeProperties(a.stringify(e))}catch(c){window.mraid.broadcastEvent(\"error\",\n\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+displayController.getResizeProperties()+\")\")}catch(e){a.showAlert(\"getResizeProperties: \"+e)}};a.acceptAction=function(e){try{displayController.acceptAction(a.stringify(e))}catch(f){a.showAlert(\"acceptAction: \"+f+\", params = \"+e)}};a.rejectAction=function(e){try{displayController.rejectAction(a.stringify(e))}catch(f){a.showAlert(\"rejectAction: \"+f+\", params = \"+e)}};a.open=function(e){\"undefined\"==\ntypeof e&&(e=null);try{displayController.open(e)}catch(f){a.showAlert(\"open: \"+f)}};a.openExternal=function(e){try{utilityController.openExternal(e)}catch(f){a.showAlert(\"openExternal: \"+f)}};a.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(e){a.showAlert(\"getScreenSize: \"+e)}};a.getMaxSize=function(){try{return eval(\"(\"+utilityController.getMaxSize()+\")\")}catch(e){a.showAlert(\"getMaxSize: \"+e)}};a.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\n\")\")}catch(e){a.showAlert(\"getCurrentPosition: \"+e)}};a.getDefaultPosition=function(){try{return eval(\"(\"+utilityController.getDefaultPosition()+\")\")}catch(e){a.showAlert(\"getDefaultPosition: \"+e)}};a.getState=function(){try{return String(displayController.getState())}catch(e){a.showAlert(\"getState: \"+e)}};a.getOrientation=function(){try{return String(displayController.getOrientation())}catch(e){a.showAlert(\"getOrientation: \"+e)}};a.isViewable=function(){try{return displayController.isViewable()}catch(e){a.showAlert(\"isViewable: \"+\ne)}};a.log=function(e){try{utilityController.log(e)}catch(f){a.showAlert(\"log: \"+f)}};a.getPlatform=function(){return\"android\"};a.getPlacementType=function(){return displayController.getPlacementType()};a.asyncPing=function(e){try{utilityController.asyncPing(e)}catch(f){a.showAlert(\"asyncPing: \"+f)}};a.close=function(){try{displayController.close()}catch(e){a.showAlert(\"close: \"+e)}};a.makeCall=function(e){try{e.startsWith(\"tel:\")?utilityController.openExternal(e):utilityController.openExternal(\"tel:\"+\ne)}catch(f){a.showAlert(\"makeCall: \"+f)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.sendMail=function(e,f,b){try{utilityController.sendMail(e,f,b)}catch(c){a.showAlert(\"sendMail: \"+c)}};a.sendSMS=function(e,f){try{utilityController.sendSMS(e,f)}catch(b){a.showAlert(\"sendSMS: \"+b)}};a.pauseAudio=function(e){try{var f=getPID(e);utilityController.pauseAudio(f)}catch(b){a.showAlert(\"pauseAudio: \"+b)}};a.muteAudio=function(e){try{var f=\ngetPID(e);utilityController.muteAudio(f)}catch(b){a.showAlert(\"muteAudio: \"+b)}};a.unMuteAudio=function(e){try{var f=getPID(e);utilityController.unMuteAudio(f)}catch(b){a.showAlert(\"unMuteAudio: \"+b)}};a.isAudioMuted=function(e){try{var f=getPID(e);return utilityController.isAudioMuted(f)}catch(b){a.showAlert(\"isAudioMuted: \"+b)}};a.setAudioVolume=function(e,f){try{var b=getPID(e);f=parseInt(f);utilityController.setAudioVolume(b,f)}catch(c){a.showAlert(\"setAudioVolume: \"+c)}};a.getAudioVolume=function(e){try{var f=\ngetPID(e);return utilityController.getAudioVolume(f)}catch(b){a.showAlert(\"getAudioVolume: \"+b)}};a.seekAudio=function(e,f){try{var b=getPID(e);f=parseInt(f);utilityController.seekAudio(b,f)}catch(c){a.showAlert(\"seekAudio: \"+c)}};a.playAudio=function(e,b){var c=!0,d=!1,g=\"normal\",h=\"normal\",k=!0,q=\"\",r=getPID(b);null!=e&&(q=e);null!=b&&(\"undefined\"!=typeof b.autoplay&&!1===b.autoplay&&(c=!1),\"undefined\"!=typeof b.loop&&!0===b.loop&&(d=!0),\"undefined\"!=typeof b.startStyle&&null!=b.startStyle&&(g=\nb.startStyle),\"undefined\"!=typeof b.stopStyle&&null!=b.stopStyle&&(h=b.stopStyle),\"fullscreen\"==g&&(k=!0));try{utilityController.playAudio(q,c,k,d,g,h,r)}catch(s){a.showAlert(\"playAudio: \"+s)}};a.pauseVideo=function(e){try{var b=getPID(e);utilityController.pauseVideo(b)}catch(c){a.showAlert(\"pauseVideo: \"+c)}};a.closeVideo=function(e){try{var b=getPID(e);utilityController.closeVideo(b)}catch(c){a.showAlert(\"closeVideo: \"+c)}};a.hideVideo=function(e){try{var b=getPID(e);utilityController.hideVideo(b)}catch(c){a.showAlert(\"hideVideo: \"+\nc)}};a.showVideo=function(e){try{var b=getPID(e);utilityController.showVideo(b)}catch(c){a.showAlert(\"showVideo: \"+c)}};a.muteVideo=function(e){try{var b=getPID(e);utilityController.muteVideo(b)}catch(c){a.showAlert(\"muteVideo: \"+c)}};a.unMuteVideo=function(e){try{var b=getPID(e);utilityController.unMuteVideo(b)}catch(c){a.showAlert(\"unMuteVideo: \"+c)}};a.seekVideo=function(e,b){try{var c=getPID(e);b=parseInt(b);utilityController.seekVideo(c,b)}catch(d){a.showAlert(\"seekVideo: \"+d)}};a.isVideoMuted=\nfunction(b){try{var c=getPID(b);return utilityController.isVideoMuted(c)}catch(d){a.showAlert(\"isVideoMuted: \"+d)}};a.setVideoVolume=function(b,c){try{var d=getPID(b);c=parseInt(c);utilityController.setVideoVolume(d,c)}catch(g){a.showAlert(\"setVideoVolume: \"+g)}};a.getVideoVolume=function(b){try{var c=getPID(b);return utilityController.getVideoVolume(c)}catch(d){a.showAlert(\"getVideoVolume: \"+d)}};a.playVideo=function(b,c){var d=!1,g=!0,h=!0,k=!1,t=-99999,q=-99999,r=-99999,s=-99999,u=\"normal\",v=\"exit\",\nw=\"\",x=getPID(c);null!=b&&(w=b);null!=c&&(\"undefined\"!=typeof c.audio&&\"muted\"==c.audio&&(d=!0),\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(g=!1),\"undefined\"!=typeof c.controls&&!1===c.controls&&(h=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(k=!0),\"undefined\"!=typeof c.inline&&null!=c.inline&&(t=c.inline.left,q=c.inline.top),\"undefined\"!=typeof c.width&&null!=c.width&&(r=c.width),\"undefined\"!=typeof c.height&&null!=c.height&&(s=c.height),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&\n(u=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=c.stopStyle&&(v=c.stopStyle),\"fullscreen\"==u&&(h=!0),t=parseInt(t).toString(),q=parseInt(q).toString(),r=parseInt(r).toString(),s=parseInt(s).toString());try{utilityController.playVideo(w,d,g,h,k,t,q,r,s,u,v,x)}catch(y){a.showAlert(\"playVideo: \"+y)}};a.updateToPassbook=function(b){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.stringify=function(b){if(\"undefined\"===typeof JSON){var c=\n\"\",d;if(\"undefined\"==typeof b.length)return a.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(c+=\",\"),c+=a.stringifyArg(b[d]);return c+\"]\"}return JSON.stringify(b)};a.stringifyArg=function(b){var c,d,g;d=typeof b;c=\"\";if(\"number\"===d||\"boolean\"===d)c+=args;else if(b instanceof Array)c=c+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;c+=\"{\";for(g in b)null!==b[g]&&(d||(c+=\",\"),c=c+\'\"\'+g+\'\":\',d=typeof b[g],c=\"number\"===d||\"boolean\"===d?c+b[g]:\"function\"===typeof b[g]?c+\'\"\"\':b[g]instanceof Object?c+this.stringify(args[i][g]):\nc+\'\"\'+b[g]+\'\"\',d=!1);c+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,\'\\\\\"\'),c=c+\'\"\'+b+\'\"\';a.showAlert(\"json:\"+c);return c};getPID=function(a){var b=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(b=a.id);return b};var g,h=!0;a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);return a};var k=function(){if(h||a.getWindowOrientation()!==g)h=!1,g=a.getWindowOrientation(),displayController.onOrientationChange(),mraid.broadcastEvent(\"orientationChange\",g)};a.registerOrientationListener=\nfunction(){g=a.getWindowOrientation();window.addEventListener(\"resize\",k,!1);window.addEventListener(\"orientationchange\",k,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",k,!1);window.removeEventListener(\"orientationchange\",k,!1)};a.startListeningMicIntensity=function(){utilityController.registerMicListener()};a.stopListeningMicIntensity=function(){utilityController.unRegisterMicListener()};getSdkVersionInt=function(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,\nd=\"\",g=0;g<c;g++)d+=b[g];return parseInt(d)};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{displayController.resize()}catch(b){a.showAlert(\"resize called in bridge\")}};a.vibrate=function(b){null==b||420>getSdkVersionInt()?utilityController.vibrate():\"number\"==typeof b?0==b?utilityController.vibrate(\"[]\",-1):utilityController.vibrate(\"[0,\"+b+\"]\",-1):\"[object Array]\"===Object.prototype.toString.call(b)?\n0==b.length?utilityController.vibrate(\"[]\",-1):utilityController.vibrate(\"[0,\"+String(b)+\"]\",-1):a.showAlert(\"Invalid params in vibrate\")};a.takeCameraPicture=function(){utilityController.takeCameraPicture()};a.getGalleryImage=function(){return utilityController.getGalleryImage()};a.getSdkVersion=function(){return window._im_imaiBridge.getSdkVersion()};a.createCalendarEvent=function(b){var c={};\"object\"!=typeof b&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\n\"createCalendarEvent\");if(\"string\"!=typeof b.start||\"string\"!=typeof b.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof b.id&&(b.id=\"\");\"string\"!=typeof b.location&&(b.location=\"\");\"string\"!=typeof b.description&&(b.description=\"\");\"string\"!=typeof b.summary&&(b.summary=\"\");\"string\"==typeof b.status&&(\"pending\"==b.status||\"tentative\"==b.status||\"confirmed\"==b.status||\"cancelled\"==b.status)||\n(b.status=\"\");\"string\"==typeof b.transparency&&(\"opaque\"==b.transparency||\"transparent\"==b.transparency)||(b.transparency=\"\");if(null==b.recurrence||\"\"==b.recurrence)c={};else{\"string\"==typeof b.summary&&(c.frequency=b.recurrence.frequency);null!=b.recurrence.interval&&(c.interval=b.recurrence.interval);\"string\"==typeof b.summary&&(c.expires=b.recurrence.expires);if(null!=b.recurrence.daysInWeek){var d=formatDaysInWeek(b.recurrence.daysInWeek);null!=d?c.daysInWeek=d:a.showAlert(\"daysInWeek invalid format \")}c.daysInMonth=\nb.recurrence.daysInMonth;c.daysInYear=b.recurrence.daysInYear;c.weeksInMonth=b.recurrence.weeksInMonth;c.monthsInYear=b.recurrence.monthsInYear}\"string\"!=typeof b.reminder&&(b.reminder=\"\");try{utilityController.createCalendarEvent(b.id,b.start,b.end,b.location,b.description,b.summary,b.status,b.transparency,JSON.stringify(c),b.reminder)}catch(g){utilityController.createCalendarEvent(b.start,b.end,b.location,b.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var b=0;b<a.length;b++)switch(a[b]){case 0:a[b]=\n\"SU\";break;case 1:a[b]=\"MO\";break;case 2:a[b]=\"TU\";break;case 3:a[b]=\"WE\";break;case 4:a[b]=\"TH\";break;case 5:a[b]=\"FR\";break;case 6:a[b]=\"SA\";break;default:return null}return a}}catch(c){}return null};a.supports=function(a){console.log(\"bridge: supports\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=utilityController.supportsFeature(a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)&&window.mraid.broadcastEvent(\"error\",\n\"socialType must be an integer\",\"postToSocial\");\"string\"!=typeof b&&(b=\"\");\"string\"!=typeof c&&(c=\"\");\"string\"!=typeof d&&(d=\"\");utilityController.postToSocial(a,b,c,d)};a.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+\nb+\" was cancelled by user.\",\"storePicture\"),!1):utilityController.storePicture(b);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.getMicIntensity=function(){return utilityController.getMicIntensity()};a.incentCompleted=function(a){a instanceof Object?utilityController.incentCompleted(JSON.stringify(a)):utilityController.incentCompleted(\"\")};window.mraidview.registerOrientationListener()})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview;a.getSdkVersion=b.getSdkVersion;a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=b.setExpandProperties;a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.getOrientation=\nb.getOrientation;a.isViewable=b.isViewable;a.createCalendarEvent=b.createCalendarEvent;a.open=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c)};a.resize=b.resize;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getVersion=function(){return\"2.0\"};a.getInMobiAIVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.asyncPing=function(c){\"string\"!=\ntypeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.makeCall=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must provide a number to call.\",\"makeCall\"):b.makeCall(c)};a.sendMail=function(c,d,g){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendMail\"):b.sendMail(c,d,g)};a.sendSMS=function(c,d){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendSMS\"):b.sendSMS(c,d)};a.playAudio=function(a,\nd){\"object\"!=typeof d?\"string\"==typeof a?b.playAudio(a,null):\"object\"==typeof a?b.playAudio(null,a):b.playAudio(null,null):b.playAudio(a,d)};a.playVideo=function(a,d){\"object\"!=typeof d?\"string\"==typeof a?b.playVideo(a,null):\"object\"==typeof a?b.playVideo(null,a):b.playVideo(null,null):b.playVideo(a,d)};a.getGalleryImage=b.getGalleryImage;a.pauseAudio=b.pauseAudio;a.muteAudio=b.muteAudio;a.unMuteAudio=b.unMuteAudio;a.isAudioMuted=b.isAudioMuted;a.setAudioVolume=function(c){if(\"object\"!=typeof c&&\nnull!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setAudioVolume\"):(0>d?d=0:100<d&&(d=100),b.setAudioVolume(c,d))}};a.getAudioVolume=b.getAudioVolume;a.pauseVideo=b.pauseVideo;a.closeVideo=b.closeVideo;a.hideVideo=b.hideVideo;a.showVideo=b.showVideo;a.muteVideo=b.muteVideo;a.unMuteVideo=b.unMuteVideo;a.isVideoMuted=b.isVideoMuted;a.setVideoVolume=\nfunction(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setVideoVolume\"):(0>d?d=0:100<d&&(d=100),b.setVideoVolume(c,d))}};a.getVideoVolume=b.getVideoVolume;a.seekAudio=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"seekAudio\");else{var d=c.time;imIsObjInvalid(d)?\na.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekAudio\"):0!=d?a.broadcastEvent(\"error\",\"Cannot seek audio other than 0\",\"seekAudio\"):b.seekAudio(c,d)}};a.seekVideo=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\");else{var d=c.time;imIsObjInvalid(d)?a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\"):0!=d?a.broadcastEvent(\"error\",\"Cannot seek video other than 0\",\"seekVideo\"):b.seekVideo(c,d)}};\na.openExternal=b.openExternal;a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.updateToPassbook=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c)};a.acceptAction=b.acceptAction;a.rejectAction=b.rejectAction;a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)};a.vibrate=\nb.vibrate;a.takeCameraPicture=b.takeCameraPicture;a.getMicIntensity=function(){return imIsObjInvalid(a.listeners.micIntensityChange)?-1:b.getMicIntensity()};a.postToSocial=b.postToSocial;a.supports=function(a){var d=!1;\"inlineVideo\"==a?(d=b.supports(a),!1==d&&(d=b.supports(\"html5video\"))):d=b.supports(a);return d};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=b.showSKStore})();\n(function(){var a=window.imraidview={};a.saveContent=function(a,c,d){var g=getSdkVersionInt();window.mraid.addEventListener(\"saveContent_\"+a,d);440>g?window.mraid.sendSaveContentResult(\"saveContent_\"+a,\"fail\",JSON.stringify({url:c,reason:5})):utilityController.saveContent(a,c)};a.cancelSaveContent=function(a){utilityController.cancelSaveContent(a)};a.playableSettings=function(a,c){try{var d={};if(null!=a&&\"string\"==typeof a){var g=parseInt(a);isNaN(g)?window.imraid.broadcastEvent(\"CanRunPlayable\",\n!1,\"Got non numeric campaign Id\"):(d.campaignId=g,null!=c&&\"object\"==typeof c&&(d.properties=c),utilityController.setPlayableSettings(JSON.stringify(d)))}else window.imraid.broadcastEvent(\"CanRunPlayable\",!1,\"Got nil campaign Id\")}catch(h){window.imraid.broadcastEvent(\"error\",\"exception while fetching playable settings\")}};a.disableCloseRegion=function(a){displayController.disableCloseRegion(a)}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.saveContent=function(a,d,g){var h=arguments.length;3>h?\"function\"===typeof arguments[h-1]&&(h=arguments[h-1],window.mraid.addEventListener(\"saveContent\",h),window.mraid.sendSaveContentResult(\"saveContent\",\"fail\",JSON.stringify({reason:1}))):b.saveContent(a,d,g)};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.disableCloseRegion=b.disableCloseRegion;a.playableSettings=b.playableSettings})();\n(function(){var a=window._im_imaiBridge={ios:{}};a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return imaiController.getPlatformVersion()};a.log=function(a){imaiController.log(a)};a.openEmbedded=function(a){imaiController.openEmbedded(a)};a.openExternal=function(a){imaiController.openExternal(a)};a.ping=\nfunction(a,c){imaiController.ping(a,c)};a.pingInWebView=function(a,c){imaiController.pingInWebView(a,c)};a.getSdkVersion=function(){try{var a=imaiController.getSdkVersion();if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||null==a)utilityController.onUserInteraction(\"{}\");else try{utilityController.onUserInteraction(JSON.stringify(a))}catch(c){utilityController.onUserInteraction(\"{}\")}};a.fireAdReady=function(){imaiController.fireAdReady()};\na.fireAdFailed=function(){imaiController.fireAdFailed()}})();\n(function(){var a=window._im_imaiBridge;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var g=-1;try{g=a.indexOf(b)}catch(h){}return g};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,g){if(imIsObjInvalid(d)||imIsObjInvalid(g))return a;b.isHttpUrl(a)&&(a=-1==b.matchString(a,\n\"?\")?a+(\"?u-tap-o=\"+d+\",\"+g):a+(\"&u-tap-o=\"+d+\",\"+g));return a};b.performAdClick=function(a,d){d=d||event;if(imIsObjInvalid(a))b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\");else{var g=a.clickConfig,h=a.landingConfig;if(imIsObjInvalid(g)&&imIsObjInvalid(h))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var k=null,e=null,f=null,\nm=null,n=null,l=null,p=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(t){n=m=0}imIsObjInvalid(h)?(l=g.url,p=g.urlType):imIsObjInvalid(g)?(l=h.url,p=h.urlType):(l=h.url,p=h.urlType,k=g.url,e=g.pingWV,f=g.fr);g=b.getPlatform();try{if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"boolean\"!=typeof e&&\"number\"!=typeof e||null==e)e=!0;if(0>e||1<e)e=!0;if(\"number\"!=typeof p||null==p)p=0;k=b.appendTapParams(k,m,n);imIsObjValid(k)?!0==\ne?b.pingInWebView(k):b.ping(k,f):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjInvalid(k)&&(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==g?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+g);break;default:b.openExternal(l)}else b.log(\"Landing url provided is null.\")}catch(q){}}}};b.performActionClick=function(a,d){d=d||event;if(imIsObjInvalid(a))b.log(\" invalid config, nothing to process .\"),\nthis.broadcastEvent(\"error\",\"invalid config, nothing to process .\");else{var g=a.clickConfig,h=a.landingConfig;if(imIsObjInvalid(g)&&imIsObjInvalid(h))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var k=null,e=null,f=null,m=null,n=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(g)&&(k=g.url,e=g.pingWV,f=g.fr);try{if(\"boolean\"!=\ntypeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"boolean\"!=typeof e&&\"number\"!=typeof e||null==e)e=!0;if(0>e||1<e)e=!0;k=b.appendTapParams(k,m,n);imIsObjValid(k)?!0==e?b.pingInWebView(k):b.ping(k,f):b.log(\"clickurl provided is null.\");b.onUserInteraction(h)}catch(p){}}}};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=a.openEmbedded;b.openExternal=a.openExternal;b.ping=a.ping;b.pingInWebView=a.pingInWebView;\nb.onUserInteraction=function(b){try{if(imIsObjValid(b)&&\"object\"==typeof b)a.onUserInteraction(b);else a.onUserInteraction({})}catch(d){}};b.getSdkVersion=a.getSdkVersion;b.ios.openItunesProductView=a.ios.openItunesProductView;b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();\n"

    goto :goto_0
.end method
