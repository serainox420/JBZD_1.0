.class Lcom/millennialmedia/internal/video/LightboxView$12;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->b(Landroid/graphics/Point;)V
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
    .line 1049
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1061
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->b(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 1062
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->a:Z

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->p(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onClicked()V

    .line 1064
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->p(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onExpanded()V

    .line 1066
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1067
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->h(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1066
    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->a(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$12;->b:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->q(Lcom/millennialmedia/internal/video/LightboxView;)V

    .line 1071
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1077
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1053
    return-void
.end method
