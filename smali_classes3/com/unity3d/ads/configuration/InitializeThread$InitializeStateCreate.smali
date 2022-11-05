.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateCreate"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _webViewData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 308
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 309
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 322
    const-string v0, "Unity Ads init: creating webapp"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 325
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/configuration/Configuration;->setWebViewData(Ljava/lang/String;)V

    .line 329
    :try_start_0
    invoke-static {v0}, Lcom/unity3d/ads/webview/WebViewApp;->create(Lcom/unity3d/ads/configuration/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;

    invoke-direct {v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;-><init>()V

    .line 341
    :goto_0
    return-object v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    const-string v0, "Illegal Thread"

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 333
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v2, "create webapp"

    invoke-direct {v0, v2, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 340
    :cond_0
    const-string v0, "Unity Ads webapp creation timeout"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v1, "create webapp"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Creation of WebApp most likely timed out!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

.method public getWebData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    return-object v0
.end method
