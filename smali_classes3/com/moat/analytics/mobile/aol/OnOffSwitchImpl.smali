.class Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffSwitch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;
    }
.end annotation


# static fields
.field private static final MAX_LISTENERS:I = 0xf

.field private static final MAX_LISTENER_AGE_MSEC:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "MoatOnOff"

.field private static final executorServiceRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile isDebugActive:Z

.field private static final listeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile status:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

.field private static volatile vwCheckFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->executorServiceRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    .line 38
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->status:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 39
    sget-object v0, Lcom/moat/analytics/mobile/aol/BuildConfig;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->isDebugActive:Z

    .line 40
    const/16 v0, 0xc8

    sput v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->vwCheckFrequency:I

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/aol/MoatNet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->executorServiceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;-><init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->executorServiceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->executorServiceRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 58
    const-string v1, "AOL"

    .line 59
    new-instance v1, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;

    const-string v2, "AOL"

    new-instance v3, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$2;

    invoke-direct {v3, p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$2;-><init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/MoatNet;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->status:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object v0
.end method

.method static synthetic access$002(Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->status:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->isDebugActive:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->isDebugActive:Z

    return p0
.end method

.method static synthetic access$300(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->checkQueue()V

    return-void
.end method

.method static synthetic access$602(I)I
    .locals 0

    .prologue
    .line 26
    sput p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->vwCheckFrequency:I

    return p0
.end method

.method private checkQueue()V
    .locals 10

    .prologue
    .line 113
    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;

    .line 117
    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;->wasTriggered()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;->getTimeRegistered()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 125
    :cond_2
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_3

    .line 126
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 127
    sget-object v2, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->status:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object v0
.end method

.method public getVWIntervalMillis()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->vwCheckFrequency:I

    return v0
.end method

.method public isDebugActive()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->isDebugActive:Z

    return v0
.end method

.method public register(Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->checkQueue()V

    .line 109
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->listeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public setDebugLogging(Z)V
    .locals 0

    .prologue
    .line 103
    sput-boolean p1, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->isDebugActive:Z

    .line 104
    return-void
.end method
