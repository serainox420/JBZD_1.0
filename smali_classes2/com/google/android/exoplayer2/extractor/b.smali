.class public final Lcom/google/android/exoplayer2/extractor/b;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/g;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/extractor/b;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 50
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/b;->d:J

    .line 51
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/b;->c:J

    .line 52
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    .line 53
    return-void
.end method

.method private a([BIIIZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 254
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    add-int v2, p2, p4

    sub-int v3, p3, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v1

    .line 258
    if-ne v1, v0, :cond_2

    .line 259
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 264
    :goto_0
    return v0

    .line 262
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 264
    :cond_2
    add-int v0, p4, v1

    goto :goto_0
.end method

.method private d([BII)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    if-nez v1, :cond_0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/b;->f(I)V

    move v0, v1

    .line 215
    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    add-int/2addr v0, p1

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/v;->a(III)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    .line 186
    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 196
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/b;->f(I)V

    .line 197
    return v0
.end method

.method private f(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    .line 225
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    .line 227
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    array-length v2, v2

    const/high16 v3, 0x80000

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 228
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    invoke-static {v1, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    .line 232
    return-void
.end method

.method private g(I)V
    .locals 4

    .prologue
    .line 273
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 274
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b;->d:J

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/b;->e(I)I

    move-result v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    sget-object v1, Lcom/google/android/exoplayer2/extractor/b;->a:[B

    sget-object v0, Lcom/google/android/exoplayer2/extractor/b;->a:[B

    array-length v0, v0

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIIZ)I

    move-result v0

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/b;->g(I)V

    .line 90
    return v0
.end method

.method public a([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/b;->d([BII)I

    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIIZ)I

    move-result v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/b;->g(I)V

    .line 62
    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    .line 151
    return-void
.end method

.method public a(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/b;->e(I)I

    move-result v4

    .line 97
    :goto_0
    if-ge v4, p1, :cond_0

    if-eq v4, v6, :cond_0

    .line 98
    sget-object v1, Lcom/google/android/exoplayer2/extractor/b;->a:[B

    neg-int v2, v4

    sget-object v0, Lcom/google/android/exoplayer2/extractor/b;->a:[B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 99
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v5, p2

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/b;->g(I)V

    .line 102
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/b;->d([BII)I

    move-result v4

    .line 69
    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/b;->g(I)V

    .line 73
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()J
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b;->d:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/b;->a(IZ)Z

    .line 108
    return-void
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIZ)Z

    .line 80
    return-void
.end method

.method public b(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/b;->d(I)V

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 131
    :cond_0
    if-ge v4, p1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/b;->a([BIIIZ)I

    move-result v4

    .line 134
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 138
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/b;->g:I

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/b;->b(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/b;->e:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/b;->f:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b;->d:J

    return-wide v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/b;->b(IZ)Z

    .line 146
    return-void
.end method

.method public c([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/b;->b([BIIZ)Z

    .line 124
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b;->c:J

    return-wide v0
.end method
