.class final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;
.super Ljava/lang/Object;
.source "SimpleExoPlayerView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/d$a;
.implements Lcom/google/android/exoplayer2/m$b;
.implements Lcom/google/android/exoplayer2/text/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$1;)V
    .locals 0

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V

    .line 687
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(Ljava/util/List;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;Z)V

    .line 699
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_0
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 673
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;->a:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 675
    :cond_0
    return-void

    .line 672
    :cond_1
    int-to-float v0, p1

    mul-float/2addr v0, p4

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method
