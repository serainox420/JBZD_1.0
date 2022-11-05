.class public Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source "Networking.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/mopub/network/MoPubRequestQueue;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Lcom/mopub/network/MaxWidthImageLoader;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/network/Networking;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearForTesting()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 167
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit v1

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBaseUrlScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "http"

    return-object v0
.end method

.method public static getCachedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    .line 159
    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    .line 162
    :cond_0
    return-object v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
    .locals 5

    .prologue
    .line 80
    sget-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    .line 82
    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v2

    .line 87
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v0

    .line 88
    new-instance v3, Lcom/mopub/network/Networking$1;

    invoke-direct {v3, v0}, Lcom/mopub/network/Networking$1;-><init>(I)V

    .line 98
    new-instance v0, Lcom/mopub/network/MaxWidthImageLoader;

    new-instance v4, Lcom/mopub/network/Networking$2;

    invoke-direct {v4, v3}, Lcom/mopub/network/Networking$2;-><init>(Landroid/support/v4/f/g;)V

    invoke-direct {v0, v2, p0, v4}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 109
    sput-object v0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;

    .line 111
    :cond_0
    monitor-exit v1

    .line 113
    :cond_1
    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .locals 6

    .prologue
    .line 49
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    .line 51
    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    .line 54
    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 58
    new-instance v2, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/mopub/network/CustomSSLSocketFactory;->getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v4, Lcom/mopub/network/RequestQueueHttpStack;

    invoke-direct {v4, v3, v2, v0}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 64
    new-instance v2, Lcom/mopub/volley/toolbox/BasicNetwork;

    invoke-direct {v2, v4}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/HttpStack;)V

    .line 65
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mopub-volley-cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v3, Lcom/mopub/volley/toolbox/DiskBasedCache;

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v4, v5}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v3, v0, v4}, Lcom/mopub/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 68
    new-instance v0, Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {v0, v3, v2}, Lcom/mopub/network/MoPubRequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V

    .line 69
    sput-object v0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;

    .line 70
    invoke-virtual {v0}, Lcom/mopub/network/MoPubRequestQueue;->start()V

    .line 72
    :cond_0
    monitor-exit v1

    .line 75
    :cond_1
    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/mopub/network/Networking;->useHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    .line 126
    if-nez v0, :cond_1

    .line 127
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    .line 129
    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 133
    :try_start_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 142
    :goto_0
    :try_start_2
    sput-object v0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;

    .line 144
    :cond_0
    monitor-exit v1

    .line 147
    :cond_1
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lcom/mopub/network/Networking;->a:Ljava/lang/String;

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static declared-synchronized setImageLoaderForTesting(Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->d:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRequestQueueForTesting(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->b:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 184
    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit v0

    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static useHttps(Z)V
    .locals 0

    .prologue
    .line 191
    sput-boolean p0, Lcom/mopub/network/Networking;->e:Z

    .line 192
    return-void
.end method

.method public static useHttps()Z
    .locals 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/mopub/network/Networking;->e:Z

    return v0
.end method
