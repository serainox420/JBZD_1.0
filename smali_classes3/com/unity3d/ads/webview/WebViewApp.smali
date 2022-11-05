.class public Lcom/unity3d/ads/webview/WebViewApp;
.super Landroid/webkit/WebViewClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;,
        Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;
    }
.end annotation


# static fields
.field private static _conditionVariable:Landroid/os/ConditionVariable;

.field private static _currentApp:Lcom/unity3d/ads/webview/WebViewApp;


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _initialized:Z

.field private _nativeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/webview/bridge/NativeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private _webAppLoaded:Z

.field private _webView:Lcom/unity3d/ads/webview/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 41
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 41
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp;->setConfiguration(Lcom/unity3d/ads/configuration/Configuration;)V

    .line 45
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->setClassTable([Ljava/lang/Class;)V

    .line 46
    new-instance v0, Lcom/unity3d/ads/webview/WebView;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/webview/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    new-instance v1, Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    new-instance v1, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/configuration/Configuration;Lcom/unity3d/ads/webview/WebViewApp$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    return-void
.end method

.method public static create(Lcom/unity3d/ads/configuration/Configuration;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Cannot call create() from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    new-instance v0, Lcom/unity3d/ads/webview/WebViewApp$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/webview/WebViewApp$1;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    .line 274
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    return v0
.end method

.method public static getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    return-object v0
.end method

.method private invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking javascript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unity3d/ads/webview/WebView;->invokeJavascript(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static setCurrentApp(Lcom/unity3d/ads/webview/WebViewApp;)V
    .locals 0

    .prologue
    .line 234
    sput-object p0, Lcom/unity3d/ads/webview/WebViewApp;->_currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    .line 235
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallback(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/NativeCallback;
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/webview/bridge/NativeCallback;

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

.method public getWebView()Lcom/unity3d/ads/webview/WebView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    return-object v0
.end method

.method public invokeCallback(Lcom/unity3d/ads/webview/bridge/Invocation;)Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "invokeBatchCallback ignored because web app is not loaded"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    move v0, v4

    .line 198
    :goto_0
    return v0

    .line 159
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 161
    invoke-virtual {p1}, Lcom/unity3d/ads/webview/bridge/Invocation;->getResponses()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    .line 165
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 166
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 167
    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/String;

    .line 168
    array-length v8, v0

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    .line 170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v1}, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 175
    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 178
    :cond_1
    array-length v2, v8

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v8, v0

    .line 179
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_2
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 184
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 188
    :cond_3
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 193
    :cond_4
    :try_start_0
    const-string v0, "nativebridge"

    const-string v1, "handleCallback"

    invoke-direct {p0, v0, v1, v6}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v0, v5

    .line 198
    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "Error while invoking batch response for WebView"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public varargs invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, "invokeMethod ignored because web app is not loaded"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 150
    :goto_0
    return v0

    .line 122
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 124
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 126
    if-eqz p3, :cond_1

    .line 127
    new-instance v1, Lcom/unity3d/ads/webview/bridge/NativeCallback;

    invoke-direct {v1, p3}, Lcom/unity3d/ads/webview/bridge/NativeCallback;-><init>(Ljava/lang/reflect/Method;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->addCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V

    .line 130
    invoke-virtual {v1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    :goto_1
    if-eqz p4, :cond_2

    .line 137
    array-length v3, p4

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, p4, v1

    .line 138
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 133
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 143
    :cond_2
    :try_start_0
    const-string v1, "nativebridge"

    const-string v3, "handleInvocation"

    invoke-direct {p0, v1, v3, v2}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    const-string v2, "Error invoking javascript method"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isWebAppInitialized()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    return v0
.end method

.method public isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    return v0
.end method

.method public removeCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "sendEvent ignored because web app is not loaded"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 113
    :goto_0
    return v0

    .line 98
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    array-length v3, p3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p3, v1

    .line 103
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_1
    :try_start_0
    const-string v1, "nativebridge"

    const-string v3, "handleEvent"

    invoke-direct {p0, v1, v3, v2}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string v2, "Error while sending event to WebView"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setConfiguration(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 84
    return-void
.end method

.method public setWebAppInitialized(Z)V
    .locals 1

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 63
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 64
    return-void
.end method

.method public setWebAppLoaded(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 55
    return-void
.end method

.method public setWebView(Lcom/unity3d/ads/webview/WebView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    .line 76
    return-void
.end method
