.class final Lcom/google/android/exoplayer2/extractor/flv/d;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# instance fields
.field private final b:Lcom/google/android/exoplayer2/util/l;

.field private final c:Lcom/google/android/exoplayer2/util/l;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/n;)V

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    sget-object v1, Lcom/google/android/exoplayer2/util/j;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/l;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/l;

    .line 59
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/util/l;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->j()I

    move-result v1

    .line 83
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, p2

    .line 85
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    if-nez v1, :cond_1

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    .line 87
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 88
    invoke-static {v0}, Lcom/google/android/exoplayer2/c/a;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/c/a;

    move-result-object v10

    .line 89
    iget v0, v10, Lcom/google/android/exoplayer2/c/a;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    .line 91
    const/4 v0, 0x0

    const-string v1, "video/avc"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    iget v5, v10, Lcom/google/android/exoplayer2/c/a;->c:I

    iget v6, v10, Lcom/google/android/exoplayer2/c/a;->d:I

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v8, v10, Lcom/google/android/exoplayer2/c/a;->a:Ljava/util/List;

    const/4 v9, -0x1

    iget v10, v10, Lcom/google/android/exoplayer2/c/a;->e:F

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->e:Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 101
    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 102
    const/4 v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 103
    const/4 v1, 0x2

    const/4 v4, 0x0

    aput-byte v4, v0, v1

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    rsub-int/lit8 v0, v0, 0x4

    .line 108
    const/4 v5, 0x0

    .line 110
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    if-lez v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->d:I

    invoke-virtual {p1, v1, v0, v4}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/l;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    .line 117
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/l;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 118
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->b:Lcom/google/android/exoplayer2/util/l;

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 119
    add-int/lit8 v4, v5, 0x4

    .line 122
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v5, p1, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 123
    add-int v5, v4, v1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->a:Lcom/google/android/exoplayer2/extractor/n;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method protected a(Lcom/google/android/exoplayer2/util/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 69
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 70
    and-int/lit8 v0, v0, 0xf

    .line 72
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 73
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->f:I

    .line 76
    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
