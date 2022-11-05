.class Lcom/millennialmedia/internal/video/LightboxView$6;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 725
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->a:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->b:Lcom/millennialmedia/internal/video/LightboxView;

    .line 727
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->h(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoClose:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 726
    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 731
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
