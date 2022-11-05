.class Lcom/openx/model/video/VideoAdManager$InterstitialThread;
.super Ljava/lang/Thread;
.source "VideoAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/video/VideoAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InterstitialThread"
.end annotation


# static fields
.field private static volatile PAUSED:Z

.field private static volatile SHOW:Z

.field private static volatile finished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1877
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->PAUSED:Z

    .line 1879
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->SHOW:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1883
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 1872
    sget-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->PAUSED:Z

    return v0
.end method


# virtual methods
.method public beforeStart()V
    .locals 1

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->unpause()V

    .line 1889
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->SHOW:Z

    .line 1890
    return-void
.end method

.method public beforeStop()V
    .locals 1

    .prologue
    .line 1894
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->SHOW:Z

    .line 1895
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1899
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->PAUSED:Z

    .line 1900
    return-void
.end method

.method public declared-synchronized unpause()V
    .locals 1

    .prologue
    .line 1904
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/openx/model/video/VideoAdManager$InterstitialThread;->PAUSED:Z

    .line 1905
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    monitor-exit p0

    return-void

    .line 1904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
