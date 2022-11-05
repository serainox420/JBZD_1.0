.class public final Lcom/google/android/exoplayer2/extractor/f/j;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/f/r;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/extractor/n;

.field private d:Lcom/google/android/exoplayer2/extractor/f/j$a;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final h:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final i:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final j:Lcom/google/android/exoplayer2/extractor/f/m;

.field private final k:Lcom/google/android/exoplayer2/extractor/f/m;

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->f:[Z

    .line 77
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/m;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    .line 83
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/f/m;Lcom/google/android/exoplayer2/extractor/f/m;Lcom/google/android/exoplayer2/extractor/f/m;)Lcom/google/android/exoplayer2/Format;
    .locals 14

    .prologue
    .line 219
    iget v1, p1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    add-int/2addr v1, v2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    add-int/2addr v1, v2

    new-array v9, v1, [B

    .line 220
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v2, 0x0

    iget v3, p1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    add-int/2addr v3, v4

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    new-instance v4, Lcom/google/android/exoplayer2/util/m;

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/util/m;-><init>([BII)V

    .line 226
    const/16 v1, 0x2c

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 227
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v2

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 231
    const/16 v1, 0x58

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 232
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 233
    const/4 v3, 0x0

    .line 234
    const/4 v1, 0x0

    move v13, v1

    move v1, v3

    move v3, v13

    :goto_0
    if-ge v3, v2, :cond_2

    .line 235
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    add-int/lit8 v1, v1, 0x59

    .line 238
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    add-int/lit8 v1, v1, 0x8

    .line 234
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 243
    if-lez v2, :cond_3

    .line 244
    rsub-int/lit8 v1, v2, 0x8

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 247
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 248
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v5

    .line 249
    const/4 v1, 0x3

    if-ne v5, v1, :cond_4

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 252
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    .line 253
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v7

    .line 254
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v8

    .line 256
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v10

    .line 257
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v11

    .line 258
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v12

    .line 260
    const/4 v1, 0x1

    if-eq v5, v1, :cond_5

    const/4 v1, 0x2

    if-ne v5, v1, :cond_7

    :cond_5
    const/4 v1, 0x2

    move v3, v1

    .line 261
    :goto_1
    const/4 v1, 0x1

    if-ne v5, v1, :cond_8

    const/4 v1, 0x2

    .line 262
    :goto_2
    add-int v5, v8, v10

    mul-int/2addr v3, v5

    sub-int/2addr v6, v3

    .line 263
    add-int v3, v11, v12

    mul-int/2addr v1, v3

    sub-int/2addr v7, v1

    .line 265
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 266
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 267
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v3

    .line 269
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_3
    if-gt v1, v2, :cond_a

    .line 270
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 271
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 272
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 260
    :cond_7
    const/4 v1, 0x1

    move v3, v1

    goto :goto_1

    .line 261
    :cond_8
    const/4 v1, 0x1

    goto :goto_2

    :cond_9
    move v1, v2

    .line 269
    goto :goto_3

    .line 274
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 275
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 276
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 277
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 278
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 279
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 281
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    .line 282
    if-eqz v1, :cond_b

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 283
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Lcom/google/android/exoplayer2/util/m;)V

    .line 285
    :cond_b
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 286
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 288
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 289
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 290
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 291
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 294
    :cond_c
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/j;->b(Lcom/google/android/exoplayer2/util/m;)V

    .line 295
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 297
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 298
    add-int/lit8 v2, v3, 0x4

    .line 300
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 303
    :cond_d
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 304
    const/high16 v1, 0x3f800000    # 1.0f

    .line 305
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 306
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 307
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v2

    .line 308
    const/16 v3, 0xff

    if-ne v2, v3, :cond_f

    .line 309
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v2

    .line 310
    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/m;->c(I)I

    move-result v3

    .line 311
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 312
    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    :cond_e
    move v11, v1

    .line 322
    :goto_5
    const-string v2, "video/hevc"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    .line 324
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object v1, p0

    .line 322
    invoke-static/range {v1 .. v12}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    return-object v1

    .line 314
    :cond_f
    sget-object v3, Lcom/google/android/exoplayer2/util/j;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_10

    .line 315
    sget-object v1, Lcom/google/android/exoplayer2/util/j;->b:[F

    aget v1, v1, v2

    move v11, v1

    goto :goto_5

    .line 317
    :cond_10
    const-string v3, "H265Reader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v11, v1

    goto :goto_5
.end method

.method private a(JIIJ)V
    .locals 9

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->e:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->d:Lcom/google/android/exoplayer2/extractor/f/j$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a(JIIJ)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 172
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->a(I)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/m;)V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 331
    move v5, v3

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_5

    move v4, v3

    .line 332
    :goto_1
    const/4 v0, 0x6

    if-ge v4, v0, :cond_4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 332
    :cond_0
    if-ne v5, v1, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 337
    :cond_1
    const/16 v0, 0x40

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v6, v6, 0x4

    shl-int v6, v2, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 338
    if-le v5, v2, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->d()I

    :cond_2
    move v0, v3

    .line 342
    :goto_3
    if-ge v0, v6, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->d()I

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 332
    goto :goto_2

    .line 331
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 348
    :cond_5
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->e:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->d:Lcom/google/android/exoplayer2/extractor/f/j$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a([BII)V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 184
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/m;->a([BII)V

    goto :goto_0
.end method

.method private b(JIIJ)V
    .locals 7

    .prologue
    const/4 v5, 0x5

    .line 187
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->e:Z

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->d:Lcom/google/android/exoplayer2/extractor/f/j$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a(JI)V

    .line 198
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/j;->a([BI)I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/exoplayer2/extractor/f/r;->a(JLcom/google/android/exoplayer2/util/l;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/f/m;->b:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/j;->a([BI)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/f/m;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/exoplayer2/extractor/f/r;->a(JLcom/google/android/exoplayer2/util/l;)V

    .line 214
    :cond_2
    return-void

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/f/m;->b(I)Z

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->c:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/f/m;Lcom/google/android/exoplayer2/extractor/f/m;Lcom/google/android/exoplayer2/extractor/f/m;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->e:Z

    goto/16 :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/m;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v5

    move v4, v2

    move v0, v2

    move v1, v2

    .line 363
    :goto_0
    if-ge v4, v5, :cond_4

    .line 364
    if-eqz v4, :cond_5

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v1

    move v3, v1

    .line 367
    :goto_1
    if-eqz v3, :cond_1

    .line 368
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move v1, v2

    .line 370
    :goto_2
    if-gt v1, v0, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v6

    .line 377
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    move-result v7

    .line 378
    add-int v0, v6, v7

    move v1, v2

    .line 379
    :goto_3
    if-ge v1, v6, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 381
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    .line 383
    :goto_4
    if-ge v1, v7, :cond_3

    .line 384
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->c()I

    .line 385
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/util/m;->a(I)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 363
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    .line 389
    :cond_4
    return-void

    :cond_5
    move v3, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->f:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/j;->a([Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->g:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->h:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->i:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->j:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->k:Lcom/google/android/exoplayer2/extractor/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/m;->a()V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->d:Lcom/google/android/exoplayer2/extractor/f/j$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/f/j$a;->a()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->l:J

    .line 95
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->m:J

    .line 109
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 100
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->b:Ljava/lang/String;

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->c:Lcom/google/android/exoplayer2/extractor/n;

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/j$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->c:Lcom/google/android/exoplayer2/extractor/n;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/j$a;-><init>(Lcom/google/android/exoplayer2/extractor/n;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->d:Lcom/google/android/exoplayer2/extractor/f/j$a;

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/j;->a:Lcom/google/android/exoplayer2/extractor/f/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/r;->a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V

    .line 104
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 12

    .prologue
    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 115
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v8

    .line 116
    iget-object v9, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 119
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->l:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->l:J

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->c:Lcom/google/android/exoplayer2/extractor/n;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 123
    :goto_0
    if-ge v0, v8, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/j;->f:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/android/exoplayer2/util/j;->a([BII[Z)I

    move-result v10

    .line 126
    if-ne v10, v8, :cond_2

    .line 128
    invoke-direct {p0, v9, v0, v8}, Lcom/google/android/exoplayer2/extractor/f/j;->a([BII)V

    .line 155
    :cond_1
    return-void

    .line 133
    :cond_2
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/j;->c([BI)I

    move-result v11

    .line 137
    sub-int v1, v10, v0

    .line 138
    if-lez v1, :cond_3

    .line 139
    invoke-direct {p0, v9, v0, v10}, Lcom/google/android/exoplayer2/extractor/f/j;->a([BII)V

    .line 142
    :cond_3
    sub-int v4, v8, v10

    .line 143
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/f/j;->l:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 147
    if-gez v1, :cond_4

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/f/j;->m:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/f/j;->b(JIIJ)V

    .line 150
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/f/j;->m:J

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/f/j;->a(JIIJ)V

    .line 152
    add-int/lit8 v0, v10, 0x3

    .line 153
    goto :goto_0

    .line 147
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
