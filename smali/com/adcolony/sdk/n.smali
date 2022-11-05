.class Lcom/adcolony/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 600
    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 604
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 600
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    .line 601
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 612
    return-object v2
.end method

.method a()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "FileSystem.save"

    new-instance v1, Lcom/adcolony/sdk/n$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$1;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 273
    const-string v0, "FileSystem.delete"

    new-instance v1, Lcom/adcolony/sdk/n$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$2;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 291
    const-string v0, "FileSystem.listing"

    new-instance v1, Lcom/adcolony/sdk/n$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$3;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 308
    const-string v0, "FileSystem.load"

    new-instance v1, Lcom/adcolony/sdk/n$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$4;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 325
    const-string v0, "FileSystem.rename"

    new-instance v1, Lcom/adcolony/sdk/n$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$5;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 342
    const-string v0, "FileSystem.exists"

    new-instance v1, Lcom/adcolony/sdk/n$6;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$6;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 359
    const-string v0, "FileSystem.extract"

    new-instance v1, Lcom/adcolony/sdk/n$7;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$7;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 376
    const-string v0, "FileSystem.unpack_bundle"

    new-instance v1, Lcom/adcolony/sdk/n$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$8;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 392
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/n;->b:Z

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/n;->b:Z

    .line 698
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    if-eqz p3, :cond_0

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 441
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 444
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 445
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/z;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v3}, Lcom/adcolony/sdk/am;->b()Z

    .line 40
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 43
    :try_start_0
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "offset"

    invoke-static {v3, v5}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 44
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v6, "size"

    invoke-static {v3, v6}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 45
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v7, "gunzip"

    invoke-static {v3, v7}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    .line 47
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v8, "output_filepath"

    invoke-static {v3, v8}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    new-instance v3, Lcom/adcolony/sdk/an;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9, v5, v6}, Lcom/adcolony/sdk/an;-><init>(Ljava/io/InputStream;II)V

    .line 54
    if-eqz v7, :cond_0

    .line 56
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    const/16 v5, 0x400

    invoke-direct {v2, v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v2

    .line 59
    :cond_0
    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 68
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    .line 73
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v5, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    const-string v0, "success"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 111
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 122
    :goto_1
    return v0

    .line 77
    :cond_1
    :try_start_1
    const-string v5, "size"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 78
    const-string v5, "data"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 104
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 105
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 114
    :catch_1
    move-exception v2

    .line 116
    sget-object v2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v3, "Out of memory error - disabling AdColony."

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 117
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 118
    const-string v0, "success"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 119
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 120
    goto :goto_1

    .line 83
    :cond_2
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 87
    const/16 v2, 0x400

    new-array v6, v2, [B

    move v2, v1

    .line 90
    :goto_3
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_3

    .line 92
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 93
    add-int/2addr v2, v7

    goto :goto_3

    .line 96
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const-string v5, "size"

    invoke-static {v4, v5, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method a(Lcom/adcolony/sdk/z;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v2}, Lcom/adcolony/sdk/am;->b()Z

    .line 458
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 461
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    .line 466
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 490
    :cond_0
    :goto_0
    const-string v2, "success"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 491
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 498
    :goto_1
    return v0

    .line 471
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 472
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 474
    new-instance v5, Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p1, v5}, Lcom/adcolony/sdk/n;->a(Lcom/adcolony/sdk/z;Ljava/io/File;)Z

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    .line 480
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 496
    const-string v0, "success"

    invoke-static {v3, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 497
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 498
    goto :goto_1

    .line 486
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/n;->b:Z

    .line 712
    iget-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/n;->b:Z

    .line 715
    iget-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 717
    :cond_0
    return-void
.end method

.method b(Lcom/adcolony/sdk/z;)Z
    .locals 20

    .prologue
    .line 133
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "bundle_path"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "bundle_filenames"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 137
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v2}, Lcom/adcolony/sdk/am;->b()Z

    .line 139
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v7

    .line 147
    const/4 v2, 0x4

    .line 148
    const/16 v3, 0x20

    .line 149
    const/16 v8, 0x400

    .line 162
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v9, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    new-array v2, v2, [B

    .line 165
    new-array v11, v3, [B

    .line 167
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    .line 168
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 170
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 172
    new-array v14, v8, [B

    .line 174
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_1

    .line 176
    mul-int/lit8 v3, v2, 0x2c

    add-int/lit8 v3, v3, 0x8

    .line 177
    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->read([B)I

    .line 180
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/lang/String;-><init>([B)V

    .line 182
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    .line 183
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 184
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    .line 187
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 189
    const-string v16, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 192
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 203
    int-to-long v0, v3

    move-wide/from16 v18, v0

    :try_start_2
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 205
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 207
    div-int v16, v15, v8

    .line 208
    rem-int/2addr v15, v8

    .line 211
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    .line 213
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v14, v0, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 214
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 194
    :catch_0
    move-exception v3

    .line 196
    sget-object v3, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v4, "Could extract file name at index "

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/adcolony/sdk/u;->a(I)Lcom/adcolony/sdk/u;

    move-result-object v2

    const-string v3, " unpacking ad unit bundle at"

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 198
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 199
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 200
    const/4 v2, 0x0

    .line 247
    :goto_2
    return v2

    .line 217
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v10, v14, v3, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 218
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v3, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 220
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 223
    :cond_1
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 224
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 226
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-static {v7, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 227
    const-string v2, "file_sizes"

    invoke-static {v7, v2, v13}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    const/4 v2, 0x1

    goto :goto_2

    .line 231
    :catch_1
    move-exception v2

    .line 233
    sget-object v2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v3, "Failed to find or open ad unit bundle at path: "

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 234
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 236
    const/4 v2, 0x0

    goto :goto_2

    .line 238
    :catch_2
    move-exception v2

    .line 240
    sget-object v2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v3, "Out of memory error - disabling AdColony."

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 241
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/h;->b(Z)V

    .line 242
    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v7, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 244
    const/4 v2, 0x0

    goto :goto_2
.end method

.method c(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v5, "encoding"

    invoke-static {v0, v5}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    const-string v5, "utf8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 409
    :goto_0
    sget-object v5, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v5, v5, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v5}, Lcom/adcolony/sdk/am;->b()Z

    .line 411
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 414
    :try_start_0
    invoke-virtual {p0, v3, v4, v0}, Lcom/adcolony/sdk/n;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 416
    const-string v0, "success"

    const/4 v3, 0x1

    invoke-static {v5, v0, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 417
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 407
    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 421
    const-string v0, "success"

    invoke-static {v5, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 422
    invoke-virtual {p1, v5}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v1, v2

    .line 423
    goto :goto_1
.end method

.method d(Lcom/adcolony/sdk/z;)Z
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 510
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v2}, Lcom/adcolony/sdk/am;->b()Z

    .line 513
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 514
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 516
    if-eqz v5, :cond_2

    .line 518
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v6

    .line 519
    array-length v7, v5

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v8, v5, v2

    .line 521
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v9

    .line 523
    const-string v10, "filename"

    invoke-static {v9, v10, v8}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 528
    const-string v8, "is_folder"

    invoke-static {v9, v8, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 535
    :goto_1
    invoke-static {v6, v9}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    :cond_0
    const-string v8, "is_folder"

    invoke-static {v9, v8, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 538
    :cond_1
    const-string v1, "success"

    invoke-static {v4, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 539
    const-string v1, "entries"

    invoke-static {v4, v1, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 540
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 548
    :goto_2
    return v0

    .line 546
    :cond_2
    const-string v0, "success"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 547
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 548
    goto :goto_2
.end method

.method e(Lcom/adcolony/sdk/z;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 560
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "encoding"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    if-eqz v3, :cond_0

    const-string v4, "utf8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    :goto_0
    sget-object v3, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v3, v3, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v3}, Lcom/adcolony/sdk/am;->b()Z

    .line 565
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 568
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/adcolony/sdk/n;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    const-string v2, "success"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 572
    const-string v2, "data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 582
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 562
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 580
    const-string v0, "success"

    invoke-static {v3, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 581
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 582
    const-string v0, ""

    goto :goto_1
.end method

.method f(Lcom/adcolony/sdk/z;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 624
    iget-object v2, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    iget-object v3, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "new_filepath"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    sget-object v4, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v4, v4, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v4}, Lcom/adcolony/sdk/am;->b()Z

    .line 628
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 631
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const-string v2, "success"

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 637
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 651
    :goto_0
    return v0

    .line 642
    :cond_0
    const-string v0, "success"

    const/4 v2, 0x0

    invoke-static {v4, v0, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 643
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 644
    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 649
    const-string v0, "success"

    invoke-static {v4, v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 650
    invoke-virtual {p1, v4}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    move v0, v1

    .line 651
    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/z;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "filepath"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->k:Lcom/adcolony/sdk/am;

    invoke-virtual {v2}, Lcom/adcolony/sdk/am;->b()Z

    .line 666
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 669
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 671
    const-string v3, "result"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 672
    const-string v3, "success"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 673
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    return v0

    .line 676
    :catch_0
    move-exception v0

    .line 678
    const-string v3, "result"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 679
    const-string v3, "success"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 680
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    .line 681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 682
    goto :goto_0
.end method
