.class public final Lcom/google/android/exoplayer2/source/a/k;
.super Lcom/google/android/exoplayer2/source/a/c;
.source "InitializationChunk.java"


# instance fields
.field private final i:Lcom/google/android/exoplayer2/source/a/d;

.field private volatile j:I

.field private volatile k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/a/d;)V
    .locals 14

    .prologue
    .line 50
    const/4 v6, 0x2

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/a/c;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 52
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/k;->i:Lcom/google/android/exoplayer2/source/a/d;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/k;->k:Z

    .line 65
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/k;->k:Z

    return v0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/k;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/k;->j:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/g;I)Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v4

    .line 78
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/k;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/a/k;->h:Lcom/google/android/exoplayer2/upstream/e;

    .line 79
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V

    .line 80
    iget v1, p0, Lcom/google/android/exoplayer2/source/a/k;->j:I

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/k;->i:Lcom/google/android/exoplayer2/source/a/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/a/d;->a(Lcom/google/android/exoplayer2/source/a/d$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/k;->i:Lcom/google/android/exoplayer2/source/a/d;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/a/d;->a:Lcom/google/android/exoplayer2/extractor/f;

    move v1, v7

    .line 87
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/a/k;->k:Z

    if-nez v3, :cond_1

    .line 88
    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v1

    goto :goto_0

    .line 90
    :cond_1
    if-eq v1, v6, :cond_2

    move v1, v6

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/k;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/a/k;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/k;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 97
    return-void

    :cond_2
    move v1, v7

    .line 90
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/k;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/a/k;->j:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/k;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/k;->j:I

    int-to-long v0, v0

    return-wide v0
.end method
