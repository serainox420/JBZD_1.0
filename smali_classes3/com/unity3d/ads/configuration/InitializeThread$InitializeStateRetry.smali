.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateRetry"
.end annotation


# instance fields
.field _delay:I

.field _state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 447
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 448
    iput p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    .line 449
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 4

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads init: retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 455
    :try_start_0
    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    const-string v1, "Init retry interrupted"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
