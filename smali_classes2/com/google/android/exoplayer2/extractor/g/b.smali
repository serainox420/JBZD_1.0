.class final Lcom/google/android/exoplayer2/extractor/g/b;
.super Ljava/lang/Object;
.source "WavHeader.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->a:I

    .line 45
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->b:I

    .line 46
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/g/b;->c:I

    .line 47
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    .line 48
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/g/b;->e:I

    .line 49
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/g/b;->f:I

    .line 50
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->h:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 55
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 7

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->c:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 82
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 83
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->h:J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->g:J

    .line 99
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/g/b;->h:J

    .line 100
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->d:I

    return v0
.end method

.method public b(J)J
    .locals 5

    .prologue
    .line 88
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/g/b;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/b;->a:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->a:I

    return v0
.end method

.method public f()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/g/b;->f:I

    return v0
.end method
