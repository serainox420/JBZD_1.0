.class Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;
.super Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;
.source "NativeVideoTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moat/analytics/mobile/aol/IntervalVideoTracker",
        "<",
        "Landroid/media/MediaPlayer;",
        ">;",
        "Lcom/moat/analytics/mobile/aol/NativeVideoTracker;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)V

    .line 22
    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->changeTargetView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method protected getAdData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "duration"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v1
.end method

.method protected getCurrentPosition()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 39
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected isPlaying()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->ad:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 33
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 47
    const-string v0, "Null player instance. Not tracking."

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/IntervalVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v0, "Playback has already completed. Not tracking."

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->logMessage(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic trackVideoAd(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p2, Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;->trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
