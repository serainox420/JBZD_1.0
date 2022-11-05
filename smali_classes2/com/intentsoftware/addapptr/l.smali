.class Lcom/intentsoftware/addapptr/l;
.super Ljava/lang/Object;
.source "BannerReloader.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/u;


# static fields
.field static final AUTORELOAD_INTERVAL_DEFAULT:J = 0x7530L

.field static final AUTORELOAD_INTERVAL_MAX:J = 0x927c0L

.field static final AUTORELOAD_INTERVAL_MIN:J = 0x7530L

.field private static final AUTORELOAD_INTERVAL_ON_LOAD_FAILED:I = 0x3e8


# instance fields
.field private activityResumed:Z

.field private autoreloadingActive:Z

.field private estimatedTimeForNextAdLoad:J

.field private reloadTimerWasRunning:Z

.field private serverAutoreloadInterval:J

.field private timer:Lcom/intentsoftware/addapptr/c/l;

.field private userAutoreloadInterval:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Lcom/intentsoftware/addapptr/c/l;

    const-wide/16 v2, 0x7530

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/intentsoftware/addapptr/c/l;-><init>(JLjava/lang/Runnable;ZZ)V

    iput-object v1, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    .line 23
    return-void
.end method

.method private getReloadDelay()J
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/l;->getBannerRefreshInterval()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/l;->estimatedTimeForNextAdLoad:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    .line 139
    return-void
.end method

.method public fallbackOnResumeFromAd(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method getBannerRefreshInterval()J
    .locals 8

    .prologue
    const-wide/32 v2, 0x927c0

    const-wide/16 v6, 0x0

    const-wide/16 v0, 0x7530

    .line 119
    iget-wide v4, p0, Lcom/intentsoftware/addapptr/l;->userAutoreloadInterval:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 120
    iget-wide v4, p0, Lcom/intentsoftware/addapptr/l;->userAutoreloadInterval:J

    .line 127
    :goto_0
    cmp-long v6, v4, v0

    if-gez v6, :cond_2

    .line 133
    :goto_1
    return-wide v0

    .line 121
    :cond_0
    iget-wide v4, p0, Lcom/intentsoftware/addapptr/l;->serverAutoreloadInterval:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 122
    iget-wide v4, p0, Lcom/intentsoftware/addapptr/l;->serverAutoreloadInterval:J

    goto :goto_0

    :cond_1
    move-wide v4, v0

    .line 124
    goto :goto_0

    .line 129
    :cond_2
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    move-wide v0, v2

    .line 130
    goto :goto_1

    :cond_3
    move-wide v0, v4

    goto :goto_1
.end method

.method isAutoreloadingActive()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    return v0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onEmptyAdShown(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->reloadTimerWasRunning:Z

    .line 50
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->reloadTimerWasRunning:Z

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 53
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->activityResumed:Z

    .line 54
    return-void
.end method

.method public onPauseForAd(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onPlacementAdLoad(Lcom/intentsoftware/addapptr/s;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->activityResumed:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/l;->getReloadDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(JZ)V

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 63
    :cond_0
    return-void
.end method

.method public onPlacementAdLoadFail(Lcom/intentsoftware/addapptr/s;)V
    .locals 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->activityResumed:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 71
    :cond_0
    return-void
.end method

.method public onPlacementHaveAdWithBannerView(Lcom/intentsoftware/addapptr/s;Lcom/intentsoftware/addapptr/k;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->reloadTimerWasRunning:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 45
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->activityResumed:Z

    .line 46
    return-void
.end method

.method onServerReloadIntervalChanged(J)V
    .locals 5

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/l;->serverAutoreloadInterval:J

    .line 96
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->getRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/l;->getReloadDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 99
    :cond_0
    return-void
.end method

.method public onUserEarnedIncentive(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method postOneReload()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 148
    return-void
.end method

.method setEstimatedTimeForNextAdLoad(J)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/l;->estimatedTimeForNextAdLoad:J

    .line 110
    return-void
.end method

.method setNextReloadDelay(J)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0, p1, p2}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 143
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/c/l;->reset(Z)V

    .line 144
    return-void
.end method

.method setUserAutoreloadInterval(J)V
    .locals 5

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/l;->userAutoreloadInterval:J

    .line 103
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->getRefreshTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/l;->getReloadDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/c/l;->setRefreshTime(J)V

    .line 106
    :cond_0
    return-void
.end method

.method startAutoreload()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->start()V

    .line 29
    return-void
.end method

.method stopAutoreload()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/l;->timer:Lcom/intentsoftware/addapptr/c/l;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/c/l;->stop()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intentsoftware/addapptr/l;->autoreloadingActive:Z

    .line 35
    return-void
.end method
