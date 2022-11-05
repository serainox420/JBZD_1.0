.class public final Lcom/inmobi/monetization/internal/imai/RequestResponseManager;
.super Ljava/lang/Object;
.source "RequestResponseManager.java"


# static fields
.field static a:Ljava/lang/Thread;

.field static b:Landroid/os/Handler;

.field static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

.field public static mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private h:Lcom/inmobi/monetization/internal/imai/WebviewLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    sput-object v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    .line 28
    new-instance v0, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    .line 29
    sput-object v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->b:Landroid/os/Handler;

    .line 33
    sput-object v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    sput-object v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->h:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->d:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->e:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->saveClickEvents()V

    .line 72
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->clear()V

    .line 74
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->clear()V

    .line 79
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Request Response Manager deinit failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->getLoggedClickEvents()Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    .line 49
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Request Response Manager init failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processClick(Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsCommon$HttpRequestCallback;)V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/monetization/internal/imai/RequestResponseManager$1;-><init>(Lcom/inmobi/monetization/internal/imai/RequestResponseManager;Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsCommon$HttpRequestCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->a:Ljava/lang/Thread;

    .line 249
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 250
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception ping "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processClickHttpClient(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 265
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing click in http client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getImai()Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->getPingTimeOut()I

    move-result v4

    .line 271
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 274
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 276
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 278
    const-string v1, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSavedUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/16 v4, 0x190

    if-ge v1, v4, :cond_4

    move v1, v3

    .line 286
    :goto_0
    if-ne v3, v1, :cond_1

    .line 287
    :try_start_2
    sget-object v2, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 302
    :goto_1
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    .line 305
    :cond_0
    :goto_2
    return v0

    .line 291
    :cond_1
    :try_start_3
    sget-object v2, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 295
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    .line 296
    :goto_3
    :try_start_4
    sget-object v3, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 299
    const-string v3, "[InMobi]-[Monetization]"

    const-string v4, "Click in background exception"

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 302
    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    .line 302
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 295
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public processClickUrlInWebview(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 314
    :try_start_0
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing click in webview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->h:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    .line 317
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getImai()Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->getPingTimeOut()I

    move-result v1

    .line 319
    const/4 v0, 0x0

    .line 320
    iget-object v2, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->h:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-virtual {v2, p1, v0}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->loadInWebview(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 322
    sget-object v2, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->a:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    :try_start_1
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->a:Ljava/lang/Thread;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :try_start_3
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v6, v0, :cond_0

    .line 333
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->h:Lcom/inmobi/monetization/internal/imai/WebviewLoader;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->deinit(I)V

    .line 344
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    .line 348
    :goto_2
    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    :try_start_4
    const-string v3, "[InMobi]-[Monetization]"

    const-string v4, "Network thread wait failure"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "ping in webview exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_2

    .line 338
    :cond_0
    :try_start_6
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    sget-object v0, Lcom/inmobi/monetization/internal/imai/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
