.class public Lcom/smartadserver/android/library/ui/a/a/b;
.super Ljava/lang/Object;
.source "SASGLSphere.java"


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:[Ljava/nio/ShortBuffer;

.field private c:[I

.field private d:I


# direct methods
.method public constructor <init>(IFFFFI)V
    .locals 16

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    add-int/lit8 v7, p1, 0x1

    .line 54
    mul-int v2, v7, v7

    .line 55
    const/16 v3, 0x7fff

    if-le v2, v3, :cond_0

    .line 57
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSlices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too big for vertex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    mul-int v3, p1, p1

    mul-int/lit8 v3, v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/smartadserver/android/library/ui/a/a/b;->d:I

    .line 60
    const v3, 0x40490fdb    # (float)Math.PI

    move/from16 v0, p1

    int-to-float v4, v0

    div-float v4, v3, v4

    .line 61
    const v3, 0x40c90fdb

    move/from16 v0, p1

    int-to-float v5, v0

    div-float v5, v3, v5

    .line 63
    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->a:Ljava/nio/FloatBuffer;

    .line 65
    move/from16 v0, p6

    new-array v2, v0, [Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    .line 66
    move/from16 v0, p6

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    .line 68
    move-object/from16 v0, p0

    iget v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->d:I

    div-int v2, v2, p6

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v2, 0x6

    .line 69
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v6, p6, -0x1

    if-ge v2, v6, :cond_1

    .line 70
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    aput v3, v6, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    add-int/lit8 v6, p6, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartadserver/android/library/ui/a/a/b;->d:I

    add-int/lit8 v9, p6, -0x1

    mul-int/2addr v3, v9

    sub-int v3, v8, v3

    aput v3, v2, v6

    .line 74
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    aget v6, v6, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_2
    mul-int/lit8 v2, v7, 0x5

    new-array v6, v2, [F

    .line 80
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_4

    .line 81
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_3

    .line 82
    mul-int/lit8 v8, v2, 0x5

    .line 83
    int-to-float v9, v3

    mul-float/2addr v9, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 84
    int-to-float v10, v2

    mul-float/2addr v10, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 85
    int-to-float v11, v3

    mul-float/2addr v11, v4

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v11, v12

    .line 86
    int-to-float v12, v2

    mul-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 88
    add-int/lit8 v13, v8, 0x0

    mul-float v14, p5, v9

    mul-float/2addr v10, v14

    add-float v10, v10, p2

    aput v10, v6, v13

    .line 89
    add-int/lit8 v10, v8, 0x1

    mul-float v9, v9, p5

    mul-float/2addr v9, v12

    add-float v9, v9, p3

    aput v9, v6, v10

    .line 90
    add-int/lit8 v9, v8, 0x2

    mul-float v10, p5, v11

    add-float v10, v10, p4

    aput v10, v6, v9

    .line 92
    add-int/lit8 v9, v8, 0x3

    int-to-float v10, v2

    move/from16 v0, p1

    int-to-float v11, v0

    div-float/2addr v10, v11

    aput v10, v6, v9

    .line 93
    add-int/lit8 v8, v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v3

    sub-float/2addr v9, v10

    move/from16 v0, p1

    int-to-float v10, v0

    div-float/2addr v9, v10

    aput v9, v6, v8

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 95
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->a:Ljava/nio/FloatBuffer;

    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v2, v6, v8, v9}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 80
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 97
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartadserver/android/library/ui/a/a/b;->a([I)I

    move-result v2

    new-array v8, v2, [S

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    const/4 v2, 0x0

    move v6, v2

    :goto_4
    move/from16 v0, p1

    if-ge v6, v0, :cond_7

    .line 101
    const/4 v2, 0x0

    move v15, v2

    move v2, v3

    move v3, v4

    move v4, v15

    :goto_5
    move/from16 v0, p1

    if-ge v4, v0, :cond_6

    .line 102
    add-int/lit8 v5, v6, 0x1

    .line 103
    add-int/lit8 v9, v4, 0x1

    .line 104
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    aget v10, v10, v2

    if-lt v3, v10, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    aget-object v3, v3, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    aget v11, v11, v2

    invoke-virtual {v3, v8, v10, v11}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 108
    const/4 v3, 0x0

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 111
    :cond_5
    add-int/lit8 v10, v3, 0x1

    mul-int v11, v6, v7

    add-int/2addr v11, v4

    int-to-short v11, v11

    aput-short v11, v8, v3

    .line 112
    add-int/lit8 v3, v10, 0x1

    mul-int v11, v5, v7

    add-int/2addr v11, v4

    int-to-short v11, v11

    aput-short v11, v8, v10

    .line 113
    add-int/lit8 v10, v3, 0x1

    mul-int v11, v5, v7

    add-int/2addr v11, v9

    int-to-short v11, v11

    aput-short v11, v8, v3

    .line 114
    add-int/lit8 v3, v10, 0x1

    mul-int v11, v6, v7

    add-int/2addr v11, v4

    int-to-short v11, v11

    aput-short v11, v8, v10

    .line 115
    add-int/lit8 v10, v3, 0x1

    mul-int/2addr v5, v7

    add-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, v8, v3

    .line 116
    add-int/lit8 v5, v10, 0x1

    mul-int v3, v6, v7

    add-int/2addr v3, v9

    int-to-short v3, v3

    aput-short v3, v8, v10

    .line 101
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_5

    .line 100
    :cond_6
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    move v3, v2

    goto :goto_4

    .line 119
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    aget v3, v5, v3

    invoke-virtual {v2, v8, v4, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/a/a/b;->a:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    const/4 v2, 0x0

    :goto_6
    move/from16 v0, p6

    if-ge v2, v0, :cond_8

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 124
    :cond_8
    return-void
.end method

.method private a([I)I
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 148
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 149
    aget v2, p1, v0

    if-le v2, v1, :cond_0

    aget v1, p1, v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v1
.end method


# virtual methods
.method public a()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a/b;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x14

    return v0
.end method

.method public c()[Ljava/nio/ShortBuffer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a/b;->b:[Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public d()[I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/a/b;->c:[I

    return-object v0
.end method
