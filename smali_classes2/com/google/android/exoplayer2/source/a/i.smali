.class public Lcom/google/android/exoplayer2/source/a/i;
.super Lcom/google/android/exoplayer2/source/a/a;
.source "ContainerMediaChunk.java"


# instance fields
.field private final j:I

.field private final k:J

.field private final l:Lcom/google/android/exoplayer2/source/a/d;

.field private volatile m:I

.field private volatile n:Z

.field private volatile o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIIJLcom/google/android/exoplayer2/source/a/d;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/a/a;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 61
    iput p11, p0, Lcom/google/android/exoplayer2/source/a/i;->j:I

    .line 62
    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/a/i;->k:J

    .line 63
    iput-object p14, p0, Lcom/google/android/exoplayer2/source/a/i;->l:Lcom/google/android/exoplayer2/source/a/d;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/i;->n:Z

    .line 86
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/i;->n:Z

    return v0
.end method

.method public final c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/i;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/i;->m:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/g;I)Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v4

    .line 99
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/i;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget-wide v2, v4, Lcom/google/android/exoplayer2/upstream/g;->c:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/a/i;->h:Lcom/google/android/exoplayer2/upstream/e;

    .line 100
    invoke-interface {v5, v4}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V

    .line 101
    iget v1, p0, Lcom/google/android/exoplayer2/source/a/i;->m:I

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/i;->d()Lcom/google/android/exoplayer2/source/a/b;

    move-result-object v1

    .line 104
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/a/i;->k:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/a/b;->a(J)V

    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/i;->l:Lcom/google/android/exoplayer2/source/a/d;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/a/d;->a(Lcom/google/android/exoplayer2/source/a/d$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/i;->l:Lcom/google/android/exoplayer2/source/a/d;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/a/d;->a:Lcom/google/android/exoplayer2/extractor/f;

    move v1, v7

    .line 111
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/a/i;->n:Z

    if-nez v3, :cond_1

    .line 112
    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v1

    goto :goto_0

    .line 114
    :cond_1
    if-eq v1, v6, :cond_2

    move v1, v6

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/i;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/a/i;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/i;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 121
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/a/i;->o:Z

    .line 122
    return-void

    :cond_2
    move v1, v7

    .line 114
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/i;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/g;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/source/a/i;->m:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/i;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/i;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/i;->i:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/i;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/i;->o:Z

    return v0
.end method
