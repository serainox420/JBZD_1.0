.class public Lcom/unity3d/ads/cache/CacheThread;
.super Ljava/lang/Thread;
.source "CacheThread.java"


# static fields
.field public static final MSG_DOWNLOAD:I = 0x1

.field private static _connectTimeout:I

.field private static _handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

.field private static _progressInterval:I

.field private static _readTimeout:I

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7530

    const/4 v1, 0x0

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    .line 11
    sput-boolean v1, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    .line 16
    sput v2, Lcom/unity3d/ads/cache/CacheThread;->_connectTimeout:I

    .line 17
    sput v2, Lcom/unity3d/ads/cache/CacheThread;->_readTimeout:I

    .line 18
    sput v1, Lcom/unity3d/ads/cache/CacheThread;->_progressInterval:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    sget-boolean v0, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/cache/CacheThreadHandler;->removeMessages(I)V

    .line 81
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/cache/CacheThreadHandler;->setCancelStatus(Z)V

    goto :goto_0
.end method

.method public static declared-synchronized download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    const-class v1, Lcom/unity3d/ads/cache/CacheThread;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->init()V

    .line 52
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "target"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "connectTimeout"

    sget v3, Lcom/unity3d/ads/cache/CacheThread;->_connectTimeout:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v2, "readTimeout"

    sget v3, Lcom/unity3d/ads/cache/CacheThread;->_readTimeout:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v2, "progressInterval"

    sget v3, Lcom/unity3d/ads/cache/CacheThread;->_progressInterval:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 60
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 61
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/unity3d/ads/cache/CacheThreadHandler;->setCancelStatus(Z)V

    .line 64
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/cache/CacheThreadHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getConnectTimeout()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/unity3d/ads/cache/CacheThread;->_connectTimeout:I

    return v0
.end method

.method public static getProgressInterval()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/unity3d/ads/cache/CacheThread;->_progressInterval:I

    return v0
.end method

.method public static getReadTimeout()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/unity3d/ads/cache/CacheThread;->_readTimeout:I

    return v0
.end method

.method private static init()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/unity3d/ads/cache/CacheThread;

    invoke-direct {v0}, Lcom/unity3d/ads/cache/CacheThread;-><init>()V

    .line 22
    const-string v1, "UnityAdsCacheThread"

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/cache/CacheThread;->setName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/unity3d/ads/cache/CacheThread;->start()V

    .line 25
    :goto_0
    sget-boolean v0, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_0

    .line 27
    :try_start_0
    sget-object v1, Lcom/unity3d/ads/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 29
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v0, "Couldn\'t synchronize thread"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    invoke-virtual {v0}, Lcom/unity3d/ads/cache/CacheThreadHandler;->isActive()Z

    move-result v0

    goto :goto_0
.end method

.method public static setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 93
    sput p0, Lcom/unity3d/ads/cache/CacheThread;->_connectTimeout:I

    .line 94
    return-void
.end method

.method public static setProgressInterval(I)V
    .locals 0

    .prologue
    .line 85
    sput p0, Lcom/unity3d/ads/cache/CacheThread;->_progressInterval:I

    .line 86
    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 0

    .prologue
    .line 97
    sput p0, Lcom/unity3d/ads/cache/CacheThread;->_readTimeout:I

    .line 98
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 39
    new-instance v0, Lcom/unity3d/ads/cache/CacheThreadHandler;

    invoke-direct {v0}, Lcom/unity3d/ads/cache/CacheThreadHandler;-><init>()V

    sput-object v0, Lcom/unity3d/ads/cache/CacheThread;->_handler:Lcom/unity3d/ads/cache/CacheThreadHandler;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/cache/CacheThread;->_ready:Z

    .line 41
    sget-object v1, Lcom/unity3d/ads/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/cache/CacheThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 45
    return-void

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
