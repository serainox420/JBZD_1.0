.class Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASTVideoViewabilityListener"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/video/VASTVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    .line 354
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->b:Ljava/lang/ref/WeakReference;

    .line 355
    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 361
    check-cast p1, Lcom/millennialmedia/internal/video/MMVideoView;

    .line 362
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 363
    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    if-eqz p2, :cond_2

    .line 368
    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 369
    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    .line 373
    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->i(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 375
    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->i(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 376
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 378
    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    .line 382
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    .line 384
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    goto :goto_0

    .line 386
    :cond_3
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    goto :goto_0
.end method
