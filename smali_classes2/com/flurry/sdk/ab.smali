.class public Lcom/flurry/sdk/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ab$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/flurry/sdk/aa;

.field public c:Lcom/flurry/sdk/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ao",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:Lcom/flurry/sdk/ab$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/sdk/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/flurry/sdk/ab$a;->a:Lcom/flurry/sdk/ab$a;

    iput-object v0, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    .line 50
    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "fileStreamCacheDownloaderTmp"

    invoke-static {v2, p0}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 15780
    invoke-static {p1}, Lcom/flurry/sdk/fk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 397
    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/ac$a;)V
    .locals 2

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/ac;

    invoke-direct {v0}, Lcom/flurry/sdk/ac;-><init>()V

    .line 785
    iput-object p1, v0, Lcom/flurry/sdk/ac;->a:Lcom/flurry/sdk/ac$a;

    .line 786
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    monitor-exit p0

    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Lcom/flurry/sdk/r;)V
    .locals 5

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    const-string v0, "fileStreamCacheDownloaderTmp"

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 300
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Removing local assets for adObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Lcom/flurry/sdk/lx;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Error removing local assets for adObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/r;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 366
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video Cache: Removing local assets for adObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Ljava/io/File;

    const-string v1, "fileStreamCacheDownloaderTmp"

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 377
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Cache: found asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 476
    new-instance v0, Lcom/flurry/sdk/fn;

    invoke-direct {v0}, Lcom/flurry/sdk/fn;-><init>()V

    .line 477
    invoke-static {p1}, Lcom/flurry/sdk/fn;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_0

    .line 482
    new-instance v1, Ljava/io/File;

    const-string v2, "fileStreamCacheDownloaderTmp"

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v3

    invoke-static {v2, v3}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video Cache: Removing local assets for adObject: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video Cache: found asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 492
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 493
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Error saving cache file for filename:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 497
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 526
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdCacheNative: Delete file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 531
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdCacheNative: File exists. Deleting it."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 694
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 728
    :cond_1
    :goto_0
    return v0

    .line 698
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fAssetCache: Creating cache file for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 700
    new-instance v4, Ljava/io/File;

    const-string v0, "fileAssetCacheFolder"

    invoke-static {v0}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 701
    const/4 v0, 0x0

    .line 704
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 724
    :goto_2
    if-nez v0, :cond_1

    .line 725
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 707
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/flurry/sdk/lx;->a(Ljava/io/File;)Z

    move-result v1

    .line 708
    if-nez v1, :cond_4

    .line 709
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Precaching: Error creating directory to save cache file:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 718
    :goto_3
    const/4 v3, 0x6

    :try_start_2
    sget-object v5, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Precaching: Error saving cache file for filename:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 720
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 721
    goto :goto_2

    .line 712
    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 713
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v0, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    .line 715
    goto :goto_1

    .line 720
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 717
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static a(Lcom/flurry/sdk/au;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 348
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v2

    .line 14078
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 15058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 352
    iget-object v3, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v1, v2

    .line 353
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 354
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const/4 v2, 0x1

    goto :goto_0

    .line 353
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    .line 650
    :cond_0
    sget-object v0, Lcom/flurry/sdk/as;->a:Lcom/flurry/sdk/as;

    .line 653
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 657
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 658
    sget-object v3, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Precaching: assetLink: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " urlPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mimeType: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v3, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    if-eqz v2, :cond_1

    .line 660
    const-string v1, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: asset is a video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/flurry/sdk/as;->b:Lcom/flurry/sdk/as;

    .line 677
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/flurry/sdk/aa;->a(Ljava/lang/String;Lcom/flurry/sdk/as;J)Z

    move-result v0

    goto :goto_0

    .line 663
    :cond_2
    const-string v1, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: asset is an image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/flurry/sdk/as;->c:Lcom/flurry/sdk/as;

    goto :goto_1

    .line 666
    :cond_3
    const-string v1, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 667
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Precaching: asset is text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/flurry/sdk/as;->d:Lcom/flurry/sdk/as;

    goto :goto_1

    .line 670
    :cond_4
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Precaching: could not identify media type for asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 674
    :cond_5
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Precaching: could not identify urlPath for asset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 383
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-object v0

    .line 685
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "fileAssetCacheFolder"

    invoke-static {v2}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 687
    goto :goto_0
.end method

.method public static c(Lcom/flurry/sdk/r;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 504
    new-instance v0, Ljava/io/File;

    const-string v1, "fileStreamCacheDownloaderTmp"

    invoke-interface {p0}, Lcom/flurry/sdk/r;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    invoke-static {p0}, Lcom/flurry/sdk/fk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/flurry/sdk/ab$a;->c:Lcom/flurry/sdk/ab$a;

    iget-object v1, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ab$a;->d:Lcom/flurry/sdk/ab$a;

    iget-object v1, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/flurry/sdk/r;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Saving local asset for adObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v2, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    iget-object v3, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v3, p2}, Lcom/flurry/sdk/aa;->b(Ljava/lang/String;)Lcom/flurry/sdk/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    if-eqz v2, :cond_2

    .line 327
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 337
    :cond_2
    :goto_1
    instance-of v2, p1, Lcom/flurry/sdk/x;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v0, v1

    .line 338
    goto :goto_0

    .line 333
    :catch_0
    move-exception v2

    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v3, "Error while getting mime type"

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ab;->d(Lcom/flurry/sdk/r;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/au;)Lcom/flurry/sdk/ag;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    sget-object v0, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    if-nez p1, :cond_2

    .line 208
    sget-object v0, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    goto :goto_0

    .line 7078
    :cond_2
    iget-object v1, p1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 8058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 211
    if-nez v1, :cond_3

    .line 212
    sget-object v0, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    goto :goto_0

    .line 217
    :cond_3
    sget-object v1, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    .line 9078
    iget-object v2, p1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 10058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 219
    iget-object v4, v2, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v2, v0

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 220
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 221
    invoke-virtual {p1, v1}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v3

    .line 222
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    move-object v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/aa;->b(Ljava/lang/String;)Lcom/flurry/sdk/al;

    move-result-object v0

    .line 10232
    if-nez v2, :cond_5

    .line 10233
    sget-object v2, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    .line 224
    :cond_4
    :goto_3
    const/4 v3, 0x1

    .line 225
    goto :goto_2

    .line 10236
    :cond_5
    if-eqz v0, :cond_4

    .line 10240
    sget-object v3, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10242
    sget-object v2, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    goto :goto_3

    .line 10243
    :cond_6
    sget-object v3, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 10245
    sget-object v0, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10246
    sget-object v2, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ag;

    goto :goto_3

    .line 10248
    :cond_7
    sget-object v3, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 10250
    :cond_8
    sget-object v0, Lcom/flurry/sdk/ag;->f:Lcom/flurry/sdk/ag;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/ag;->e:Lcom/flurry/sdk/ag;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10251
    sget-object v2, Lcom/flurry/sdk/ag;->c:Lcom/flurry/sdk/ag;

    goto :goto_3

    .line 10253
    :cond_9
    sget-object v3, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 10255
    :cond_a
    sget-object v0, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10256
    :cond_b
    sget-object v2, Lcom/flurry/sdk/ag;->b:Lcom/flurry/sdk/ag;

    goto :goto_3

    .line 10258
    :cond_c
    sget-object v3, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10260
    sget-object v0, Lcom/flurry/sdk/ag;->a:Lcom/flurry/sdk/ag;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10261
    sget-object v2, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    goto :goto_3

    .line 220
    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    move v2, v3

    goto/16 :goto_1

    .line 228
    :cond_e
    if-nez v2, :cond_0

    sget-object v0, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(JJ)V
    .locals 5

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ab;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v2, "Precaching: Initializing AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-wide p1, p0, Lcom/flurry/sdk/ab;->d:J

    .line 60
    iput-wide p3, p0, Lcom/flurry/sdk/ab;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    :try_start_2
    const-string v0, "fileStreamCacheDownloaderTmp"

    invoke-static {v0}, Lcom/flurry/sdk/fk;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1539
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Cleaning temp asset directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1540
    invoke-static {v0}, Lcom/flurry/sdk/lx;->b(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_1
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/ab$a;->b:Lcom/flurry/sdk/ab$a;

    iput-object v0, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    .line 65
    sget-object v0, Lcom/flurry/sdk/ac$a;->a:Lcom/flurry/sdk/ac$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/ac$a;)V

    .line 67
    new-instance v0, Lcom/flurry/sdk/ao;

    invoke-direct {v0}, Lcom/flurry/sdk/ao;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    const/4 v1, 0x6

    :try_start_4
    sget-object v2, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Error cleaning temp asset directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    return-void

    .line 183
    :cond_1
    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    .line 189
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 2547
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2551
    if-eqz v0, :cond_4

    .line 4078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 5058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 2555
    iget-object v5, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v2, v3

    .line 2556
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 2557
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v1

    .line 2558
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5636
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5641
    iget-object v7, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v7, v1}, Lcom/flurry/sdk/aa;->b(Ljava/lang/String;)Lcom/flurry/sdk/al;

    goto :goto_2

    .line 2556
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 188
    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 194
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 195
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/au;)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    add-int/2addr v0, v1

    .line 196
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v1, v0

    .line 199
    goto :goto_3

    :cond_6
    move v0, v3

    .line 195
    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/flurry/sdk/ab$a;->a:Lcom/flurry/sdk/ab$a;

    iget-object v1, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 273
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 277
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching: Saving local assets for adObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/flurry/sdk/r;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12078
    iget-object v0, p2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 13058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 279
    iget-object v3, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v1, v2

    .line 280
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 281
    invoke-virtual {p2, v1}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ab;->e(Lcom/flurry/sdk/r;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 280
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 289
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/flurry/sdk/au;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    if-eqz p1, :cond_0

    .line 17078
    iget-object v1, p1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 18058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 575
    iget-object v4, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v2, v0

    move v1, v0

    .line 576
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 577
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 578
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v3

    .line 579
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 580
    iget-wide v6, v0, Lcom/flurry/sdk/cn;->h:J

    invoke-direct {p0, v1, v6, v7}, Lcom/flurry/sdk/ab;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 576
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto :goto_1

    :cond_4
    move v0, v1

    .line 586
    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 6

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/ab;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v2, "Precaching: Starting AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/flurry/sdk/aa;

    const-string v1, "fileStreamCacheDownloader"

    iget-wide v2, p0, Lcom/flurry/sdk/ab;->d:J

    iget-wide v4, p0, Lcom/flurry/sdk/ab;->e:J

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/aa;-><init>(Ljava/lang/String;JJ)V

    iput-object v0, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    .line 125
    iget-object v0, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->c()V

    .line 127
    sget-object v0, Lcom/flurry/sdk/ab$a;->c:Lcom/flurry/sdk/ab$a;

    iput-object v0, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    .line 128
    sget-object v0, Lcom/flurry/sdk/ac$a;->b:Lcom/flurry/sdk/ac$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/ac$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v2, "Precaching: Stopping AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->d()V

    .line 140
    sget-object v0, Lcom/flurry/sdk/ab$a;->b:Lcom/flurry/sdk/ab$a;

    iput-object v0, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    .line 141
    sget-object v0, Lcom/flurry/sdk/ac$a;->c:Lcom/flurry/sdk/ac$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/ac$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/flurry/sdk/au;)V
    .locals 8

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    return-void

    .line 594
    :cond_1
    if-eqz p1, :cond_0

    .line 19078
    iget-object v0, p1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 20058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 598
    iget-object v3, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 599
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 600
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 601
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/au;->c(I)Ljava/util/List;

    move-result-object v1

    .line 602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 603
    iget-wide v6, v0, Lcom/flurry/sdk/cn;->h:J

    invoke-direct {p0, v1, v6, v7}, Lcom/flurry/sdk/ab;->a(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20611
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20615
    iget-object v5, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v5, v1}, Lcom/flurry/sdk/aa;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 599
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ab;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2084
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ab$a;->d:Lcom/flurry/sdk/ab$a;

    iget-object v1, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v2, "Precaching: Resuming AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    invoke-virtual {v0}, Lcom/flurry/sdk/aa;->e()V

    .line 174
    sget-object v0, Lcom/flurry/sdk/ab$a;->c:Lcom/flurry/sdk/ab$a;

    iput-object v0, p0, Lcom/flurry/sdk/ab;->f:Lcom/flurry/sdk/ab$a;

    .line 175
    sget-object v0, Lcom/flurry/sdk/ac$a;->e:Lcom/flurry/sdk/ac$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/ac$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lcom/flurry/sdk/r;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 732
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v0, v2

    .line 776
    :cond_1
    :goto_0
    return v0

    .line 736
    :cond_2
    sget-object v1, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fAdIdQueue: Creating temp file for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/flurry/sdk/r;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v4, Ljava/io/File;

    const-string v1, "fileStreamCacheDownloaderTmp"

    invoke-interface {p1}, Lcom/flurry/sdk/r;->e()I

    move-result v5

    invoke-static {v1, v5}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 20780
    invoke-static {p2}, Lcom/flurry/sdk/fk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 738
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 745
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 767
    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 768
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 772
    :goto_2
    if-nez v0, :cond_1

    .line 773
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 748
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/flurry/sdk/lx;->a(Ljava/io/File;)Z

    move-result v1

    .line 749
    if-nez v1, :cond_4

    .line 750
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Precaching: Error creating directory to save tmp file:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 764
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 765
    :goto_3
    const/4 v5, 0x6

    :try_start_2
    sget-object v6, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Precaching: Error saving temp file for url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 767
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 768
    invoke-static {v3}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 769
    goto :goto_2

    .line 753
    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 754
    :try_start_4
    iget-object v5, p0, Lcom/flurry/sdk/ab;->b:Lcom/flurry/sdk/aa;

    .line 21222
    invoke-virtual {v5}, Lcom/flurry/sdk/aa;->a()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v6

    if-nez v6, :cond_6

    .line 755
    :cond_5
    :goto_4
    if-eqz v0, :cond_7

    .line 22081
    :try_start_5
    iget-object v5, v0, Lcom/flurry/sdk/aq$b;->a:Ljava/io/BufferedInputStream;

    .line 756
    invoke-static {v5, v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 757
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Precaching: Temp asset "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saved to :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 764
    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 21226
    :cond_6
    :try_start_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 21230
    iget-object v5, v5, Lcom/flurry/sdk/aa;->b:Lcom/flurry/sdk/ap;

    invoke-virtual {v5, p2}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;)Lcom/flurry/sdk/aq$b;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    goto :goto_4

    .line 759
    :cond_7
    const/4 v5, 0x3

    :try_start_7
    sget-object v6, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Precaching: Temp asset not saved.  Could not open cache reader: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 767
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    :goto_5
    invoke-static {v1}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    .line 768
    invoke-static {v3}, Lcom/flurry/sdk/ly;->a(Ljava/io/Closeable;)V

    throw v0

    .line 767
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 764
    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3
.end method
