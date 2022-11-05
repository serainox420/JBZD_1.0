.class public final Lcom/google/android/exoplayer2/audio/f;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/f;->a:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/f;->b:[I

    .line 44
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/f;->c:[I

    return-void

    .line 32
    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    .line 38
    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    .line 44
    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 97
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    .line 98
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    .line 99
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static a([B)I
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    .line 61
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 62
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 63
    sget-object v3, Lcom/google/android/exoplayer2/audio/f;->a:[I

    aget v1, v3, v1

    .line 64
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 65
    sget-object v5, Lcom/google/android/exoplayer2/audio/f;->b:[I

    aget v6, v5, v3

    .line 66
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 67
    sget-object v5, Lcom/google/android/exoplayer2/audio/f;->c:[I

    array-length v5, v5

    if-lt v3, v5, :cond_0

    move v3, v4

    .line 69
    :goto_0
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 70
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int v5, v1, v0

    .line 71
    const-string v1, "audio/vnd.dts"

    move-object v0, p1

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    sget-object v5, Lcom/google/android/exoplayer2/audio/f;->c:[I

    aget v3, v5, v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    move v0, v9

    .line 70
    goto :goto_1
.end method

.method public static b([B)I
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0xc

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
