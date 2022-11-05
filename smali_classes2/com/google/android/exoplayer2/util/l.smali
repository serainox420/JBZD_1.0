.class public final Lcom/google/android/exoplayer2/util/l;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 44
    iput p1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 54
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 55
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 65
    iput p2, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 66
    return-void
.end method


# virtual methods
.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 435
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 436
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 95
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 96
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->e()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 76
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/k;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/k;->a:[B

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 169
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)V

    .line 170
    return-void
.end method

.method public a([BI)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 86
    iput p2, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 88
    return-void
.end method

.method public a([BII)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 183
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 118
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 119
    iput p1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 145
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 146
    iput p1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 158
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/l;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    const-string v0, ""

    .line 457
    :goto_0
    return-object v0

    .line 451
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 452
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    .line 453
    add-int/lit8 v0, p1, -0x1

    .line 455
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 456
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    move-object v0, v1

    .line 457
    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1
.end method

.method public g()I
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public i()S
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public j()I
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public k()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public l()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public m()I
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public o()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public p()J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public q()I
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 342
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 343
    return v0
.end method

.method public r()I
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v3

    .line 359
    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public s()I
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 369
    if-gez v0, :cond_0

    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_0
    return v0
.end method

.method public t()I
    .locals 4

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->n()I

    move-result v0

    .line 383
    if-gez v0, :cond_0

    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    return v0
.end method

.method public u()J
    .locals 5

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v0

    .line 396
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 397
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_0
    return-wide v0
.end method

.method public v()D
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public w()Ljava/lang/String;
    .locals 5

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    .line 470
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 471
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 475
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 476
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ge v0, v2, :cond_2

    .line 477
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    :cond_2
    move-object v0, v1

    .line 479
    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 5

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 519
    :goto_0
    return-object v0

    .line 496
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 497
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    sub-int v1, v0, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v1, v1, v2

    const/16 v2, -0x11

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    const/16 v2, -0x45

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, -0x41

    if-ne v1, v2, :cond_2

    .line 503
    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 505
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 506
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 507
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ne v0, v2, :cond_3

    move-object v0, v1

    .line 508
    goto :goto_0

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    .line 511
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 512
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-ne v0, v2, :cond_4

    move-object v0, v1

    .line 513
    goto :goto_0

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_5

    .line 517
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    :cond_5
    move-object v0, v1

    .line 519
    goto/16 :goto_0
.end method

.method public y()J
    .locals 11

    .prologue
    const/4 v5, 0x7

    const/4 v10, 0x6

    const/4 v0, 0x1

    .line 529
    const/4 v1, 0x0

    .line 530
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    move v4, v5

    .line 532
    :goto_0
    if-ltz v4, :cond_0

    .line 533
    shl-int v6, v0, v4

    int-to-long v6, v6

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 534
    if-ge v4, v10, :cond_1

    .line 535
    shl-int v1, v0, v4

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v1

    and-long/2addr v2, v6

    .line 536
    rsub-int/lit8 v1, v4, 0x7

    .line 543
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 544
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1
    if-ne v4, v5, :cond_0

    move v1, v0

    .line 538
    goto :goto_1

    .line 532
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 551
    :cond_3
    shl-long/2addr v2, v10

    and-int/lit8 v4, v4, 0x3f

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 546
    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-ge v0, v1, :cond_5

    .line 547
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    .line 548
    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_3

    .line 549
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 554
    return-wide v2
.end method
