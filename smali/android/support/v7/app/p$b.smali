.class Landroid/support/v7/app/p$b;
.super Landroid/os/AsyncTask;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/net/Uri;

.field private d:I

.field private e:J


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1351
    iput-object p1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1352
    iget-object v0, p1, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 1353
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1354
    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1357
    :cond_0
    iput-object v0, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    .line 1358
    iget-object v0, p1, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_2

    :goto_1
    iput-object v1, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    .line 1359
    return-void

    .line 1352
    :cond_1
    iget-object v0, p1, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p1, Landroid/support/v7/app/p;->s:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->d()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1456
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content"

    .line 1457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    .line 1458
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .line 1467
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1461
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1463
    sget v1, Landroid/support/v7/app/p;->c:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1464
    sget v1, Landroid/support/v7/app/p;->c:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1465
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1467
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1377
    .line 1378
    iget-object v0, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 1425
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    invoke-static {v0, v1}, Landroid/support/v7/app/p;->a(Landroid/support/v7/app/p;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1426
    const-string v0, "MediaRouteCtrlDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t use recycled bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_0
    :goto_1
    return-object v2

    .line 1380
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 1383
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/support/v7/app/p$b;->a(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 1384
    :try_start_1
    const-string v0, "MediaRouteCtrlDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1417
    if-eqz v1, :cond_0

    .line 1419
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1420
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1388
    :cond_2
    :try_start_3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1389
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1390
    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1391
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_4

    .line 1417
    :cond_3
    if-eqz v1, :cond_0

    .line 1419
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1420
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1396
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1406
    :cond_5
    const/4 v4, 0x0

    :try_start_6
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1407
    iget-object v4, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/p;->a(II)I

    move-result v4

    .line 1408
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, v5, v4

    .line 1409
    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1410
    invoke-virtual {p0}, Landroid/support/v7/app/p$b;->isCancelled()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-eqz v4, :cond_6

    .line 1417
    if-eqz v1, :cond_0

    .line 1419
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 1420
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1397
    :catch_3
    move-exception v4

    .line 1399
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1400
    iget-object v4, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    invoke-direct {p0, v4}, Landroid/support/v7/app/p$b;->a(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1401
    const-string v0, "MediaRouteCtrlDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1417
    if-eqz v1, :cond_0

    .line 1419
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 1420
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 1413
    :cond_6
    const/4 v4, 0x0

    :try_start_a
    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v0

    .line 1417
    if-eqz v1, :cond_c

    .line 1419
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move-object v1, v0

    .line 1421
    goto/16 :goto_0

    .line 1420
    :catch_5
    move-exception v1

    move-object v1, v0

    .line 1421
    goto/16 :goto_0

    .line 1414
    :catch_6
    move-exception v0

    move-object v1, v2

    .line 1415
    :goto_2
    :try_start_c
    const-string v4, "MediaRouteCtrlDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1417
    if-eqz v1, :cond_b

    .line 1419
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    move-object v1, v2

    .line 1421
    goto/16 :goto_0

    .line 1420
    :catch_7
    move-exception v0

    move-object v1, v2

    .line 1421
    goto/16 :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    .line 1419
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1421
    :cond_7
    :goto_4
    throw v0

    .line 1429
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1431
    new-instance v0, Landroid/support/v7/b/b$a;

    invoke-direct {v0, v1}, Landroid/support/v7/b/b$a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v7}, Landroid/support/v7/b/b$a;->a(I)Landroid/support/v7/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/b/b$a;->a()Landroid/support/v7/b/b;

    move-result-object v0

    .line 1432
    invoke-virtual {v0}, Landroid/support/v7/b/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v3

    .line 1433
    :goto_5
    iput v0, p0, Landroid/support/v7/app/p$b;->d:I

    :cond_9
    move-object v2, v1

    .line 1435
    goto/16 :goto_1

    .line 1433
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/b/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/b/b$c;

    invoke-virtual {v0}, Landroid/support/v7/b/b$c;->a()I

    move-result v0

    goto :goto_5

    .line 1420
    :catch_8
    move-exception v1

    goto :goto_4

    .line 1417
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1414
    :catch_9
    move-exception v0

    goto :goto_2

    :cond_b
    move-object v1, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1440
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/p;->t:Landroid/support/v7/app/p$b;

    .line 1441
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->u:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->v:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    if-eq v1, v2, :cond_1

    .line 1442
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget-object v2, p0, Landroid/support/v7/app/p$b;->b:Landroid/graphics/Bitmap;

    iput-object v2, v1, Landroid/support/v7/app/p;->u:Landroid/graphics/Bitmap;

    .line 1443
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iput-object p1, v1, Landroid/support/v7/app/p;->x:Landroid/graphics/Bitmap;

    .line 1444
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget-object v2, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    iput-object v2, v1, Landroid/support/v7/app/p;->v:Landroid/net/Uri;

    .line 1445
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iget v2, p0, Landroid/support/v7/app/p$b;->d:I

    iput v2, v1, Landroid/support/v7/app/p;->y:I

    .line 1446
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    iput-boolean v0, v1, Landroid/support/v7/app/p;->w:Z

    .line 1447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v7/app/p$b;->e:J

    sub-long/2addr v2, v4

    .line 1449
    iget-object v1, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    const-wide/16 v4, 0x78

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/p;->a(Z)V

    .line 1451
    :cond_1
    return-void

    .line 1449
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Landroid/support/v7/app/p$b;->c:Landroid/net/Uri;

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1342
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/p$b;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1342
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/p$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/app/p$b;->e:J

    .line 1372
    iget-object v0, p0, Landroid/support/v7/app/p$b;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->g()V

    .line 1373
    return-void
.end method
