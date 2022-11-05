.class public Lcom/mopub/common/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFastGaussianBlurToBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 19

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 20
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 21
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v3, p1

    .line 23
    :goto_0
    const/4 v1, 0x1

    if-lt v3, v1, :cond_2

    move v5, v3

    .line 24
    :goto_1
    sub-int v1, v8, v3

    if-ge v5, v1, :cond_1

    move v1, v3

    .line 25
    :goto_2
    sub-int v6, v4, v3

    if-ge v1, v6, :cond_0

    .line 26
    sub-int v6, v5, v3

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    aget v6, v2, v6

    .line 27
    sub-int v7, v5, v3

    mul-int/2addr v7, v4

    add-int/2addr v7, v1

    add-int/2addr v7, v3

    aget v7, v2, v7

    .line 28
    sub-int v9, v5, v3

    mul-int/2addr v9, v4

    add-int/2addr v9, v1

    aget v9, v2, v9

    .line 29
    add-int v10, v5, v3

    mul-int/2addr v10, v4

    add-int/2addr v10, v1

    sub-int/2addr v10, v3

    aget v10, v2, v10

    .line 30
    add-int v11, v5, v3

    mul-int/2addr v11, v4

    add-int/2addr v11, v1

    add-int/2addr v11, v3

    aget v11, v2, v11

    .line 31
    add-int v12, v5, v3

    mul-int/2addr v12, v4

    add-int/2addr v12, v1

    aget v12, v2, v12

    .line 32
    mul-int v13, v5, v4

    add-int/2addr v13, v1

    sub-int/2addr v13, v3

    aget v13, v2, v13

    .line 33
    mul-int v14, v5, v4

    add-int/2addr v14, v1

    add-int/2addr v14, v3

    aget v14, v2, v14

    .line 35
    mul-int v15, v5, v4

    add-int/2addr v15, v1

    const/high16 v16, -0x1000000

    and-int/lit16 v0, v6, 0xff

    move/from16 v17, v0

    and-int/lit16 v0, v7, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v9, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v11, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v12, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v13, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    and-int/lit16 v0, v14, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    const v17, 0xff00

    and-int v17, v17, v6

    const v18, 0xff00

    and-int v18, v18, v7

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v9

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v10

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v11

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v12

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v13

    add-int v17, v17, v18

    const v18, 0xff00

    and-int v18, v18, v14

    add-int v17, v17, v18

    shr-int/lit8 v17, v17, 0x3

    const v18, 0xff00

    and-int v17, v17, v18

    or-int v16, v16, v17

    const/high16 v17, 0xff0000

    and-int v6, v6, v17

    const/high16 v17, 0xff0000

    and-int v7, v7, v17

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v9

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v10

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v11

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v12

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v13

    add-int/2addr v6, v7

    const/high16 v7, 0xff0000

    and-int/2addr v7, v14

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x3

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    or-int v6, v6, v16

    aput v6, v2, v15

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 24
    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    .line 23
    :cond_1
    div-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 43
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    return-object p0
.end method

.method public static setImageViewAlpha(Landroid/widget/ImageView;I)V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0
.end method
