.class final Lcom/google/android/exoplayer2/audio/g$a;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioTrack$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/g;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/g;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/g$1;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/g$a;-><init>(Lcom/google/android/exoplayer2/audio/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/g;->v()V

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g;Z)Z

    .line 432
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/d$a;->a(I)V

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/g;->b(I)V

    .line 425
    return-void
.end method

.method public a(IJJ)V
    .locals 6

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/d$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/d$a;->a(IJJ)V

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$a;->a:Lcom/google/android/exoplayer2/audio/g;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/g;->a(IJJ)V

    .line 438
    return-void
.end method
