.class Lpl/jbzd/app/c/b$c;
.super Lpl/jbzd/app/c/b$b;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/app/c/b$b;-><init>(Landroid/content/Context;Ljava/io/File;Lpl/jbzd/app/c/b$a;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 198
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 199
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lpl/jbzd/app/c/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 202
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    .line 208
    :goto_0
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v4, v2, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 209
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 218
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 224
    if-eqz v2, :cond_0

    .line 225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 232
    :cond_0
    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 234
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 237
    :cond_1
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_2
    if-eqz v5, :cond_3

    .line 242
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 250
    :cond_3
    :goto_2
    return-object v0

    .line 212
    :cond_4
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 213
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 224
    if-eqz v2, :cond_5

    .line 225
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object v0, v1

    .line 232
    :cond_5
    if-eqz v3, :cond_6

    .line 233
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 234
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 237
    :cond_6
    if-eqz v4, :cond_7

    .line 238
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_7
    if-eqz v5, :cond_3

    .line 242
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 245
    :catch_1
    move-exception v1

    .line 246
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 245
    :catch_2
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 222
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v0, v1

    .line 224
    :goto_4
    if-eqz v2, :cond_8

    .line 225
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 226
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 232
    :cond_8
    if-eqz v3, :cond_9

    .line 233
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 234
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 237
    :cond_9
    if-eqz v4, :cond_a

    .line 238
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    :cond_a
    if-eqz v5, :cond_b

    .line 242
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 247
    :cond_b
    :goto_5
    throw v0

    .line 245
    :catch_3
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 222
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 215
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto/16 :goto_1

    .line 245
    :catch_8
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3
.end method
