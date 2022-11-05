.class Lcom/mopub/mraid/MraidNativeCommandHandler$a;
.super Landroid/os/AsyncTask;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidNativeCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;)V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a:Landroid/content/Context;

    .line 463
    iput-object p2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->b:Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;

    .line 464
    return-void
.end method

.method private a()Ljava/io/File;
    .locals 3

    .prologue
    .line 556
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 522
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    .line 528
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v0, "Content-Type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 531
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v1

    .line 533
    goto :goto_0

    .line 541
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 542
    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_5

    aget-object v2, v3, v0

    .line 543
    const-string v5, "image/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 560
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler$b;

    invoke-direct {v0, p1, v1, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$1;)V

    .line 562
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 564
    invoke-static {v0, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$b;->a(Lcom/mopub/mraid/MraidNativeCommandHandler$b;Landroid/media/MediaScannerConnection;)V

    .line 565
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 566
    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 468
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    if-nez v1, :cond_1

    .line 469
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a()Ljava/io/File;

    move-result-object v3

    .line 475
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 477
    aget-object v2, p1, v2

    .line 478
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 483
    :try_start_0
    invoke-static {v2}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 485
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :try_start_1
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->LOCATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v5}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 489
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 492
    :cond_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a(Ljava/net/URI;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    :try_start_2
    invoke-static {v2, v1}, Lcom/mopub/common/util/Streams;->copyContent(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 498
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 505
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 506
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 503
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 505
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 506
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v2}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 506
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 505
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 502
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 512
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->b:Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;->onSuccess()V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->b:Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler$a$a;->onFailure()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
