.class abstract Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;
.super Lcom/moat/analytics/mobile/aol/BaseVideoTracker;
.source "IntervalVideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/moat/analytics/mobile/aol/BaseVideoTracker",
        "<TPlayerOrIMAAd;>;"
    }
.end annotation


# static fields
.field private static final MAX_CONSEC_FAILED_CHECKS:I = 0x5

.field protected static final NOT_SET:I = -0x80000000

.field private static final PLAYBACK_LOOP_MS:I = 0xc8


# instance fields
.field private checkLoopRetries:I

.field protected duration:I

.field protected maxPosition:I

.field protected playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

.field protected previousPosition:I

.field protected previousVolume:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 38
    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->maxPosition:I

    .line 39
    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->duration:I

    .line 40
    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousPosition:I

    .line 41
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousVolume:D

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->checkLoopRetries:I

    .line 43
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->UNINITIALIZED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    .line 44
    return-void
.end method


# virtual methods
.method protected checkPlayback()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->isDonePlayBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 126
    iget v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousPosition:I

    if-ltz v0, :cond_2

    if-ltz v4, :cond_0

    .line 130
    :cond_2
    iput v4, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousPosition:I

    .line 133
    if-nez v4, :cond_3

    move v3, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->isPlaying()Z

    move-result v5

    .line 139
    int-to-double v6, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    .line 140
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->getVideoVolumeOfMax()D

    move-result-wide v8

    .line 142
    const/4 v1, 0x0

    .line 144
    iget v10, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->maxPosition:I

    if-le v4, v10, :cond_4

    .line 145
    iput v4, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->maxPosition:I

    .line 148
    :cond_4
    iget v10, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->duration:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_5

    .line 149
    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->duration:I

    .line 152
    :cond_5
    if-eqz v5, :cond_b

    .line 153
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    sget-object v5, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->UNINITIALIZED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    if-ne v0, v5, :cond_9

    .line 154
    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 155
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->PLAYING:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    .line 176
    :cond_6
    :goto_1
    if-eqz v1, :cond_c

    move v0, v2

    .line 178
    :goto_2
    if-nez v0, :cond_7

    iget-wide v6, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousVolume:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v6, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousVolume:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v10

    if-lez v5, :cond_7

    .line 179
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    move-object v1, v0

    move v0, v2

    .line 183
    :cond_7
    if-eqz v0, :cond_8

    .line 184
    new-instance v0, Lcom/moat/analytics/mobile/aol/MoatAdEvent;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/moat/analytics/mobile/aol/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/aol/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V

    .line 187
    :cond_8
    iput-wide v8, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousVolume:D

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->checkLoopRetries:I

    move v3, v2

    .line 190
    goto :goto_0

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    sget-object v5, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->PAUSED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    if-ne v0, v5, :cond_a

    .line 157
    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 158
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->PLAYING:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 195
    iget v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->checkLoopRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->checkLoopRetries:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    move v0, v2

    :goto_3
    move v3, v0

    goto/16 :goto_0

    .line 160
    :cond_a
    int-to-double v10, v4

    div-double v6, v10, v6

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 161
    const/4 v5, -0x1

    if-le v0, v5, :cond_e

    const/4 v5, 0x3

    if-ge v0, v5, :cond_e

    .line 162
    sget-object v5, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->QUARTILE_EVENTS:[Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    aget-object v0, v5, v0

    .line 163
    iget-object v5, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 165
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->oneTimeEventsDispatched:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v1, v0

    .line 168
    goto :goto_1

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    sget-object v5, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->PAUSED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    if-eq v0, v5, :cond_6

    .line 171
    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 172
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->PAUSED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    move v0, v3

    .line 176
    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 195
    goto :goto_3

    :cond_e
    move-object v0, v1

    goto :goto_4
.end method

.method protected formatAndCheckEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 49
    iget-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    .line 60
    :goto_0
    iget-object v1, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 61
    iget v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 62
    iput-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    .line 65
    :cond_0
    iget-object v1, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    if-ne v1, v2, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->duration:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->duration:I

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->isNearCompletion(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->STOPPED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    .line 73
    sget-object v0, Lcom/moat/analytics/mobile/aol/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/aol/MoatAdEventType;

    .line 79
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->formatAndCheckEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 53
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->getCurrentPosition()Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_2
    iput-object v0, p1, Lcom/moat/analytics/mobile/aol/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iget v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->previousPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 75
    :cond_4
    sget-object v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;->COMPLETED:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    iput-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    goto :goto_1
.end method

.method protected abstract getCurrentPosition()Ljava/lang/Integer;
.end method

.method protected abstract getDuration()Ljava/lang/Integer;
.end method

.method protected getPlayerState()Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->playerState:Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$PlayerState;

    return-object v0
.end method

.method protected abstract isPlaying()Z
.end method

.method protected startTracking()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0}, Lcom/moat/analytics/mobile/aol/BaseVideoTracker;->startTracking()V

    .line 95
    new-instance v0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker$1;-><init>(Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;)V

    .line 114
    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method
