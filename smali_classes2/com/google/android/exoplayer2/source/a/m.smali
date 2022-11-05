.class public final Lcom/google/android/exoplayer2/source/a/m;
.super Lcom/google/android/exoplayer2/source/a/a;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private final j:I

.field private final k:Lcom/google/android/exoplayer2/Format;

.field private volatile l:I

.field private volatile m:Z

.field private volatile n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJIILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/a/a;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJI)V

    .line 58
    iput p11, p0, Lcom/google/android/exoplayer2/source/a/m;->j:I

    .line 59
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/a/m;->k:Lcom/google/android/exoplayer2/Format;

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/m;->m:Z

    .line 78
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/m;->m:Z

    return v0
.end method

.method public c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/m;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/g;I)Lcom/google/android/exoplayer2/upstream/g;

    move-result-object v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/m;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J

    move-result-wide v4

    .line 92
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 95
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/m;->h:Lcom/google/android/exoplayer2/upstream/e;

    iget v2, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    int-to-long v2, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;-><init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a/m;->d()Lcom/google/android/exoplayer2/source/a/b;

    move-result-object v1

    .line 97
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/a/b;->a(J)V

    .line 98
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer2/source/a/m;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/a/b;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a/m;->k:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    move v2, v6

    .line 102
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 103
    iget v3, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    .line 104
    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v2

    goto :goto_0

    .line 106
    :cond_1
    iget v5, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    .line 107
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/a/m;->f:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/m;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    .line 111
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/source/a/m;->n:Z

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/m;->h:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Lcom/google/android/exoplayer2/upstream/e;)V

    throw v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/m;->l:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/m;->n:Z

    return v0
.end method
