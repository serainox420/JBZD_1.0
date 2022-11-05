.class public final Lcom/google/android/exoplayer2/extractor/k;
.super Ljava/lang/Object;
.source "MpegAudioHeader.java"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0xe

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->h:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->i:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->j:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->k:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->l:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->m:[I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer2/extractor/k;->n:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 41
    :array_3
    .array-data 4
        0x20
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
    .end array-data

    .line 43
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
    .end array-data

    .line 45
    :array_5
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v2, -0x200000

    const/4 v6, 0x3

    const/4 v0, -0x1

    .line 53
    and-int v1, p0, v2

    if-eq v1, v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    ushr-int/lit8 v1, p0, 0x13

    and-int/lit8 v3, v1, 0x3

    .line 58
    if-eq v3, v7, :cond_0

    .line 62
    ushr-int/lit8 v1, p0, 0x11

    and-int/lit8 v4, v1, 0x3

    .line 63
    if-eqz v4, :cond_0

    .line 67
    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    .line 68
    if-eqz v1, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 73
    ushr-int/lit8 v2, p0, 0xa

    and-int/lit8 v2, v2, 0x3

    .line 74
    if-eq v2, v6, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->i:[I

    aget v0, v0, v2

    .line 79
    if-ne v3, v8, :cond_2

    .line 81
    div-int/lit8 v0, v0, 0x2

    move v2, v0

    .line 88
    :goto_1
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v5, v0, 0x1

    .line 89
    if-ne v4, v6, :cond_4

    .line 91
    if-ne v3, v6, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->j:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 92
    :goto_2
    mul-int/lit16 v0, v0, 0x2ee0

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 82
    :cond_2
    if-nez v3, :cond_9

    .line 84
    div-int/lit8 v0, v0, 0x4

    move v2, v0

    goto :goto_1

    .line 91
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->k:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_2

    .line 95
    :cond_4
    if-ne v3, v6, :cond_6

    .line 96
    if-ne v4, v8, :cond_5

    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->l:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_3
    move v1, v0

    .line 103
    :goto_4
    if-ne v3, v6, :cond_7

    .line 105
    const v0, 0x23280

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    goto :goto_0

    .line 96
    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->m:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_3

    .line 99
    :cond_6
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->n:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    move v1, v0

    goto :goto_4

    .line 108
    :cond_7
    if-ne v4, v7, :cond_8

    const v0, 0x11940

    :goto_5
    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    goto :goto_0

    :cond_8
    const v0, 0x23280

    goto :goto_5

    :cond_9
    move v2, v0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;IIIII)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/k;->a:I

    .line 202
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/k;->b:Ljava/lang/String;

    .line 203
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/k;->c:I

    .line 204
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/k;->d:I

    .line 205
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/k;->e:I

    .line 206
    iput p6, p0, Lcom/google/android/exoplayer2/extractor/k;->f:I

    .line 207
    iput p7, p0, Lcom/google/android/exoplayer2/extractor/k;->g:I

    .line 208
    return-void
.end method

.method public static a(ILcom/google/android/exoplayer2/extractor/k;)Z
    .locals 10

    .prologue
    const/high16 v2, -0x200000

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 121
    and-int v1, p0, v2

    if-eq v1, v2, :cond_0

    move v8, v0

    .line 181
    :goto_0
    return v8

    .line 125
    :cond_0
    ushr-int/lit8 v1, p0, 0x13

    and-int/lit8 v1, v1, 0x3

    .line 126
    if-ne v1, v8, :cond_1

    move v8, v0

    .line 127
    goto :goto_0

    .line 130
    :cond_1
    ushr-int/lit8 v2, p0, 0x11

    and-int/lit8 v6, v2, 0x3

    .line 131
    if-nez v6, :cond_2

    move v8, v0

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 136
    if-eqz v2, :cond_3

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    :cond_3
    move v8, v0

    .line 138
    goto :goto_0

    .line 141
    :cond_4
    ushr-int/lit8 v3, p0, 0xa

    and-int/lit8 v3, v3, 0x3

    .line 142
    if-ne v3, v9, :cond_5

    move v8, v0

    .line 143
    goto :goto_0

    .line 146
    :cond_5
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->i:[I

    aget v4, v0, v3

    .line 147
    if-ne v1, v5, :cond_8

    .line 149
    div-int/lit8 v4, v4, 0x2

    .line 155
    :cond_6
    :goto_1
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v3, v0, 0x1

    .line 157
    if-ne v6, v9, :cond_a

    .line 159
    if-ne v1, v9, :cond_9

    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->j:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 160
    :goto_2
    mul-int/lit16 v2, v0, 0x2ee0

    div-int/2addr v2, v4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x4

    .line 161
    const/16 v7, 0x180

    .line 177
    :goto_3
    sget-object v2, Lcom/google/android/exoplayer2/extractor/k;->h:[Ljava/lang/String;

    rsub-int/lit8 v6, v6, 0x3

    aget-object v2, v2, v6

    .line 178
    shr-int/lit8 v6, p0, 0x6

    and-int/lit8 v6, v6, 0x3

    if-ne v6, v9, :cond_7

    move v5, v8

    .line 179
    :cond_7
    mul-int/lit16 v6, v0, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/k;->a(ILjava/lang/String;IIIII)V

    goto :goto_0

    .line 150
    :cond_8
    if-nez v1, :cond_6

    .line 152
    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 159
    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->k:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    goto :goto_2

    .line 164
    :cond_a
    if-ne v1, v9, :cond_c

    .line 166
    if-ne v6, v5, :cond_b

    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->l:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 167
    :goto_4
    const/16 v7, 0x480

    .line 168
    const v2, 0x23280

    mul-int/2addr v2, v0

    div-int/2addr v2, v4

    add-int/2addr v3, v2

    goto :goto_3

    .line 166
    :cond_b
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->m:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    goto :goto_4

    .line 171
    :cond_c
    sget-object v0, Lcom/google/android/exoplayer2/extractor/k;->n:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    .line 172
    if-ne v6, v8, :cond_d

    const/16 v7, 0x240

    .line 173
    :goto_5
    if-ne v6, v8, :cond_e

    const v0, 0x11940

    :goto_6
    mul-int/2addr v0, v2

    div-int/2addr v0, v4

    add-int/2addr v3, v0

    move v0, v2

    goto :goto_3

    .line 172
    :cond_d
    const/16 v7, 0x480

    goto :goto_5

    .line 173
    :cond_e
    const v0, 0x23280

    goto :goto_6
.end method
