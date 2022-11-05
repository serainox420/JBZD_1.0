.class public Lcom/inmobi/monetization/internal/imai/IMAIController;
.super Ljava/lang/Object;
.source "IMAIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;
    }
.end annotation


# static fields
.field public static final IMAI_BRIDGE:Ljava/lang/String; = "imaiController"


# instance fields
.field private transient a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/IMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/IMAICore;->initialize()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method


# virtual methods
.method public fireAdFailed()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;->onAdFailed()V

    .line 175
    :cond_0
    return-void
.end method

.method public fireAdReady()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;->onAdReady()V

    .line 167
    :cond_0
    return-void
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 37
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "get platform version"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "get sdk version"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 54
    const-string v0, "[InMobi]-[Monetization]"

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public openEmbedded(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3e9

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 64
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMAI open Embedded"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "openEmbedded"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->launchEmbeddedBrowser(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireOpenEmbeddedSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openEmbedded"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMAI openEmbedded failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/inmobi/monetization/internal/imai/IMAIController;->openExternal(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 94
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMAI open external"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "openExternal"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->launchExternalApp(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireOpenExternalSuccessful(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openExternal"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMAI openExternal failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ping(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3eb

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 117
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMAI ping"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "ping"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/inmobi/monetization/internal/imai/IMAICore;->ping(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ping"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMAI ping failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Invalid url passed"

    const-string v2, "ping"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public pingInWebView(Ljava/lang/String;Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x3ec

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 143
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "IMAI ping in webview"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->validateURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Null url passed"

    const-string v2, "pingInWebView"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2}, Lcom/inmobi/monetization/internal/imai/IMAICore;->pingInWebview(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pingInWebView"

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMAI pingInWebView failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "Invalid url passed"

    const-string v2, "pingInWebView"

    invoke-static {v0, v1, v2, p1}, Lcom/inmobi/monetization/internal/imai/IMAICore;->fireErrorEvent(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setInterstitialAdStateListener(Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/IMAIController;->b:Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;

    .line 179
    return-void
.end method
