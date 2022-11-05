.class public final Lcom/google/android/exoplayer2/util/j;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/j$a;,
        Lcom/google/android/exoplayer2/util/j$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/j;->a:[B

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/util/j;->b:[F

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/j;->c:Ljava/lang/Object;

    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/util/j;->d:[I

    return-void

    .line 81
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 86
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BI)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 130
    sget-object v4, Lcom/google/android/exoplayer2/util/j;->c:Ljava/lang/Object;

    monitor-enter v4

    move v3, v0

    move v1, v0

    .line 133
    :goto_0
    if-ge v1, p1, :cond_1

    .line 134
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/util/j;->c([BII)I

    move-result v2

    .line 135
    if-ge v2, p1, :cond_3

    .line 136
    sget-object v1, Lcom/google/android/exoplayer2/util/j;->d:[I

    array-length v1, v1

    if-gt v1, v3, :cond_0

    .line 138
    sget-object v1, Lcom/google/android/exoplayer2/util/j;->d:[I

    sget-object v5, Lcom/google/android/exoplayer2/util/j;->d:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/util/j;->d:[I

    .line 141
    :cond_0
    sget-object v5, Lcom/google/android/exoplayer2/util/j;->d:[I

    add-int/lit8 v1, v3, 0x1

    aput v2, v5, v3

    .line 142
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    move v1, v2

    goto :goto_0

    .line 146
    :cond_1
    sub-int v5, p1, v3

    move v1, v0

    move v2, v0

    .line 149
    :goto_1
    if-ge v0, v3, :cond_2

    .line 150
    sget-object v6, Lcom/google/android/exoplayer2/util/j;->d:[I

    aget v6, v6, v0

    .line 151
    sub-int/2addr v6, v2

    .line 152
    invoke-static {p0, v2, p0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    add-int/2addr v1, v6

    .line 154
    add-int/lit8 v7, v1, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v1

    .line 155
    add-int/lit8 v1, v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v7

    .line 156
    add-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_2
    sub-int v0, v5, v1

    .line 160
    invoke-static {p0, v2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    monitor-exit v4

    return v5

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static a([BII[Z)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    sub-int v3, p2, p1

    .line 401
    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 402
    if-nez v3, :cond_2

    .line 452
    :cond_0
    :goto_1
    return p2

    :cond_1
    move v0, v2

    .line 401
    goto :goto_0

    .line 406
    :cond_2
    if-eqz p3, :cond_5

    .line 407
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_3

    .line 408
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 409
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 410
    :cond_3
    if-le v3, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_4

    .line 411
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 412
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 413
    :cond_4
    if-le v3, v6, :cond_5

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_5

    .line 415
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 416
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 420
    :cond_5
    add-int/lit8 v4, p2, -0x1

    .line 423
    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v4, :cond_9

    .line 424
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_6

    .line 423
    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 427
    :cond_6
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    aget-byte v5, p0, v0

    if-ne v5, v1, :cond_8

    .line 428
    if-eqz p3, :cond_7

    .line 429
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 431
    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 435
    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 439
    :cond_9
    if-eqz p3, :cond_0

    .line 441
    if-le v3, v6, :cond_b

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_4
    aput-boolean v0, p3, v2

    .line 446
    if-le v3, v1, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    aput-boolean v0, p3, v1

    .line 449
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    :goto_6
    aput-boolean v1, p3, v6

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 441
    goto :goto_4

    :cond_b
    if-ne v3, v6, :cond_d

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_4

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v2

    .line 446
    goto :goto_5

    :cond_10
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_12
    move v1, v2

    .line 449
    goto :goto_6
.end method

.method public static a([BII)Lcom/google/android/exoplayer2/util/j$b;
    .locals 22

    .prologue
    .line 251
    new-instance v16, Lcom/google/android/exoplayer2/util/m;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/m;-><init>([BII)V

    .line 252
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 253
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v7

    .line 254
    const/16 v4, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 255
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v5

    .line 257
    const/4 v6, 0x1

    .line 258
    const/4 v4, 0x0

    .line 259
    const/16 v8, 0x64

    if-eq v7, v8, :cond_0

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    const/16 v8, 0xf4

    if-eq v7, v8, :cond_0

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_0

    const/16 v8, 0x53

    if-eq v7, v8, :cond_0

    const/16 v8, 0x56

    if-eq v7, v8, :cond_0

    const/16 v8, 0x76

    if-eq v7, v8, :cond_0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_0

    const/16 v8, 0x8a

    if-ne v7, v8, :cond_14

    .line 262
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v8

    .line 263
    const/4 v6, 0x3

    if-ne v8, v6, :cond_1

    .line 264
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v4

    .line 266
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 267
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 268
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 269
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v6

    .line 270
    if-eqz v6, :cond_5

    .line 271
    const/4 v6, 0x3

    if-eq v8, v6, :cond_3

    const/16 v6, 0x8

    .line 272
    :goto_0
    const/4 v7, 0x0

    move v9, v7

    :goto_1
    if-ge v9, v6, :cond_5

    .line 273
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v7

    .line 274
    if-eqz v7, :cond_2

    .line 275
    const/4 v7, 0x6

    if-ge v9, v7, :cond_4

    const/16 v7, 0x10

    :goto_2
    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/j;->a(Lcom/google/android/exoplayer2/util/m;I)V

    .line 272
    :cond_2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_1

    .line 271
    :cond_3
    const/16 v6, 0xc

    goto :goto_0

    .line 275
    :cond_4
    const/16 v7, 0x40

    goto :goto_2

    :cond_5
    move v9, v4

    move v4, v8

    .line 281
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    add-int/lit8 v11, v6, 0x4

    .line 282
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v12

    .line 283
    const/4 v13, 0x0

    .line 284
    const/4 v14, 0x0

    .line 285
    if-nez v12, :cond_9

    .line 287
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    add-int/lit8 v13, v6, 0x4

    .line 297
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 298
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 300
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 301
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    .line 302
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v10

    .line 303
    if-eqz v10, :cond_a

    const/4 v6, 0x1

    :goto_4
    rsub-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, v8

    .line 304
    if-nez v10, :cond_7

    .line 305
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 308
    :cond_7
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 309
    mul-int/lit8 v8, v7, 0x10

    .line 310
    mul-int/lit8 v7, v6, 0x10

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v6

    .line 312
    if-eqz v6, :cond_13

    .line 313
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v17

    .line 314
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v18

    .line 315
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v19

    .line 316
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v20

    .line 319
    if-nez v4, :cond_c

    .line 320
    const/4 v6, 0x1

    .line 321
    if-eqz v10, :cond_b

    const/4 v4, 0x1

    :goto_5
    rsub-int/lit8 v4, v4, 0x2

    .line 328
    :goto_6
    add-int v15, v17, v18

    mul-int/2addr v6, v15

    sub-int v6, v8, v6

    .line 329
    add-int v8, v19, v20

    mul-int/2addr v4, v8

    sub-int/2addr v7, v4

    .line 332
    :goto_7
    const/high16 v4, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v8

    .line 334
    if-eqz v8, :cond_12

    .line 335
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v8

    .line 336
    if-eqz v8, :cond_12

    .line 337
    const/16 v8, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v8

    .line 338
    const/16 v15, 0xff

    if-ne v8, v15, :cond_10

    .line 339
    const/16 v8, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v8

    .line 340
    const/16 v15, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v15

    .line 341
    if-eqz v8, :cond_8

    if-eqz v15, :cond_8

    .line 342
    int-to-float v4, v8

    int-to-float v8, v15

    div-float/2addr v4, v8

    :cond_8
    move v8, v4

    .line 352
    :goto_8
    new-instance v4, Lcom/google/android/exoplayer2/util/j$b;

    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/util/j$b;-><init>(IIIFZZIIIZ)V

    return-object v4

    .line 288
    :cond_9
    const/4 v6, 0x1

    if-ne v12, v6, :cond_6

    .line 289
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v14

    .line 290
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->d()I

    .line 291
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->d()I

    .line 292
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 293
    const/4 v6, 0x0

    :goto_9
    int-to-long v0, v6

    move-wide/from16 v20, v0

    cmp-long v7, v20, v18

    if-gez v7, :cond_6

    .line 294
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 293
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 303
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 321
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 323
    :cond_c
    const/4 v6, 0x3

    if-ne v4, v6, :cond_d

    const/4 v6, 0x1

    .line 324
    :goto_a
    const/4 v15, 0x1

    if-ne v4, v15, :cond_e

    const/4 v4, 0x2

    move v15, v4

    .line 326
    :goto_b
    if-eqz v10, :cond_f

    const/4 v4, 0x1

    :goto_c
    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v15

    goto :goto_6

    .line 323
    :cond_d
    const/4 v6, 0x2

    goto :goto_a

    .line 324
    :cond_e
    const/4 v4, 0x1

    move v15, v4

    goto :goto_b

    .line 326
    :cond_f
    const/4 v4, 0x0

    goto :goto_c

    .line 344
    :cond_10
    sget-object v15, Lcom/google/android/exoplayer2/util/j;->b:[F

    array-length v15, v15

    if-ge v8, v15, :cond_11

    .line 345
    sget-object v4, Lcom/google/android/exoplayer2/util/j;->b:[F

    aget v4, v4, v8

    move v8, v4

    goto :goto_8

    .line 347
    :cond_11
    const-string v15, "NalUnitUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v8, v4

    goto :goto_8

    :cond_13
    move v6, v8

    goto/16 :goto_7

    :cond_14
    move v9, v4

    move v4, v6

    goto/16 :goto_3
.end method

.method private static a(Lcom/google/android/exoplayer2/util/m;I)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 476
    .line 478
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 479
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->d()I

    move-result v1

    .line 481
    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    .line 483
    :cond_0
    if-nez v1, :cond_1

    .line 478
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 483
    goto :goto_1

    .line 485
    :cond_2
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 178
    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    .line 179
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 180
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 181
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 186
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 200
    :goto_1
    return-void

    .line 190
    :cond_0
    if-nez v4, :cond_1

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 193
    :cond_1
    if-eqz v4, :cond_2

    move v0, v1

    .line 196
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 197
    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static a([Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    aput-boolean v1, p0, v1

    .line 462
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 463
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 464
    return-void
.end method

.method public static a(Ljava/lang/String;B)Z
    .locals 2

    .prologue
    .line 211
    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "video/hevc"

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x7e

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([BI)I
    .locals 1

    .prologue
    .line 226
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static b([BII)Lcom/google/android/exoplayer2/util/j$a;
    .locals 4

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/exoplayer2/util/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/m;-><init>([BII)V

    .line 368
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 369
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v1

    .line 370
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v2

    .line 371
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 372
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v0

    .line 373
    new-instance v3, Lcom/google/android/exoplayer2/util/j$a;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer2/util/j$a;-><init>(IIZ)V

    return-object v3
.end method

.method public static c([BI)I
    .locals 1

    .prologue
    .line 238
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c([BII)I
    .locals 3

    .prologue
    .line 467
    move v0, p1

    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_0

    .line 468
    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move p2, v0

    .line 472
    :cond_0
    return p2

    .line 467
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
