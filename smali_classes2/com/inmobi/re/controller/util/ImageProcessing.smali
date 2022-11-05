.class public Lcom/inmobi/re/controller/util/ImageProcessing;
.super Ljava/lang/Object;
.source "ImageProcessing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMediaUriToPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 43
    return-object v1
.end method

.method public static getBase64EncodedImage(Landroid/graphics/Bitmap;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/inmobi/re/controller/util/ImageProcessing;->getDefaultImgQuality(Landroid/content/Context;)I

    move-result v1

    .line 26
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static getCompressedBitmap(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/re/controller/util/ImageProcessing;->getDefaultImgWidth(Landroid/content/Context;)I

    move-result v0

    .line 65
    invoke-static {p1}, Lcom/inmobi/re/controller/util/ImageProcessing;->getDefaultImgHeight(Landroid/content/Context;)I

    move-result v3

    .line 66
    mul-int/2addr v3, v0

    .line 67
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 70
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move v0, v2

    .line 74
    :goto_0
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    int-to-double v8, v3

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 79
    if-le v0, v2, :cond_1

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 83
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    const/4 v0, 0x0

    invoke-static {v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 88
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 89
    int-to-double v6, v3

    int-to-double v8, v5

    int-to-double v10, v0

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 91
    int-to-double v8, v0

    div-double v8, v6, v8

    int-to-double v10, v5

    mul-double/2addr v8, v10

    .line 92
    double-to-int v0, v8

    double-to-int v3, v6

    const/4 v5, 0x1

    invoke-static {v2, v0, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 101
    const-string v2, "[InMobi]-[RE]-4.5.5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap size - width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_2
    return-object v0

    .line 98
    :cond_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v2, "[InMobi]-[RE]-4.5.5"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 106
    goto :goto_2
.end method

.method public static getDefaultImgHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getPicHeight()I

    move-result v0

    return v0
.end method

.method public static getDefaultImgQuality(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getPicQuality()I

    move-result v0

    return v0
.end method

.method public static getDefaultImgWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getPicWidth()I

    move-result v0

    return v0
.end method
