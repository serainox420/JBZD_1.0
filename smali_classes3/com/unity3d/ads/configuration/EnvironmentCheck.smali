.class public Lcom/unity3d/ads/configuration/EnvironmentCheck;
.super Ljava/lang/Object;
.source "EnvironmentCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasJavascriptInterface(Ljava/lang/reflect/Method;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 64
    instance-of v5, v5, Landroid/webkit/JavascriptInterface;

    if-nez v5, :cond_0

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public static isEnvironmentOk()Z
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->testProGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->testCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static testCacheDirectory()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const-string v0, "Unity Ads cache directory check OK"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v0, "Unity Ads cache directory check fail: no working cache directory available"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static testProGuard()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    :try_start_0
    const-string v2, "com.unity3d.ads.webview.bridge.WebViewBridgeInterface"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 20
    const-string v3, "handleInvocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 21
    const-string v4, "handleCallback"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 23
    invoke-static {v3}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->hasJavascriptInterface(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const-string v2, "Unity Ads ProGuard check OK"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 39
    :goto_0
    return v0

    .line 27
    :cond_0
    const-string v2, "Unity Ads ProGuard check fail: missing @JavascriptInterface annotations in Unity Ads web bridge"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    .line 28
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v2, "Unity Ads ProGuard check fail: Unity Ads web bridge class not found"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    const-string v2, "Unity Ads ProGuard check fail: Unity Ads web bridge methods not found"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :catch_2
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception during Unity Ads ProGuard check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
