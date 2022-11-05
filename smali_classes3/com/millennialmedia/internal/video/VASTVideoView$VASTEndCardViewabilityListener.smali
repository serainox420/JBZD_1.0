.class Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;
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
    name = "VASTEndCardViewabilityListener"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
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
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    .line 405
    return-void
.end method


# virtual methods
.method public onViewableChanged(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 412
    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 417
    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->j(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 422
    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    goto :goto_0
.end method
