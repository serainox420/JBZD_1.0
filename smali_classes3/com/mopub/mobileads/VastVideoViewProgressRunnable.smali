.class public Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewProgressRunnable.java"


# instance fields
.field private final c:Lcom/mopub/mobileads/VastVideoViewController;

.field private final d:Lcom/mopub/mobileads/VastVideoConfig;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 26
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    .line 29
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->d:Lcom/mopub/mobileads/VastVideoConfig;

    .line 30
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->i()I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->j()I

    move-result v1

    .line 37
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->n()V

    .line 39
    if-lez v0, :cond_2

    .line 40
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->d:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v2, v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastTracker;

    .line 45
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->a(I)V

    .line 58
    :cond_2
    return-void
.end method
