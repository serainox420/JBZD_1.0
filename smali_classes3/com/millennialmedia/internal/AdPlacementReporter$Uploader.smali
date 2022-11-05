.class Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Uploader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->d([Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 414
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing reporting file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static a()V
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting is starting upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 718
    return-void
.end method

.method static a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V
    .locals 4

    .prologue
    .line 548
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 550
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->h()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 551
    monitor-exit v1

    .line 638
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 555
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$1;->a:[I

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->h()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to IDLE"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;-><init>()V

    .line 574
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchFrequency()I

    move-result v1

    int-to-long v2, v1

    .line 564
    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->a(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 579
    :pswitch_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to UPLOADING"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->i()Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 584
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->i()Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 586
    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a()V

    goto :goto_0

    .line 591
    :pswitch_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to ERROR_NETWORK_UNAVAILABLE"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;

    invoke-direct {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 614
    :pswitch_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to ERROR_SENDING_TO_SERVER"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_5
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;-><init>()V

    .line 634
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchFrequency()I

    move-result v1

    int-to-long v2, v1

    .line 624
    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->a(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;Z)Z
    .locals 1

    .prologue
    .line 239
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 3

    .prologue
    .line 390
    if-nez p1, :cond_1

    .line 391
    const/4 v0, 0x0

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_2

    const-string v0, ".json"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    if-eqz p3, :cond_0

    .line 398
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->h()V

    goto :goto_0

    .line 394
    :cond_2
    const-string v0, ".tmp"

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    invoke-static {v0, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 378
    return-void
.end method

.method static synthetic b([Ljava/io/File;)V
    .locals 0

    .prologue
    .line 239
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->c([Ljava/io/File;)V

    return-void
.end method

.method private static b(Ljava/io/File;Z)Z
    .locals 4

    .prologue
    .line 479
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".tmp"

    const-string v3, ".json"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target file already exists + <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to rename temp file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting temp file <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 485
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    if-eqz p1, :cond_3

    .line 487
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->h()V

    .line 490
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()[Ljava/io/File;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->e()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c([Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 260
    .line 261
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 262
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete reporting file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 269
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 270
    return-void
.end method

.method private static d([Ljava/io/File;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 275
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 277
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 278
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 281
    :try_start_0
    array-length v5, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, p0, v0

    .line 282
    invoke-static {v6}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v7

    .line 283
    if-eqz v7, :cond_0

    .line 284
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 285
    const-string v8, "request_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 286
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const-string v8, "display_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 288
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error creating SSP reporting request"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    const/4 v0, 0x0

    .line 325
    :goto_2
    return-object v0

    .line 289
    :cond_2
    :try_start_1
    const-string v8, "click_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 296
    const-string v0, "req"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 300
    const-string v0, "display"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 304
    const-string v0, "click"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :cond_6
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 319
    :goto_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 320
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generated report.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 316
    :catch_1
    move-exception v0

    .line 317
    const-string v0, "Unable to format report with indentation"

    goto :goto_3
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 239
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->i()V

    return-void
.end method

.method private static e()[Ljava/io/File;
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;

    invoke-direct {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 438
    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 439
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 440
    invoke-static {v5, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->b(Ljava/io/File;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    add-int/lit8 v0, v0, 0x1

    .line 438
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 451
    return-void
.end method

.method private static h()V
    .locals 4

    .prologue
    .line 459
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 460
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 464
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->h()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    if-ne v2, v3, :cond_1

    .line 466
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 467
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Reporting batch size limit detected -- requesting upload"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->a(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    .line 473
    :cond_1
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static i()V
    .locals 4

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.reporting/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->a(Ljava/io/File;)Ljava/io/File;

    .line 510
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 512
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to creating reporting directory"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->g()V

    .line 524
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->a(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 348
    .line 351
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v2, v1}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 359
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 357
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening file <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 359
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 356
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 331
    .line 332
    const/4 v2, 0x0

    .line 334
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    invoke-static {v1, p1}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 337
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 339
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 336
    :catch_1
    move-exception v0

    goto :goto_1
.end method
