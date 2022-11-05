.class public final Lcom/google/android/exoplayer2/util/c;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/c;->a:[B

    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/c;->b:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/util/c;->c:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private static a([BI)I
    .locals 3

    .prologue
    .line 222
    array-length v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v1, v1

    sub-int v1, v0, v1

    move v0, p1

    .line 223
    :goto_0
    if-gt v0, v1, :cond_1

    .line 224
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/c;->b([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_1
    return v0

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a([B)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x4

    .line 88
    new-instance v4, Lcom/google/android/exoplayer2/util/k;

    invoke-direct {v4, p0}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    .line 89
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 90
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 92
    const/16 v0, 0xf

    if-ne v3, v0, :cond_1

    .line 93
    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 98
    :goto_0
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 99
    if-eq v5, v8, :cond_0

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_6

    .line 105
    :cond_0
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 106
    const/16 v0, 0xf

    if-ne v5, v0, :cond_3

    .line 107
    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 112
    :goto_1
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 113
    const/16 v6, 0x16

    if-ne v5, v6, :cond_6

    .line 115
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    move v10, v3

    move v3, v0

    move v0, v10

    .line 118
    :goto_2
    sget-object v4, Lcom/google/android/exoplayer2/util/c;->c:[I

    aget v0, v4, v0

    .line 119
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    :goto_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 95
    :cond_1
    if-ge v3, v9, :cond_2

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 96
    sget-object v0, Lcom/google/android/exoplayer2/util/c;->b:[I

    aget v0, v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 95
    goto :goto_4

    .line 109
    :cond_3
    if-ge v5, v9, :cond_4

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 110
    sget-object v0, Lcom/google/android/exoplayer2/util/c;->b:[I

    aget v0, v0, v5

    goto :goto_1

    :cond_4
    move v0, v2

    .line 109
    goto :goto_5

    :cond_5
    move v1, v2

    .line 119
    goto :goto_3

    :cond_6
    move v10, v3

    move v3, v0

    move v0, v10

    goto :goto_2
.end method

.method public static a(II)[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 131
    move v0, v1

    move v2, v3

    .line 132
    :goto_0
    sget-object v4, Lcom/google/android/exoplayer2/util/c;->b:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 133
    sget-object v4, Lcom/google/android/exoplayer2/util/c;->b:[I

    aget v4, v4, v0

    if-ne p0, v4, :cond_0

    move v2, v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 138
    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/util/c;->c:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 139
    sget-object v4, Lcom/google/android/exoplayer2/util/c;->c:[I

    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    move v0, v1

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    if-eq p0, v3, :cond_4

    if-ne v0, v3, :cond_5

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_5
    const/4 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/c;->a(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(III)[B
    .locals 4

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 161
    const/4 v1, 0x0

    shl-int/lit8 v2, p0, 0x3

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v3, p1, 0x1

    and-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v0, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    .line 176
    sget-object v1, Lcom/google/android/exoplayer2/util/c;->a:[B

    sget-object v2, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    sget-object v1, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v1, v1

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    return-object v0
.end method

.method private static b([BI)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 239
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v2, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v2, v2

    if-gt v0, v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 242
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 243
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    sget-object v3, Lcom/google/android/exoplayer2/util/c;->a:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b([B)[[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/c;->b([BI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 211
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 200
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v2, Lcom/google/android/exoplayer2/util/c;->a:[B

    array-length v2, v2

    add-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/c;->a([BI)I

    move-result v0

    .line 202
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 203
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[B

    move v2, v1

    .line 204
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 205
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 206
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    :goto_2
    sub-int/2addr v0, v5

    new-array v0, v0, [B

    .line 208
    array-length v6, v0

    invoke-static {p0, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    aput-object v0, v3, v2

    .line 204
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 206
    :cond_2
    array-length v0, p0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 211
    goto :goto_0
.end method
