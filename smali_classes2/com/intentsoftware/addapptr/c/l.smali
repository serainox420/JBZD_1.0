.class public Lcom/intentsoftware/addapptr/c/l;
.super Ljava/lang/Object;
.source "Timer.java"


# instance fields
.field private final callbackRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final looped:Z

.field private refreshTime:J

.field private running:Z

.field private timeAlreadyPassed:J

.field private timeWhenStarted:J

.field private final updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;ZZ)V
    .locals 9

    .prologue
    .line 18
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZLandroid/os/Looper;)V

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/lang/Runnable;ZZLandroid/os/Looper;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    .line 23
    iput-object p3, p0, Lcom/intentsoftware/addapptr/c/l;->callbackRunnable:Ljava/lang/Runnable;

    .line 24
    iput-boolean p4, p0, Lcom/intentsoftware/addapptr/c/l;->looped:Z

    .line 26
    if-eqz p6, :cond_1

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->handler:Landroid/os/Handler;

    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/c/l;->createUpdateRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->updateRunnable:Ljava/lang/Runnable;

    .line 33
    if-eqz p5, :cond_0

    .line 36
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 38
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/c/l;)Z
    .locals 1

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->looped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/c/l;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->callbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createUpdateRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/intentsoftware/addapptr/c/l$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/c/l$1;-><init>(Lcom/intentsoftware/addapptr/c/l;)V

    return-object v0
.end method


# virtual methods
.method public getRefreshTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    return-wide v0
.end method

.method public getTimeAlreadyPassed()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->running:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 63
    return-void
.end method

.method public reset(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 72
    :goto_0
    iput-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->timeWhenStarted:J

    .line 73
    return-void

    .line 70
    :cond_0
    iput-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    goto :goto_0
.end method

.method public setRefreshTime(J)V
    .locals 5

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(JZ)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    goto :goto_0
.end method

.method public setRefreshTime(JZ)V
    .locals 1

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    .line 85
    if-eqz p3, :cond_0

    .line 86
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 88
    :cond_0
    return-void
.end method

.method public setTimeAlreadyPassed(J)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 96
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 41
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->running:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/l;->updateRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    iget-wide v4, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->timeWhenStarted:J

    .line 44
    iput-wide v6, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->running:Z

    .line 47
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->running:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/l;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c/l;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->timeWhenStarted:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/c/l;->running:Z

    .line 55
    :cond_0
    return-void
.end method

.method public willStartImmediately()Z
    .locals 4

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/c/l;->timeAlreadyPassed:J

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/l;->refreshTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
