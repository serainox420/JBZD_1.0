.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadWeb"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 251
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    .line 252
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 255
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 256
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads init: loading webapp from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 269
    :try_start_0
    new-instance v0, Lcom/unity3d/ads/request/WebRequest;

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :try_start_1
    invoke-virtual {v0}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 290
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v1, "load web"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Invalid webViewHash"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 299
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 272
    const-string v0, "Malformed URL"

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v2, "make webrequest"

    invoke-direct {v0, v2, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 280
    :catch_1
    move-exception v1

    .line 281
    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    if-ge v0, v2, :cond_0

    .line 282
    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 283
    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 284
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    goto :goto_0

    .line 295
    :cond_1
    if-eqz v0, :cond_2

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 299
    :cond_2
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v0, v2, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method
