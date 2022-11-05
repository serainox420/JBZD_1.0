.class public Lcom/unity3d/ads/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private _url:Ljava/lang/String;

.field private _webAppApiClassList:[Ljava/lang/Class;

.field private _webViewData:Ljava/lang/String;

.field private _webViewHash:Ljava/lang/String;

.field private _webViewUrl:Ljava/lang/String;

.field private _webViewVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected buildQueryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWebViewData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected makeRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Base URL is null"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/configuration/Configuration;->buildQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting configuration with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/unity3d/ads/request/WebRequest;

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 91
    const-string v0, "hash"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "hash"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 94
    :cond_1
    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewVersion:Ljava/lang/String;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    :cond_3
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Invalid data. Web view URL is null or empty"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setWebAppApiClassList([Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webAppApiClassList:[Ljava/lang/Class;

    .line 39
    return-void
.end method

.method public setWebViewData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewData:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setWebViewHash(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewHash:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWebViewUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unity3d/ads/configuration/Configuration;->_webViewUrl:Ljava/lang/String;

    .line 51
    return-void
.end method
