.class final Lcom/google/android/exoplayer2/extractor/d/i;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field public final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 39
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/d/i;-><init>([BI)V

    .line 40
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->a:[B

    .line 50
    mul-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->b:I

    .line 51
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 14

    .prologue
    const/16 v12, 0xff

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/d/i;->b()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/i;->b:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 78
    if-nez p1, :cond_1

    .line 108
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 77
    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    if-eqz v0, :cond_6

    .line 84
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 85
    rsub-int/lit8 v2, v0, 0x8

    ushr-int v2, v12, v2

    .line 86
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->a:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    aget-byte v3, v3, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    ushr-int/2addr v3, v4

    and-int/2addr v2, v3

    .line 87
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    .line 88
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 89
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    .line 90
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    .line 94
    :cond_2
    :goto_2
    sub-int v3, p1, v0

    const/4 v4, 0x7

    if-le v3, v4, :cond_5

    .line 95
    sub-int v3, p1, v0

    div-int/lit8 v4, v3, 0x8

    move v13, v1

    move v1, v2

    move v2, v13

    .line 96
    :goto_3
    if-ge v2, v4, :cond_3

    .line 97
    int-to-long v6, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    aget-byte v1, v1, v3

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    long-to-int v3, v6

    .line 98
    add-int/lit8 v0, v0, 0x8

    .line 96
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_3
    move v13, v0

    move v0, v1

    move v1, v13

    .line 102
    :goto_4
    if-le p1, v1, :cond_4

    .line 103
    sub-int v2, p1, v1

    .line 104
    rsub-int/lit8 v3, v2, 0x8

    ushr-int v3, v12, v3

    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d/i;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    .line 106
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    :cond_4
    move v1, v0

    .line 108
    goto :goto_1

    :cond_5
    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/d/i;->a(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/d/i;->b()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/i;->b:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->c:I

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/i;->d:I

    .line 124
    :cond_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
