.class public Lcom/pubmatic/sdk/banner/ui/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:[I

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastBitmap:[I

.field protected lastDispose:I

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->loopCount:I

    .line 74
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    .line 75
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    .line 76
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    .line 77
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastDispose:I

    .line 78
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    .line 79
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    .line 89
    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 23

    .prologue
    .line 280
    const/4 v15, -0x1

    .line 281
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iw:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ih:I

    mul-int v16, v1, v2

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    array-length v1, v1

    move/from16 v0, v16

    if-ge v1, v0, :cond_1

    .line 284
    :cond_0
    move/from16 v0, v16

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    .line 286
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->prefix:[S

    if-nez v1, :cond_2

    .line 287
    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->prefix:[S

    .line 289
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    if-nez v1, :cond_3

    .line 290
    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    if-nez v1, :cond_4

    .line 293
    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    .line 296
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v17

    .line 297
    const/4 v1, 0x1

    shl-int v18, v1, v17

    .line 298
    add-int/lit8 v19, v18, 0x1

    .line 299
    add-int/lit8 v11, v18, 0x2

    .line 301
    add-int/lit8 v3, v17, 0x1

    .line 302
    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    .line 303
    const/4 v1, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v1, v0, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->prefix:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_5
    const/4 v12, 0x0

    .line 309
    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v10, v15

    move v1, v12

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    .line 310
    if-nez v5, :cond_10

    .line 311
    if-ge v8, v3, :cond_9

    .line 313
    if-nez v2, :cond_8

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readBlock()I

    move-result v2

    .line 316
    if-gtz v2, :cond_7

    :cond_6
    move v1, v12

    .line 378
    :goto_2
    move/from16 v0, v16

    if-ge v1, v0, :cond_e

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 319
    :cond_7
    const/4 v1, 0x0

    .line 321
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    .line 322
    add-int/lit8 v8, v8, 0x8

    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    add-int/lit8 v2, v2, -0x1

    .line 325
    goto :goto_1

    .line 328
    :cond_9
    and-int v9, v7, v4

    .line 329
    shr-int/2addr v7, v3

    .line 330
    sub-int/2addr v8, v3

    .line 332
    if-gt v9, v11, :cond_6

    move/from16 v0, v19

    if-eq v9, v0, :cond_6

    .line 335
    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    .line 337
    add-int/lit8 v3, v17, 0x1

    .line 338
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 339
    add-int/lit8 v11, v18, 0x2

    move v10, v15

    .line 341
    goto :goto_1

    .line 343
    :cond_a
    if-ne v10, v15, :cond_b

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    .line 347
    goto :goto_1

    .line 350
    :cond_b
    if-ne v9, v11, :cond_f

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    move-object/from16 v20, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move v6, v10

    .line 354
    :goto_3
    move/from16 v0, v18

    if-le v6, v0, :cond_c

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v6

    aput-byte v21, v20, v13

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->prefix:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_3

    .line 358
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    .line 360
    const/16 v5, 0x1000

    if-ge v11, v5, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v20, v13

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->prefix:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->suffix:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    .line 366
    add-int/lit8 v10, v11, 0x1

    .line 367
    and-int v11, v10, v4

    if-nez v11, :cond_d

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_d

    .line 368
    add-int/lit8 v3, v3, 0x1

    .line 369
    add-int/2addr v4, v10

    :cond_d
    move/from16 v22, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v22

    .line 374
    :goto_4
    add-int/lit8 v11, v3, -0x1

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelStack:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v11

    aput-byte v20, v13, v12

    .line 376
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v22, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v22

    goto/16 :goto_1

    .line 381
    :cond_e
    return-void

    :cond_f
    move v13, v5

    move v6, v9

    goto/16 :goto_3

    :cond_10
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_4
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()[I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getFrame(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    .line 108
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;

    iget v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)[I
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    if-gtz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    rem-int v0, p1, v0

    .line 245
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;->image:[I

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->loopCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 395
    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    .line 396
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frames:Ljava/util/Vector;

    .line 397
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gct:[I

    .line 398
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lct:[I

    .line 399
    return-void
.end method

.method protected read()I
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 411
    :goto_0
    return v0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    const/4 v1, 0x1

    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->init()V

    .line 257
    if-eqz p1, :cond_1

    .line 258
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->in:Ljava/io/InputStream;

    .line 259
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readHeader()V

    .line 260
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readContents()V

    .line 262
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    if-gez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 270
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    return v0

    .line 267
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected readBitmap()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ix:I

    .line 565
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iy:I

    .line 566
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iw:I

    .line 567
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ih:I

    .line 568
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v3

    .line 569
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lctFlag:Z

    .line 570
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lctSize:I

    .line 574
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->interlace:Z

    .line 575
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_6

    .line 576
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lctSize:I

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lct:[I

    .line 577
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lct:[I

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    .line 585
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    iget v3, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transIndex:I

    aget v0, v0, v3

    .line 587
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    iget v4, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transIndex:I

    aput v2, v3, v4

    move v2, v0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    if-nez v0, :cond_2

    .line 590
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 610
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    .line 569
    goto :goto_0

    :cond_5
    move v0, v2

    .line 574
    goto :goto_1

    .line 579
    :cond_6
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    .line 580
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgIndex:I

    iget v3, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transIndex:I

    if-ne v0, v3, :cond_0

    .line 581
    iput v2, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgColor:I

    goto :goto_2

    .line 595
    :cond_7
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->decodeBitmapData()V

    .line 596
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->skip()V

    .line 597
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 600
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    .line 602
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->image:[I

    .line 603
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->setPixels()V

    .line 604
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v1, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->image:[I

    iget v4, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;-><init>([II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 606
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    if-eqz v0, :cond_8

    .line 607
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transIndex:I

    aput v2, v0, v1

    .line 609
    :cond_8
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->resetFrame()V

    goto :goto_3
.end method

.method protected readBlock()I
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    .line 421
    const/4 v0, 0x0

    .line 422
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    if-lez v1, :cond_1

    .line 425
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    iget v3, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 435
    :cond_0
    :goto_1
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    if-ge v0, v1, :cond_1

    .line 436
    const/4 v1, 0x1

    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 439
    :cond_1
    return v0

    .line 430
    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 450
    mul-int/lit8 v3, p1, 0x3

    .line 451
    const/4 v0, 0x0

    .line 452
    new-array v4, v3, [B

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 459
    :goto_0
    if-ge v1, v3, :cond_1

    .line 460
    const/4 v1, 0x1

    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 472
    :cond_0
    return-object v0

    .line 456
    :catch_0
    move-exception v1

    .line 457
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    .line 462
    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v2

    .line 465
    :goto_1
    if-ge v2, p1, :cond_0

    .line 466
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    .line 467
    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    .line 468
    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    .line 469
    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2

    move v2, v3

    .line 470
    goto :goto_1
.end method

.method protected readContents()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 480
    move v0, v3

    .line 481
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v2

    .line 483
    sparse-switch v2, :sswitch_data_0

    .line 520
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    goto :goto_0

    .line 485
    :sswitch_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readBitmap()V

    goto :goto_0

    .line 488
    :sswitch_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v2

    .line 489
    sparse-switch v2, :sswitch_data_1

    .line 512
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->skip()V

    goto :goto_0

    .line 491
    :sswitch_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 494
    :sswitch_3
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readBlock()I

    .line 495
    const-string v2, ""

    move-object v4, v2

    move v2, v3

    .line 496
    :goto_1
    const/16 v5, 0xb

    if-ge v2, v5, :cond_0

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 499
    :cond_0
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->skip()V

    goto :goto_0

    .line 506
    :sswitch_4
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->skip()V

    goto :goto_0

    .line 509
    :sswitch_5
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->skip()V

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 517
    goto :goto_0

    .line 523
    :cond_2
    return-void

    .line 483
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 489
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    .line 530
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v1

    .line 531
    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    .line 532
    iget v2, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 533
    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    .line 535
    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    .line 536
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    .line 537
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transIndex:I

    .line 538
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    .line 539
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 3

    .prologue
    .line 545
    const-string v1, ""

    .line 546
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->status:I

    .line 558
    :cond_1
    :goto_1
    return-void

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readLSD()V

    .line 554
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gct:[I

    .line 556
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gct:[I

    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readLSD()V
    .locals 2

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    .line 618
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->height:I

    .line 620
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v1

    .line 621
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gctFlag:Z

    .line 624
    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->gctSize:I

    .line 625
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgIndex:I

    .line 626
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixelAspect:I

    .line 627
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readBlock()I

    .line 635
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 637
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 638
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->block:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 639
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->loopCount:I

    .line 641
    :cond_1
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastDispose:I

    .line 657
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ix:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrx:I

    .line 658
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iy:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lry:I

    .line 659
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iw:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrw:I

    .line 660
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ih:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrh:I

    .line 661
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->image:[I

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBitmap:[I

    .line 662
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBgColor:I

    .line 663
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->dispose:I

    .line 664
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    .line 665
    iput v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->delay:I

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lct:[I

    .line 667
    return-void
.end method

.method protected setPixels()V
    .locals 14

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 148
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastDispose:I

    if-lez v1, :cond_3

    .line 149
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastDispose:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 151
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->frameCount:I

    add-int/lit8 v1, v1, -0x2

    .line 152
    if-lez v1, :cond_1

    .line 153
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->getFrame(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBitmap:[I

    .line 158
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBitmap:[I

    if-eqz v1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBitmap:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 161
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastDispose:I

    if-ne v1, v7, :cond_3

    .line 164
    iget-boolean v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->transparency:Z

    if-nez v1, :cond_a

    .line 165
    iget v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBgColor:I

    :goto_1
    move v3, v2

    .line 167
    :goto_2
    iget v4, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrh:I

    if-ge v3, v4, :cond_3

    .line 168
    iget v4, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lry:I

    add-int/2addr v4, v3

    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    mul-int/2addr v4, v8

    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrx:I

    add-int/2addr v4, v8

    .line 169
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lrw:I

    add-int/2addr v8, v4

    .line 170
    :goto_3
    if-ge v4, v8, :cond_2

    .line 171
    aput v1, v0, v4

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 155
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->lastBitmap:[I

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 179
    :cond_3
    const/16 v1, 0x8

    move v3, v1

    move v4, v5

    move v1, v2

    .line 181
    :goto_4
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ih:I

    if-ge v2, v8, :cond_8

    .line 183
    iget-boolean v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->interlace:Z

    if-eqz v8, :cond_9

    .line 184
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ih:I

    if-lt v1, v8, :cond_4

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 186
    packed-switch v4, :pswitch_data_0

    .line 203
    :cond_4
    :goto_5
    add-int v8, v1, v3

    move v13, v1

    move v1, v8

    move v8, v13

    .line 205
    :goto_6
    iget v9, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iy:I

    add-int/2addr v8, v9

    .line 206
    iget v9, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->height:I

    if-ge v8, v9, :cond_7

    .line 207
    iget v9, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    mul-int/2addr v9, v8

    .line 208
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->ix:I

    add-int v10, v9, v8

    .line 209
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iw:I

    add-int/2addr v8, v10

    .line 210
    iget v11, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    add-int/2addr v11, v9

    if-ge v11, v8, :cond_5

    .line 211
    iget v8, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->width:I

    add-int/2addr v8, v9

    .line 213
    :cond_5
    iget v9, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->iw:I

    mul-int/2addr v9, v2

    move v11, v10

    .line 214
    :goto_7
    if-ge v11, v8, :cond_7

    .line 216
    iget-object v12, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->pixels:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v12, v9

    and-int/lit16 v9, v9, 0xff

    .line 217
    iget-object v12, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->act:[I

    aget v9, v12, v9

    .line 218
    if-eqz v9, :cond_6

    .line 219
    aput v9, v0, v11

    .line 221
    :cond_6
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    move v9, v10

    .line 222
    goto :goto_7

    :pswitch_0
    move v1, v6

    .line 189
    goto :goto_5

    :pswitch_1
    move v1, v7

    move v3, v6

    .line 193
    goto :goto_5

    :pswitch_2
    move v1, v5

    move v3, v7

    .line 197
    goto :goto_5

    .line 181
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 225
    :cond_8
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->image:[I

    .line 226
    return-void

    :cond_9
    move v8, v2

    goto :goto_6

    :cond_a
    move v1, v2

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->readBlock()I

    .line 675
    iget v0, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    :cond_1
    return-void
.end method
