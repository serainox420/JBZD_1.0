.class public Lcom/intentsoftware/addapptr/a/b;
.super Ljava/lang/Object;
.source "ConfigDownloader.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/b/b$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/a/b$a;,
        Lcom/intentsoftware/addapptr/a/b$b;
    }
.end annotation


# static fields
.field private static final CACHED_CONFIG_VALIDITY_TIME:J = 0xf731400L

.field private static final REQUESTS_TO_WAIT_BEFORE_RETRY:I = 0x4

.field private static final REQUEST_URL:Ljava/lang/String; = "https://rules.aatkit.com/cgi-bin/kitty.cgi"

.field private static final REQUEST_URL2:Ljava/lang/String; = "https://rules2.aatkit.com/cgi-bin/kitty.cgi"

.field private static final REQUEST_URL3:Ljava/lang/String; = "https://rules3.aatkit.com/cgi-bin/kitty.cgi"

.field private static final SHARED_PREFERENCES_RULES_PREFIX:Ljava/lang/String; = "aatkit_cached_rules_"

.field private static final SHARED_PREFERENCES_RULES_PROTOCOLVERSION_PREFIX:Ljava/lang/String; = "aatkit_cached_rules_protocol_"

.field private static final SHARED_PREFERENCES_RULES_TIMESTAMP_PREFIX:Ljava/lang/String; = "aatkit_cached_rules_timestamp_"


# instance fields
.field private final availableServers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

.field private chosenUrl:Ljava/lang/String;

.field private currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fakeAdResponse:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private initialConfig:Ljava/lang/String;

.field private final listener:Lcom/intentsoftware/addapptr/a/c;

.field private realConfigDownloaded:Z

.field private ruleCachingEnabled:Z

.field private final servers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shouldReset:Z

.field private timeWhenPaused:J

.field private final timer:Lcom/intentsoftware/addapptr/c/l;

.field private updateInterval:J

.field private final updateIntervalOnWrongConfig:J

.field private usingOnWrongConfigTimer:Z


# direct methods
.method public constructor <init>(Lcom/intentsoftware/addapptr/a/c;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    .line 72
    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    const-string v2, "https://rules.aatkit.com/cgi-bin/kitty.cgi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "https://rules.aatkit.com/cgi-bin/kitty.cgi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    const-string v2, "https://rules2.aatkit.com/cgi-bin/kitty.cgi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "https://rules2.aatkit.com/cgi-bin/kitty.cgi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    const-string v2, "https://rules3.aatkit.com/cgi-bin/kitty.cgi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "https://rules3.aatkit.com/cgi-bin/kitty.cgi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 79
    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 82
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->updateInterval:J

    .line 83
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->updateIntervalOnWrongConfig:J

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    .line 90
    iput-boolean v5, p0, Lcom/intentsoftware/addapptr/a/b;->shouldReset:Z

    .line 96
    iput-boolean v6, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    .line 105
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b;->listener:Lcom/intentsoftware/addapptr/a/c;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handler:Landroid/os/Handler;

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->executor:Ljava/util/concurrent/Executor;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConfigDownloaderHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handlerThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/a/b;->updateInterval:J

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZLandroid/os/Looper;)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    .line 112
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->loadInitialConfig()V

    .line 113
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->loadCachedRules()V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/intentsoftware/addapptr/a/b;->processResponse(Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    return-void
.end method

.method static synthetic access$400(Lcom/intentsoftware/addapptr/a/b;)Lcom/intentsoftware/addapptr/a/c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->listener:Lcom/intentsoftware/addapptr/a/c;

    return-object v0
.end method

.method static synthetic access$700(Lcom/intentsoftware/addapptr/a/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/intentsoftware/addapptr/a/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    return v0
.end method

.method static synthetic access$900(Lcom/intentsoftware/addapptr/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    return-object v0
.end method

.method private chooseRequestURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "No request urls in available servers list, falling back to default url."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :cond_0
    const-string v0, "https://rules.aatkit.com/cgi-bin/kitty.cgi"

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    .line 174
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chosen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as config server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    return-object v0
.end method

.method private handleRequestError()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading config from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed, trying other server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 352
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "Failed to download new config."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 361
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    goto :goto_0
.end method

.method private loadCachedRules()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 397
    const-string v0, "aatkit_cached_rules_"

    invoke-static {v0, v3}, Lcom/intentsoftware/addapptr/c/j;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    const-string v0, "aatkit_cached_rules_timestamp_"

    invoke-static {v0, v3}, Lcom/intentsoftware/addapptr/c/j;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    const-string v0, "aatkit_cached_rules_protocol_"

    invoke-static {v0, v3}, Lcom/intentsoftware/addapptr/c/j;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    const/4 v0, 0x0

    .line 402
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "12"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xf731400

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 414
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 415
    const-string v1, "aatkit_cached_rules_timestamp_"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/j;->remove(Ljava/lang/String;)V

    .line 416
    const-string v1, "aatkit_cached_rules_"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/j;->remove(Ljava/lang/String;)V

    .line 417
    const-string v1, "aatkit_cached_rules_protocol_"

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/j;->remove(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/intentsoftware/addapptr/a/b$3;

    invoke-direct {v1, p0, v2}, Lcom/intentsoftware/addapptr/a/b$3;-><init>(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 431
    :cond_2
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing cached config timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadInitialConfig()V
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/intentsoftware/addapptr/a/b$4;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/a/b$4;-><init>(Lcom/intentsoftware/addapptr/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 446
    :cond_0
    return-void
.end method

.method private markServerUrlUnreachable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method private declared-synchronized onDownloadingFinished()V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

    .line 211
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->updateRetryCounters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processResponse(Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 266
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->fakeAdResponse:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 267
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Using fake response:\n%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/intentsoftware/addapptr/a/b;->fakeAdResponse:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    :cond_0
    new-instance v0, Lcom/intentsoftware/addapptr/a/a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->fakeAdResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/intentsoftware/addapptr/a/a;-><init>(Ljava/lang/String;)V

    .line 275
    :goto_0
    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne p2, v1, :cond_4

    .line 276
    iput-boolean v5, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    .line 278
    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "aatkit_cached_rules_"

    invoke-static {v1, p1}, Lcom/intentsoftware/addapptr/c/j;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "aatkit_cached_rules_protocol_"

    const-string v2, "12"

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/c/j;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/intentsoftware/addapptr/a/b;->reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    .line 289
    :cond_2
    :goto_1
    return-void

    .line 272
    :cond_3
    new-instance v0, Lcom/intentsoftware/addapptr/a/a;

    invoke-direct {v0, p1}, Lcom/intentsoftware/addapptr/a/a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->CACHE:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne p2, v1, :cond_5

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 285
    invoke-direct {p0, v0, p1, p2}, Lcom/intentsoftware/addapptr/a/b;->reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    goto :goto_1

    .line 286
    :cond_5
    sget-object v1, Lcom/intentsoftware/addapptr/a/b$b;->DEFAULT:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v1, :cond_2

    .line 287
    invoke-direct {p0, v0, p1, p2}, Lcom/intentsoftware/addapptr/a/b;->reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    goto :goto_1
.end method

.method private reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x3

    .line 292
    iput-object v5, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    .line 293
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->isPaused()Z

    move-result v0

    if-nez v0, :cond_6

    .line 294
    sget-object v0, Lcom/intentsoftware/addapptr/a/b$b;->SERVER:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne p3, v0, :cond_3

    .line 295
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getAdConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->usingOnWrongConfigTimer:Z

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/intentsoftware/addapptr/a/b$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/intentsoftware/addapptr/a/b$2;-><init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Lcom/intentsoftware/addapptr/a/b$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_1
    :goto_1
    return-void

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/a/b;->updateInterval:J

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->usingOnWrongConfigTimer:Z

    goto :goto_0

    .line 303
    :cond_3
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-eqz v0, :cond_4

    .line 304
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring config from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as server config already available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_4
    sget-object v0, Lcom/intentsoftware/addapptr/a/b$b;->CACHE:Lcom/intentsoftware/addapptr/a/b$b;

    if-ne p3, v0, :cond_0

    .line 309
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-nez v0, :cond_5

    .line 310
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "Cached config ignored, as rule caching was disabled."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const-string v0, "Cached config ignored, as default config is available."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_6
    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App is paused, config from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cached to be used when app resumes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :cond_7
    new-instance v0, Lcom/intentsoftware/addapptr/a/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/a/b$a;-><init>(Lcom/intentsoftware/addapptr/a/b;Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;Lcom/intentsoftware/addapptr/a/b$1;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    goto/16 :goto_1
.end method

.method private declared-synchronized startDownloading()V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->shouldReset:Z

    .line 158
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "Start downloading."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v0, Lcom/intentsoftware/addapptr/b/b;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->chooseRequestURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->toHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/intentsoftware/addapptr/b/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/intentsoftware/addapptr/b/b$a;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopDownloading()V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

    if-eqz v0, :cond_2

    .line 182
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "Stop downloading."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/b/b;->cancel()V

    .line 186
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 187
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    .line 188
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->onDownloadingFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->shouldReset:Z

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->shouldReset:Z

    .line 191
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateRetryCounters()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->servers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/a/b;->stop()V

    .line 451
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 454
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 455
    return-void
.end method

.method public forceReload()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 197
    const/4 v0, 0x0

    .line 198
    iget-object v2, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v2, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 203
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 207
    :cond_1
    return-void
.end method

.method public getUpdateInterval()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->updateInterval:J

    return-wide v0
.end method

.method public onGetRequestError()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "Failed to download new config."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/intentsoftware/addapptr/a/b;->markServerUrlUnreachable(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->onDownloadingFinished()V

    .line 256
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->handleRequestError()V

    .line 257
    return-void
.end method

.method public onGetRequestResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "New config downloaded."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->availableServers:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->chosenUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->onDownloadingFinished()V

    .line 239
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/intentsoftware/addapptr/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/intentsoftware/addapptr/a/b$1;-><init>(Lcom/intentsoftware/addapptr/a/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->startDownloading()V

    .line 228
    return-void
.end method

.method public setFakeAdResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b;->fakeAdResponse:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setInitialRules(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/intentsoftware/addapptr/a/b;->initialConfig:Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->loadInitialConfig()V

    .line 387
    return-void
.end method

.method public setRuleCachingEnabled(Z)V
    .locals 1

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    .line 391
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-nez v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->loadCachedRules()V

    .line 394
    :cond_0
    return-void
.end method

.method public setUpdateInterval(J)V
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set update interval to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->usingOnWrongConfigTimer:Z

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(JZ)V

    .line 377
    :cond_1
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/a/b;->updateInterval:J

    .line 378
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "Start"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "Loading last downloaded response."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/a/b$a;->access$000(Lcom/intentsoftware/addapptr/a/b$a;)Lcom/intentsoftware/addapptr/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/a/b$a;->access$100(Lcom/intentsoftware/addapptr/a/b$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/a/b;->cachedResponse:Lcom/intentsoftware/addapptr/a/b$a;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/a/b$a;->access$200(Lcom/intentsoftware/addapptr/a/b$a;)Lcom/intentsoftware/addapptr/a/b$b;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/intentsoftware/addapptr/a/b;->reportConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Ljava/lang/String;Lcom/intentsoftware/addapptr/a/b$b;)V

    .line 130
    :cond_2
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/c/l;->getTimeAlreadyPassed()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setTimeAlreadyPassed(J)V

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->currentGetRequest:Lcom/intentsoftware/addapptr/b/b;

    if-nez v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->willStartImmediately()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->shouldReset:Z

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_5
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "Stop"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->ruleCachingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/a/b;->realConfigDownloaded:Z

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "aatkit_cached_rules_timestamp_"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/j;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/a/b;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/a/b;->timeWhenPaused:J

    .line 153
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/a/b;->stopDownloading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
