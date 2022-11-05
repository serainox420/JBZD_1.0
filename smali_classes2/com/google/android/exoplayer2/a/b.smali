.class public final Lcom/google/android/exoplayer2/a/b;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field private final g:Landroid/media/MediaCodec$CryptoInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/b;->b()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/a/b;->g:Landroid/media/MediaCodec$CryptoInfo;

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 91
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private c()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/b;->g:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/a/b;->f:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/b;->d:[I

    iget-object v3, p0, Lcom/google/android/exoplayer2/a/b;->e:[I

    iget-object v4, p0, Lcom/google/android/exoplayer2/a/b;->b:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/a/b;->a:[B

    iget v6, p0, Lcom/google/android/exoplayer2/a/b;->c:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 98
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/b;->g:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I[I[I[B[BI)V
    .locals 2

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/a/b;->f:I

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/a/b;->d:[I

    .line 66
    iput-object p3, p0, Lcom/google/android/exoplayer2/a/b;->e:[I

    .line 67
    iput-object p4, p0, Lcom/google/android/exoplayer2/a/b;->b:[B

    .line 68
    iput-object p5, p0, Lcom/google/android/exoplayer2/a/b;->a:[B

    .line 69
    iput p6, p0, Lcom/google/android/exoplayer2/a/b;->c:I

    .line 70
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a/b;->c()V

    .line 73
    :cond_0
    return-void
.end method
