.class public final Lcom/google/android/exoplayer2/audio/a;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x3

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->a:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->b:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->c:[I

    .line 54
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->d:[I

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->e:[I

    .line 63
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->f:[I

    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    .line 54
    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 58
    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    .line 63
    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x600

    return v0
.end method

.method private static a(II)I
    .locals 3

    .prologue
    .line 234
    div-int/lit8 v0, p1, 0x2

    .line 235
    if-ltz p0, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->b:[I

    array-length v1, v1

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->f:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 238
    :cond_0
    const/4 v0, -0x1

    .line 248
    :goto_0
    return v0

    .line 240
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget v1, v1, p0

    .line 241
    const v2, 0xac44

    if-ne v1, v2, :cond_2

    .line 242
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->f:[I

    aget v0, v1, v0

    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 244
    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/audio/a;->e:[I

    aget v0, v2, v0

    .line 245
    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_3

    .line 246
    mul-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 248
    :cond_3
    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 229
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 230
    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    .line 229
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/a;->a:[I

    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static a([B)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 182
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 183
    const/4 v0, -0x1

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 186
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3f

    .line 187
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/a;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x2

    .line 128
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 130
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 131
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v5

    .line 132
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_0

    if-eq v5, v0, :cond_0

    .line 133
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 135
    :cond_0
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 138
    :cond_1
    if-ne v5, v6, :cond_2

    .line 139
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v6

    .line 142
    const-string v1, "audio/ac3"

    sget-object v7, Lcom/google/android/exoplayer2/audio/a;->d:[I

    aget v5, v7, v5

    if-eqz v6, :cond_3

    :goto_0
    add-int/2addr v5, v0

    sget-object v0, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget v6, v0, v4

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v9

    goto :goto_0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/l;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 78
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 79
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget v6, v1, v0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 81
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->d:[I

    and-int/lit8 v4, v0, 0x38

    shr-int/lit8 v4, v4, 0x3

    aget v5, v1, v4

    .line 82
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 85
    :cond_0
    const-string v1, "audio/ac3"

    const/4 v9, 0x0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)I
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static b(Lcom/google/android/exoplayer2/util/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x2

    .line 159
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 162
    if-ne v0, v4, :cond_0

    .line 163
    sget-object v0, Lcom/google/android/exoplayer2/audio/a;->c:[I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    aget v6, v0, v1

    .line 168
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v4

    .line 170
    const-string v1, "audio/eac3"

    sget-object v5, Lcom/google/android/exoplayer2/audio/a;->d:[I

    aget v5, v5, v0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v5, v0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 166
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget v6, v1, v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 170
    goto :goto_1
.end method

.method public static b(Lcom/google/android/exoplayer2/util/l;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 106
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->b:[I

    aget v6, v1, v0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 108
    sget-object v1, Lcom/google/android/exoplayer2/audio/a;->d:[I

    and-int/lit8 v4, v0, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v5, v1, v4

    .line 109
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 112
    :cond_0
    const-string v1, "audio/eac3"

    const/4 v9, 0x0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 215
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/a;->a:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method
