.class public Lcom/flurry/sdk/hk;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/hk$a;,
        Lcom/flurry/sdk/hk$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/flurry/sdk/cn;

.field final d:Ljava/lang/String;

.field private e:Lcom/flurry/sdk/cm;

.field private f:Lcom/flurry/sdk/hk$b;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/cn;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hk;->g:Z

    .line 74
    iput-object v1, p0, Lcom/flurry/sdk/hk;->a:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/hk;->i:Z

    .line 77
    iput-object v1, p0, Lcom/flurry/sdk/hk;->b:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/cn;

    .line 80
    const-class v0, Lcom/flurry/sdk/hk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/cn;

    .line 93
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/hk;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCurrentAdFrame()Lcom/flurry/sdk/cn;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/hk;->c:Lcom/flurry/sdk/cn;

    return-object v0
.end method

.method private getCurrentBinding()I
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    return v0
.end method

.method private getCurrentContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->c:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->getCurrentAdFrame()Lcom/flurry/sdk/cn;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget-object v0, v0, Lcom/flurry/sdk/cr;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->getCurrentFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/hk;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    const-string v2, "initializeMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/flurry/sdk/hk;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "interstitial"

    .line 1242
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{useCustomClose:false,isModal:false,width:undefined,height:undefined,placementType:\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    const-string v2, "javascript:(function() {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v2, "var mraidCtor=function(flurryBridge,initState){var mraid={};var STATES=mraid.STATES={LOADING:\"loading\",UNKNOWN:\"unknown\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var EVENTS=mraid.EVENTS={ASSETREADY:\"assetReady\",ASSETREMOVED:\"assetRemoved\",ASSETRETIRED:\"assetRetired\",INFO:\"info\",ERROR:\"error\",ORIENTATIONCHANGE:\"orientationChange\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\"};var listeners={};var currentState=STATES.LOADING;var expandProperties={width:initState.width,height:initState.height,isModal:initState.isModal,useCustomClose:false};var collapseProperties={};var placementType=initState.placementType;var disable=false;var safeCloseEnabled=false;var closeId=\"flurry-mraid-default-close\";var imgUrl=\"https://cdn.flurry.com/sdkAssets/bttn-close-bw.png\"; mraid.flurryBridgeListenerEvent = function(cmd){  if(cmd === \"adLoadCompleted\"){ broadcastEvent(EVENTS.READY);}};var safeClose=function(){try{if(window.mraid)window.mraid.close();else if(window.flurryadapter)flurryadapter.executeCall(\"adWillClose\");else console.log(\"unable to close\")}catch(error){console.log(\"unable to close: \"+error)}};var makeDefaultClose=function(){var img=document.createElement(\"img\");img.src=imgUrl;img.id=closeId;img.style.position=\"absolute\";img.style.top=\"10px\";img.style.right=\"10px\";img.style.width=\"50px\";img.style.height=\"50px\";img.style.zIndex=1E4;return img};var updateDefaultClose=function(){if(!expandProperties.useCustomClose&&(placementType===\"interstitial\"||currentState===STATES.EXPANDED)){addDefaultClose();flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", \"true\");safeCloseEnabled=true;console.log(\'close button added\');}else {removeDefaultClose(); console.log(\'close button removed\');}};var addDefaultClose=function(){var closeButton=document.getElementById(closeId);if(!closeButton){closeButton=makeDefaultClose();document.body.appendChild(closeButton)}};var removeDefaultClose=function(){var closeButton=document.getElementById(closeId);if(closeButton)document.body.removeChild(closeButton)};var setupDefaultCloseHandler=function(){document.body.addEventListener(\"click\",function(e){e=e||window.event;var target=e.target||e.srcElement;if(target.id===closeId)safeClose()})};var contains=function(value,obj){for(var i in obj)if(obj[i]===value)return true;return false};var stringify=function(obj){if(typeof obj==\"object\")if(obj.push){var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(obj[p]);return\"[\"+out.join(\",\")+\"]\"}else{var out=[];for(var p in obj)if(obj.hasOwnProperty(p))out.push(\"\'\"+p+\"\':\"+obj[p]);return\"{\"+out.join(\",\")+\"}\"}else return new String(obj)};var broadcastEvent=function(){var args=new Array(arguments.length);for(var i=0;i<arguments.length;i++)args[i]=arguments[i];var event=args.shift();try{if(listeners[event])for(var j=0;j<listeners[event].length;j++)if(typeof listeners[event][j]===\"function\")listeners[event][j].apply(undefined,args);else if(typeof listeners[event][j]===\"string\"&&typeof window[listeners[event][j]]===\"function\")window[listeners[event][j]].apply(undefined,args)}catch(e){console.log(e)}};mraid.disable=function(){removeDefaultClose();disable=true};mraid.addEventListener=function(event,listener){if(disable)return;if(!event||!listener)broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\");else if(!contains(event,EVENTS))broadcastEvent(EVENTS.ERROR,\"Unknown event: \"+event,\"addEventListener\");else if(!listeners[event])listeners[event]=[listener];else listeners[event].push(listener);updateDefaultClose();flurryBridge.executeCall(\"eventListenerAdded\")};mraid.stateChange=function(newState){if(disable)return;if(currentState===newState)return;broadcastEvent(EVENTS.INFO,\"setting state to \"+stringify(newState));var oldState=currentState;currentState=newState;if(oldState===STATES.LOADING&&newState===STATES.DEFAULT){setupDefaultCloseHandler();}else if(oldState===STATES.HIDDEN||newState===STATES.HIDDEN)broadcastEvent(EVENTS.VIEWABLECHANGE);else if(oldState===STATES.DEFAULT&&newState===STATES.EXPANDED)updateDefaultClose();else if(newState===STATES.DEFAULT&&oldState===STATES.EXPANDED)updateDefaultClose();broadcastEvent(EVENTS.STATECHANGE,currentState)};mraid.close=function(){if(disable)return;var state=mraid.getState();if(state===STATES.DEFAULT){mraid.stateChange(STATES.HIDDEN);flurryBridge.executeCall(\"adWillClose\")}else if(state===STATES.EXPANDED){mraid.stateChange(STATES.DEFAULT);flurryBridge.executeCall(\"collapse\")}else console.log(\"close() called in state \"+state)};mraid.expand=function(url){if(disable)return;var state=mraid.getState();if(state!==STATES.DEFAULT){console.log(\"expand() called in state \"+state);return}if(placementType===\"interstitial\"){console.log(\"expand() called for placement type \"+placementType);return}if(url)flurryBridge.executeCall(\"open\",\"url\",url);else flurryBridge.executeCall(\"expand\",\"width\",expandProperties.width,\"height\",expandProperties.height);mraid.stateChange(STATES.EXPANDED)};mraid.setExpandProperties=function(properties){if(disable)return;if(typeof properties.width===\"number\"&&!isNaN(properties.width))expandProperties.width=properties.width;if(typeof properties.height===\"number\"&&!isNaN(properties.height))expandProperties.height=properties.height;if(typeof properties.useCustomClose===\"boolean\"){expandProperties.useCustomClose=properties.useCustomClose;updateDefaultClose()}};mraid.getExpandProperties=function(properties){if(disable)return;var ret={};ret.width=expandProperties.width;ret.height=expandProperties.height;ret.isModal=expandProperties.isModal;ret.useCustomClose=expandProperties.useCustomClose;return ret};mraid.getPlacementType=function(){return placementType};mraid.getVersion=function(){if(disable)return\"\";return\"1.0\"};mraid.getState=function(){if(disable)return\"\";return currentState};mraid.isViewable=function(){if(disable)return false;if(mraid.getState()===\"hidden\")return false;else return true};mraid.open=function(url){if(disable)return;try{flurryBridge.executeCall(\"open\",\"url\",url)}catch(e){console.log(e)}};mraid.playVideo=function(url){if(disable){return;}try{flurryBridge.executeCall(\"playVideo\",\"url\",url);}catch(e){console.log(e);}};mraid.removeEventListener=function(event,listener){if(disable)return;if(!event)broadcastEvent(\"error\",\"Must specify an event.\",\"removeEventListener\");else if(listener&&listeners[event])for(var i=0;i<listeners[event].length;i++){if(listeners[event][i]===listener)listeners[event].splice(i,1)}else if(listeners[event])listeners[event]=[]};mraid.useCustomClose=function(use){if(disable)return;if(typeof use===\"boolean\"){expandProperties.useCustomClose=use;updateDefaultClose();if (safeCloseEnabled){flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", \"true\");}else{flurryBridge.executeCall(\"mraidCloseButtonVisible\", \"useCustomClose\", use);}}};return mraid};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v2, "window.mraid=mraidCtor(window.flurryadapter,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v0, "})();"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    if-eqz p0, :cond_0

    .line 1254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 228
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hk;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    monitor-exit p0

    return-void

    .line 1239
    :cond_2
    :try_start_1
    const-string v0, "inline"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hk;->setMraidJsEnvInitialized(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/hk;->d:Ljava/lang/String;

    const-string v2, "activateMraid"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "if(window.mraid){window.mraid.stateChange(window.mraid.STATES.DEFAULT);}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/hk;->loadUrl(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public getMraidListener()Lcom/flurry/sdk/hk$a;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/flurry/sdk/hk;->f:Lcom/flurry/sdk/hk$b;

    .line 3039
    iget-object v0, v0, Lcom/flurry/sdk/hk$b;->a:Lcom/flurry/sdk/hk$a;

    .line 309
    return-object v0
.end method

.method public getWebViewType$568abff5()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/flurry/sdk/hq;->b:I

    return v0
.end method

.method public getfWebView()Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 274
    return-object p0
.end method

.method public setMraidButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/hk;->e:Lcom/flurry/sdk/cm;

    if-eqz v0, :cond_0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/hk;->e:Lcom/flurry/sdk/cm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cm;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hk;->e:Lcom/flurry/sdk/cm;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cm;->setVisibility(I)V

    goto :goto_0
.end method

.method public declared-synchronized setMraidJsEnvInitialized(Z)V
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/flurry/sdk/hk;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMraidListener(Lcom/flurry/sdk/hk$a;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/flurry/sdk/hk;->f:Lcom/flurry/sdk/hk$b;

    .line 2039
    iput-object p1, v0, Lcom/flurry/sdk/hk$b;->a:Lcom/flurry/sdk/hk$a;

    .line 306
    return-void
.end method
