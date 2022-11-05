.class public final Lcom/google/android/exoplayer2/util/m;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/m;->a([BII)V

    .line 40
    return-void
.end method

.method private d(I)Z
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    add-int/lit8 v1, p1, -0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    move v0, v1

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 225
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 64
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 65
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    rem-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    .line 66
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 67
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 68
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    if-gt v0, v1, :cond_2

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/m;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/m;->f()V

    .line 78
    return-void
.end method

.method public a([BII)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 52
    iput p3, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/m;->f()V

    .line 55
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 176
    iget v4, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 177
    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    move v0, v1

    .line 179
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ge v2, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    iget v6, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ne v2, v6, :cond_1

    move v2, v3

    .line 183
    :goto_1
    iput v4, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 184
    iput v5, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    .line 185
    if-nez v2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v3

    :cond_1
    move v2, v1

    .line 182
    goto :goto_1

    :cond_2
    move v3, v1

    .line 185
    goto :goto_2
.end method

.method public b(I)Z
    .locals 5

    .prologue
    .line 88
    iget v2, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    rem-int/lit8 v3, p1, 0x8

    add-int/2addr v0, v3

    .line 91
    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    add-int/lit8 v0, v0, -0x8

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-gt v1, v2, :cond_2

    iget v3, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ge v2, v3, :cond_2

    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/util/m;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    add-int/lit8 v1, v1, 0x2

    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-lt v2, v1, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->b:I

    if-ne v2, v1, :cond_4

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/m;->e()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return v0

    .line 128
    :cond_0
    div-int/lit8 v4, p1, 0x8

    move v3, v0

    move v2, v0

    .line 129
    :goto_1
    if-ge v3, v4, :cond_3

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/m;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x2

    .line 132
    :goto_2
    iget v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    shl-int/2addr v1, v5

    iget-object v5, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    rsub-int/lit8 v6, v6, 0x8

    ushr-int/2addr v5, v6

    or-int/2addr v1, v5

    .line 138
    :goto_3
    add-int/lit8 p1, p1, -0x8

    .line 139
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, p1

    or-int/2addr v2, v1

    .line 140
    iput v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 129
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 130
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    aget-byte v1, v1, v5

    goto :goto_3

    .line 144
    :cond_3
    if-lez p1, :cond_7

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    add-int v3, v0, p1

    .line 146
    const/16 v0, 0xff

    rsub-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    int-to-byte v4, v0

    .line 147
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/m;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 149
    :goto_4
    if-le v3, v7, :cond_6

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v3, -0x8

    shl-int/2addr v0, v5

    iget-object v5, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v3, 0x10

    shr-int/2addr v5, v6

    or-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    .line 153
    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    .line 162
    :cond_4
    :goto_5
    rem-int/lit8 v1, v3, 0x8

    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->d:I

    .line 165
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/m;->f()V

    goto/16 :goto_0

    .line 147
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_4

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->a:[B

    iget v5, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v5, v3, 0x8

    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    .line 157
    if-ne v3, v7, :cond_4

    .line 158
    iput v1, p0, Lcom/google/android/exoplayer2/util/m;->c:I

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6
.end method

.method public d()I
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/m;->e()I

    move-result v1

    .line 204
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
