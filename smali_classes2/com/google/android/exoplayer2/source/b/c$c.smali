.class final Lcom/google/android/exoplayer2/source/b/c$c;
.super Lcom/google/android/exoplayer2/b/b;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/l;[I)V
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/b/b;-><init>(Lcom/google/android/exoplayer2/source/l;[I)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/l;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/b/c$c;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/b/c$c;->d:I

    .line 390
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/c$c;->d:I

    return v0
.end method

.method public a(J)V
    .locals 4

    .prologue
    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 395
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/c$c;->d:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/source/b/c$c;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/b/c$c;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 400
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/source/b/c$c;->b(IJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iput v0, p0, Lcom/google/android/exoplayer2/source/b/c$c;->d:I

    goto :goto_0

    .line 399
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 406
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method
