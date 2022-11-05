.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/google/android/exoplayer2/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/b/g;)V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 795
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 808
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 809
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 801
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->p(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 802
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Z)V

    goto :goto_0

    .line 804
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Z)V

    goto :goto_0
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 762
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 768
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 738
    if-eqz p3, :cond_1

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J

    move-result-wide v0

    .line 740
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V

    .line 747
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 734
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 756
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 774
    return-void
.end method
