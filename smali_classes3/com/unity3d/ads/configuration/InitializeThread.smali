.class public Lcom/unity3d/ads/configuration/InitializeThread;
.super Ljava/lang/Thread;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    }
.end annotation


# static fields
.field private static _thread:Lcom/unity3d/ads/configuration/InitializeThread;


# instance fields
.field private _state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

.field private _stopThread:Z


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    .line 36
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 37
    return-void
.end method

.method public static declared-synchronized initialize(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 3

    .prologue
    .line 53
    const-class v1, Lcom/unity3d/ads/configuration/InitializeThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread;

    new-instance v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    invoke-direct {v2, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    invoke-direct {v0, v2}, Lcom/unity3d/ads/configuration/InitializeThread;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    sput-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    .line 55
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    const-string v2, "UnityAdsInitializeThread"

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/configuration/InitializeThread;->setName(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/InitializeThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    .line 50
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    instance-of v0, v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    .line 46
    return-void
.end method
