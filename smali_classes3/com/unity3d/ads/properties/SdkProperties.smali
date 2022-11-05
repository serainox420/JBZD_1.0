.class public Lcom/unity3d/ads/properties/SdkProperties;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field private static final LOCAL_CACHE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsCache-"

.field private static final LOCAL_STORAGE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsStorage-"

.field private static _cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

.field private static _configUrl:Ljava/lang/String;

.field private static _initialized:Z

.field private static _showTimeout:I

.field private static _testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    .line 21
    const/16 v0, 0x1388

    sput v0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    .line 23
    sput-boolean v1, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    .line 24
    sput-boolean v1, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/unity3d/ads/cache/CacheDirectory;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/ads/cache/CacheDirectory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    .line 102
    :cond_0
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/ads/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "UnityAdsCache"

    return-object v0
.end method

.method public static getCacheFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://config.unityads.unity3d.com/webview/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getWebViewBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalStorageFilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static getLocalWebViewFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShowTimeout()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    return v0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x7d8

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "2.0.8"

    return-object v0
.end method

.method private static getWebViewBranch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    return v0
.end method

.method public static isTestMode()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    return v0
.end method

.method public static setConfigUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 64
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 68
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 71
    sput-object p0, Lcom/unity3d/ads/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static setInitialized(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/unity3d/ads/properties/SdkProperties;->_initialized:Z

    .line 32
    return-void
.end method

.method public static setShowTimeout(I)V
    .locals 0

    .prologue
    .line 106
    sput p0, Lcom/unity3d/ads/properties/SdkProperties;->_showTimeout:I

    .line 107
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    .prologue
    .line 39
    sput-boolean p0, Lcom/unity3d/ads/properties/SdkProperties;->_testMode:Z

    .line 40
    return-void
.end method
