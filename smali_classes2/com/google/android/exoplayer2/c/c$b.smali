.class final Lcom/google/android/exoplayer2/c/c$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c/c;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c/c;Landroid/media/MediaCodec;)V
    .locals 1

    .prologue
    .line 821
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/c$b;->a:Lcom/google/android/exoplayer2/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c/c;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/c/c$1;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/c/c$b;-><init>(Lcom/google/android/exoplayer2/c/c;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c$b;->a:Lcom/google/android/exoplayer2/c/c;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/c;->b:Lcom/google/android/exoplayer2/c/c$b;

    if-eq p0, v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c$b;->a:Lcom/google/android/exoplayer2/c/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/c;->v()V

    goto :goto_0
.end method
