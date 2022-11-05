.class public Lcom/millennialmedia/internal/utils/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/millennialmedia/internal/utils/MediaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 359
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_2

    .line 362
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 363
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 369
    :goto_1
    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 374
    const-string v1, "Orientation"

    const/4 v2, 0x1

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 377
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v7

    :goto_2
    move v7, v0

    .line 393
    :cond_0
    :goto_3
    return v7

    .line 379
    :pswitch_1
    const/16 v0, 0x5a

    .line 380
    goto :goto_2

    .line 382
    :pswitch_2
    const/16 v0, 0xb4

    .line 383
    goto :goto_2

    .line 385
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_2

    .line 388
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 329
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 331
    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    sget-object v1, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap file not found <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/utils/MediaUtils;->b(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    return-void
.end method

.method private static b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/millennialmedia/internal/utils/MediaUtils$2;

    invoke-direct {v2, p3, p1, p2}, Lcom/millennialmedia/internal/utils/MediaUtils$2;-><init>(ZLjava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 160
    return-void
.end method

.method public static base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    const-string v0, "image/jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 502
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 504
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v1, "Unable to compress bitmap for encoding"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    .line 515
    :goto_1
    return-object v0

    .line 495
    :cond_1
    const-string v0, "image/webp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 498
    :cond_2
    const-string p1, "image/png"

    .line 499
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 4

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v1, "PhotoListener is required"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const-string v0, "This device does not have a camera"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getPicturesDirectory()Ljava/io/File;

    move-result-object v0

    .line 210
    if-nez v0, :cond_2

    .line 211
    const-string v0, "Cannot access pictures directory"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_2
    :try_start_0
    const-string v1, "CAMERA_"

    const-string v2, ".tmp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v3, "output"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$3;

    invoke-direct {v1, v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$3;-><init>(Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v2, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v0, "Unable to create temporary file for picture"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 2

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v1, "PhotoListener is required"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->b()Landroid/content/Intent;

    move-result-object v0

    .line 267
    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$4;

    invoke-direct {v1, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$4;-><init>(Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    goto :goto_0
.end method

.method public static getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;IIZZ)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 402
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 406
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 408
    :try_start_0
    invoke-static {p0, p1, v7}, Lcom/millennialmedia/internal/utils/MediaUtils;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    if-eqz p5, :cond_d

    .line 415
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 416
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_c

    :cond_0
    move v2, v0

    move v9, p2

    move p2, p3

    move p3, v9

    .line 425
    :goto_0
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 426
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, p3, :cond_3

    .line 427
    :cond_1
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 428
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v4, v4, 0x2

    .line 430
    :goto_1
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v0, v5

    if-le v5, p2, :cond_3

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v4, v5

    if-le v5, p3, :cond_3

    .line 433
    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 486
    :cond_2
    :goto_2
    return-object v0

    .line 438
    :cond_3
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 441
    :try_start_1
    invoke-static {p0, p1, v7}, Lcom/millennialmedia/internal/utils/MediaUtils;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 446
    if-eqz v0, :cond_4

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_4

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v4, :cond_5

    .line 447
    :cond_4
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load bitmap <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 449
    goto :goto_2

    .line 442
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 443
    goto :goto_2

    .line 453
    :cond_5
    int-to-float v3, p2

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 454
    int-to-float v3, p3

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 455
    if-eqz p4, :cond_6

    .line 456
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v4, v3

    .line 461
    :cond_6
    cmpl-float v5, v4, v8

    if-nez v5, :cond_7

    cmpl-float v5, v3, v8

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    .line 462
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    sget-object v1, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unscaled and unrotated bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 469
    :cond_7
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 471
    if-lez v2, :cond_9

    .line 472
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 473
    sget-object v3, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rotating image "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " degrees"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_8
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 478
    :cond_9
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    if-nez v1, :cond_b

    .line 480
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v3, "Unable to create scaled bitmap"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_a
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 486
    goto/16 :goto_2

    .line 481
    :cond_b
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 482
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaled and rotated bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move v2, v0

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto/16 :goto_0
.end method

.method public static isPictureChooserAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->b()Landroid/content/Intent;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 305
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 309
    :cond_0
    return v0
.end method

.method public static savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 3

    .prologue
    .line 65
    if-nez p3, :cond_0

    .line 66
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v1, "PictureListener is required"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "Storage not mounted, cannot add image to photo library"

    invoke-interface {p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    if-nez p1, :cond_2

    .line 78
    const-string v0, "url is required"

    invoke-interface {p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getPicturesDirectory()Ljava/io/File;

    move-result-object v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    const-string v0, "Cannot access pictures directory"

    invoke-interface {p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    if-nez p2, :cond_4

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 101
    :goto_1
    if-nez v0, :cond_5

    .line 102
    const-string v0, "Unable to store photo"

    invoke-interface {p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v1, p2}, Lcom/millennialmedia/internal/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 107
    :cond_5
    const/4 v1, 0x0

    new-instance v2, Lcom/millennialmedia/internal/utils/MediaUtils$1;

    invoke-direct {v2, p0, p3}, Lcom/millennialmedia/internal/utils/MediaUtils$1;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    invoke-static {p1, v1, v0, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    goto :goto_0

    .line 127
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No file found at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v1, p3, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->b(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    goto :goto_0
.end method

.method public static setFileDescription(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 521
    if-eqz p1, :cond_0

    .line 523
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 524
    const-string v1, "UserComment"

    invoke-virtual {v0, v1, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set description on media file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;)V
    .locals 3

    .prologue
    .line 166
    if-nez p2, :cond_0

    .line 167
    sget-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->a:Ljava/lang/String;

    const-string v1, "VideoListener is required"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 173
    const-string v0, "url is required"

    invoke-interface {p2, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-interface {p2, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onVideoStarted(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v0, "No video application installed"

    invoke-interface {p2, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
