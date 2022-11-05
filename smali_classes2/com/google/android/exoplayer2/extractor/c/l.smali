.class final Lcom/google/android/exoplayer2/extractor/c/l;
.super Ljava/lang/Object;
.source "TrackFragment.java"


# instance fields
.field public a:Lcom/google/android/exoplayer2/extractor/c/c;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/android/exoplayer2/extractor/c/k;

.field public p:I

.field public q:Lcom/google/android/exoplayer2/util/l;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->e:I

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->s:J

    .line 117
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    .line 118
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->r:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    .line 120
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    .line 162
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->p:I

    .line 163
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    .line 164
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->r:Z

    .line 165
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 131
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->e:I

    .line 132
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->f:I

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 134
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->g:[J

    .line 135
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->i:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->i:[I

    array-length v0, v0

    if-ge v0, p2, :cond_3

    .line 140
    :cond_2
    mul-int/lit8 v0, p2, 0x7d

    div-int/lit8 v0, v0, 0x64

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->i:[I

    .line 142
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->j:[I

    .line 143
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->k:[J

    .line 144
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->l:[Z

    .line 145
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->n:[Z

    .line 147
    :cond_3
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->p:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 175
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->r:Z

    .line 176
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/l;->p:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 186
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->r:Z

    .line 187
    return-void
.end method

.method public b(I)J
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/l;->k:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/l;->j:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
