.class Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;
.super Ljava/lang/Object;
.source "JavaScriptBridgeImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/JavaScriptBridge;


# static fields
.field public static final MAX_CHECKS:I = 0x32

.field public static final MAX_METADATA_LOOP_TIME:I = 0xa

.field public static final METADATA_LOOP_TIME:I = 0x32

.field public static final TAG:Ljava/lang/String; = "MoatJavaScriptBridge"


# instance fields
.field private countNoAdReturned:I

.field private hadURL:Z

.field private final onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

.field private responder:Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private sendInfoToJS:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private sendMetadataToJS:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private startedMetadataLoop:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->countNoAdReturned:I

    .line 51
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->hadURL:Z

    .line 52
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startedMetadataLoop:Z

    .line 57
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopMetadataReportLoop()V

    return-void
.end method

.method static synthetic access$100(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)Lcom/moat/analytics/mobile/aol/OnOffSwitch;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->countNoAdReturned:I

    return v0
.end method

.method static synthetic access$202(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->countNoAdReturned:I

    return p1
.end method

.method static synthetic access$208(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->countNoAdReturned:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->countNoAdReturned:I

    return v0
.end method

.method static synthetic access$300(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopViewUpdateLoop()V

    return-void
.end method

.method static synthetic access$400(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->markMoatActive()V

    return-void
.end method

.method static synthetic access$500(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToMoatJS()V

    return-void
.end method

.method private markMoatActive()V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startedMetadataLoop:Z

    if-nez v0, :cond_2

    .line 106
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Ready for communication (setting environment variables)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startedMetadataLoop:Z

    .line 109
    :cond_2
    const-string v0, "javascript:(function(b,f){function g(){function b(a,e){for(k in a)if(a.hasOwnProperty(k)){var c=a[k].fn;if(\'function\'===typeof c)try{e?c(e):c()}catch(d){}}}function d(a,b,c){\'function\'===typeof a&&(c[b]={ts:+new Date,fn:a})}bjmk={};uqaj={};yhgt={};ryup=dptk=!1;this.a=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash};this.bpsy=function(a){dptk||ryup||d(a,+new Date,bjmk)};this.qmrv=function(a){ryup||d(a,+new Date,uqaj)};this.lgpr=function(a,b){d(a,b,yhgt)};this.xrnk=function(a){yhgt.hasOwnProperty(a)&&delete yhgt[a]};this.vgft=function(){return dptk};this.lkpu=function(){return ryup};this.mqjh=function(){dptk||ryup||(dptk=!0,b(bjmk))};this.egpw=function(){ryup||(ryup=!0,b(uqaj))};this.sglu=function(a){b(yhgt,a);return 0<Object.keys(yhgt).length}}\'undefined\'===typeof b.MoatMAK&&(b.MoatMAK=new g,b.MoatMAK.a(f),b.__zMoatInit__=!0)})(window,%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->responder:Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;

    .line 111
    invoke-interface {v3}, Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;->getJSEnvString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "MoatJavaScriptBridge"

    const-string v2, "Failed to initialize communication (did not set environment variables)."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendInfoToMoatJS()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->hadURL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v1, "MoatJavaScriptBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView became null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", stopping tracking loop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopViewUpdateLoop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 167
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopMetadataReportLoop()V

    .line 168
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopViewUpdateLoop()V

    goto :goto_0

    .line 131
    :cond_3
    :try_start_1
    const-string v0, "based on null url"

    goto :goto_1

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->hadURL:Z

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->responder:Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;->getVisibilityInfo()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "MoatMAK.sglu(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6

    .line 141
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;

    invoke-direct {v2, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$2;-><init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startMetadataReportLoop()V
    .locals 7

    .prologue
    .line 173
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Starting metadata reporting loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$3;-><init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    .line 196
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendMetadataToJS:Ljava/util/concurrent/ScheduledFuture;

    .line 197
    return-void
.end method

.method private startViewUpdateLoop()V
    .locals 7

    .prologue
    .line 211
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Starting view update loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$4;-><init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    .line 234
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    .line 235
    invoke-interface {v4}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getVWIntervalMillis()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 234
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToJS:Ljava/util/concurrent/ScheduledFuture;

    .line 236
    return-void
.end method

.method private stopMetadataReportLoop()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendMetadataToJS:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendMetadataToJS:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Stopping metadata reporting loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendMetadataToJS:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 208
    :cond_1
    return-void
.end method

.method private stopViewUpdateLoop()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToJS:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToJS:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "Stopping view update loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->sendInfoToJS:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 247
    :cond_1
    return-void
.end method


# virtual methods
.method public installBridge(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->isDebugActive()Z

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    if-eqz v0, :cond_0

    .line 68
    const-string v0, "MoatJavaScriptBridge"

    const-string v1, "JavaScript is not enabled in the given WebView. Can\'t track."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->webView:Landroid/webkit/WebView;

    .line 73
    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->responder:Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;

    .line 74
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startMetadataReportLoop()V

    .line 75
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->startViewUpdateLoop()V

    .line 78
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl$1;-><init>(Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;)V

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 88
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeBridge()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->onOffSwitch:Lcom/moat/analytics/mobile/aol/OnOffSwitch;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch;->getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopMetadataReportLoop()V

    .line 97
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/JavaScriptBridgeImpl;->stopViewUpdateLoop()V

    goto :goto_0
.end method
