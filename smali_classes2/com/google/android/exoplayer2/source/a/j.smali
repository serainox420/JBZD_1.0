.class public abstract Lcom/google/android/exoplayer2/source/a/j;
.super Lcom/google/android/exoplayer2/source/a/c;
.source "DataChunk.java"


# instance fields
.field private i:[B

.field private j:I

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;[B)V
    .locals 14

    .prologue
    .line 50
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a/c;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 52
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    .line 53
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    if-nez v0, :cond_1

    .line 116
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/j;->k:Z

    .line 76
    return-void
.end method

.method protected abstract a([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/j;->k:Z

    return v0
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/j;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/j;->a:Lcom/google/android/exoplayer2/upstream/g;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    .line 89
    :cond_0
    :goto_0
    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/j;->k:Z

    if-nez v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a/j;->f()V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    iget v2, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    const/16 v3, 0x4000

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v0

    .line 92
    if-eq v0, v4, :cond_0

    .line 93
    iget v1, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/j;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0

    .line 96
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/j;->k:Z

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/a/j;->a([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 102
    return-void
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/j;->i:[B

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/j;->j:I

    int-to-long v0, v0

    return-wide v0
.end method
