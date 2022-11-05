.class Lcom/google/android/exoplayer2/audio/AudioTrack$c;
.super Lcom/google/android/exoplayer2/audio/AudioTrack$b;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private b:Landroid/media/PlaybackParams;

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$b;-><init>()V

    .line 1636
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->c:F

    .line 1637
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->b:Landroid/media/PlaybackParams;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->b:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1664
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/AudioTrack;Z)V
    .locals 0

    .prologue
    .line 1642
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrack$b;->a(Landroid/media/AudioTrack;Z)V

    .line 1643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->h()V

    .line 1644
    return-void
.end method

.method public a(Landroid/media/PlaybackParams;)V
    .locals 1

    .prologue
    .line 1648
    if-eqz p1, :cond_0

    .line 1649
    :goto_0
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1650
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->b:Landroid/media/PlaybackParams;

    .line 1651
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->c:F

    .line 1652
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->h()V

    .line 1653
    return-void

    .line 1648
    :cond_0
    new-instance p1, Landroid/media/PlaybackParams;

    invoke-direct {p1}, Landroid/media/PlaybackParams;-><init>()V

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 1657
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrack$c;->c:F

    return v0
.end method
