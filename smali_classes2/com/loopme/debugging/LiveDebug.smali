.class public Lcom/loopme/debugging/LiveDebug;
.super Ljava/lang/Object;
.source "LiveDebug.java"


# static fields
.field private static final DEBUG_TIME:I = 0x493e0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDebugTimer:Landroid/os/CountDownTimer;

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sIsDebugOn:Z

.field private static sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/loopme/debugging/LiveDebug;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/debugging/LiveDebug;->LOG_TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/loopme/debugging/LiveDebug;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->startTimer()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->sendToServer()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/loopme/debugging/LiveDebug;->sIsDebugOn:Z

    return p0
.end method

.method static synthetic access$302(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/loopme/debugging/LiveDebug;->sDebugTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$400()Lcom/loopme/debugging/LogDbHelper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->initPostDataParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static formatLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "ui"

    .line 144
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    const-string v0, "bg"

    goto :goto_0
.end method

.method public static handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/loopme/debugging/LiveDebug;->sIsDebugOn:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/loopme/debugging/LiveDebug;->saveLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/loopme/debugging/LogDbHelper;

    invoke-direct {v0, p0}, Lcom/loopme/debugging/LogDbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    .line 42
    return-void
.end method

.method private static initLogsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    invoke-virtual {v0}, Lcom/loopme/debugging/LogDbHelper;->getLogs()Ljava/util/List;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    invoke-virtual {v1}, Lcom/loopme/debugging/LogDbHelper;->clear()V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static initPostDataParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->initLogsString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v3, "device_os"

    const-string v4, "android"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "sdk_type"

    const-string v4, "loopme"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "sdk_version"

    const-string v4, "5.1.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "device_id"

    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getViewerToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "package"

    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "app_key"

    invoke-virtual {v1}, Lcom/loopme/request/AdRequestParametersProvider;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "msg"

    const-string v3, "sdk_debug"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "debug_logs"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object v2
.end method

.method private static saveLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    invoke-static {p0, p1}, Lcom/loopme/debugging/LiveDebug;->formatLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/loopme/debugging/LiveDebug;->sLogDbHelper:Lcom/loopme/debugging/LogDbHelper;

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/loopme/debugging/LiveDebug;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/loopme/debugging/LiveDebug$4;

    invoke-direct {v2, v0}, Lcom/loopme/debugging/LiveDebug$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 140
    :cond_0
    return-void
.end method

.method private static sendToServer()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/loopme/debugging/LiveDebug$3;

    invoke-direct {v1}, Lcom/loopme/debugging/LiveDebug$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 97
    return-void
.end method

.method public static setLiveDebug(Z)V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLiveDebug "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-boolean v0, Lcom/loopme/debugging/LiveDebug;->sIsDebugOn:Z

    if-eq v0, p0, :cond_0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    sput-boolean p0, Lcom/loopme/debugging/LiveDebug;->sIsDebugOn:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance v1, Lcom/loopme/debugging/LiveDebug$1;

    invoke-direct {v1}, Lcom/loopme/debugging/LiveDebug$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_0
    return-void
.end method

.method private static startTimer()V
    .locals 6

    .prologue
    .line 67
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->sDebugTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/loopme/debugging/LiveDebug$2;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x3e8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/loopme/debugging/LiveDebug$2;-><init>(JJ)V

    sput-object v0, Lcom/loopme/debugging/LiveDebug;->sDebugTimer:Landroid/os/CountDownTimer;

    .line 80
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start debug timer"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/loopme/debugging/LiveDebug;->sDebugTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 83
    :cond_0
    return-void
.end method
