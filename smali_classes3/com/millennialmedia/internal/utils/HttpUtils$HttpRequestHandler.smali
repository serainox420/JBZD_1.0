.class public Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 10

    .prologue
    .line 208
    new-instance v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>()V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    if-nez p4, :cond_4

    const/16 v7, 0x3a98

    .line 213
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Sending Http request\n\turl: %s\n\tpost data: %s\n\tcontent type: %s\n\trequestId: %d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v8, 0x1

    aput-object p2, v6, v8

    const/4 v8, 0x2

    aput-object p3, v6, v8

    const/4 v8, 0x3

    .line 217
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    .line 214
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    new-instance v1, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)V

    .line 223
    monitor-enter v1

    .line 224
    :try_start_0
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    int-to-long v4, v7

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 229
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->a(Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 230
    const/16 v4, 0x198

    iput v4, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 232
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "HTTP request timed out.\n\turl: %s\n\tpost data: %s\n\tcontent type: %s\n\trequestId: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    .line 235
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 233
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    move-object v4, v0

    .line 247
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    const-string v1, "text"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    const-string v1, "json"

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    :cond_2
    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    .line 261
    :goto_3
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "Http text response. \n\tcode: %d\n\trequestId: %d\n\tcontent-type: %s\n\tcontent: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 263
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x2

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    aput-object v3, v7, v2

    const/4 v2, 0x3

    aput-object v0, v7, v2

    .line 261
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_3
    :goto_4
    return-object v4

    .line 211
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_0

    .line 239
    :cond_5
    :try_start_3
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;->b(Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v4

    .line 243
    :try_start_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Interrupted while waiting for HTTP request to complete.  Aborting"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v4, 0x190

    iput v4, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move-object v4, v0

    goto :goto_2

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 258
    :cond_6
    const-string v0, "<non-text-content>"

    goto :goto_3

    .line 265
    :cond_7
    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 266
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "Http bitmap response.\n\tcode: %d\n\trequestId: %d\n\tcontent-type: %s\n\tbitmap dimensions: %d x %d\n\tbitmap size: %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 268
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    aput-object v3, v6, v2

    const/4 v2, 0x3

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    .line 269
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x4

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    .line 270
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    .line 266
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 272
    :cond_8
    iget-object v0, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 273
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "Http file response.\n\tcode: %d\n\tcontent-type: %s\n\trequestId: %d\n\tfile: %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    iget-object v3, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 273
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 278
    :cond_9
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "Http response.\n\tcode: %d\n\tcontent-type: %s\n\trequestId: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    .line 278
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
