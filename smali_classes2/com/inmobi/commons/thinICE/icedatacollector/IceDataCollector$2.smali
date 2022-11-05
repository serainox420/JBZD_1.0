.class final Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;
.super Ljava/lang/Object;
.source "IceDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$ThinIceDataCollectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->m()Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$ThinIceDataCollectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$ThinIceDataCollectedListener;->onDataCollected()V

    .line 526
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 313
    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "IceDataCollector"

    const-string v3, "** sample runnable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2

    .line 318
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "IceDataCollector"

    const-string v1, "sampling when looper is null, exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    .line 327
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 328
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 329
    const-string v0, "IceDataCollector"

    const-string v1, "activity no longer has focus, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b()V

    .line 332
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    .line 333
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    .line 334
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 335
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/app/Activity;)Landroid/app/Activity;

    .line 336
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 337
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;->onSamplingTerminated(Ljava/util/List;)V

    .line 339
    :cond_4
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    goto :goto_0

    .line 344
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 346
    const-string v2, "IceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next sample in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_6
    new-instance v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    invoke-direct {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;-><init>()V

    .line 352
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v3

    .line 353
    invoke-static {v3, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v0

    .line 354
    :cond_7
    invoke-static {v3, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    .line 356
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getCellOpFlags()I

    move-result v4

    .line 357
    invoke-static {v4, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    .line 358
    invoke-static {v4, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    .line 360
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellOperatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 364
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    move-result-object v5

    .line 365
    if-eqz v0, :cond_8

    .line 366
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    .line 367
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    .line 369
    :cond_8
    if-eqz v4, :cond_9

    .line 370
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    .line 371
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    .line 373
    :cond_9
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 374
    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- cell operator: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_a
    iput-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->cellOperator:Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    :cond_b
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 387
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->hasGetCurrentServingCellPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 388
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    .line 389
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 390
    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- current serving cell: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    iget-object v5, v5, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    :cond_c
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleVisibleCellTowerEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 406
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->hasGetVisibleCellTowerPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 407
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getVisibleCellTower(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleCellTowerInfo:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 422
    :cond_d
    :goto_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedWifiAp:Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    .line 425
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 428
    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 429
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->getLastKnownLocations(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 430
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 431
    const-string v0, "IceDataCollector"

    const-string v5, "-- locations:"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;

    .line 433
    const-string v6, "IceDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 442
    :catch_0
    move-exception v0

    .line 443
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 444
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting location data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_e
    :goto_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 451
    :try_start_4
    invoke-static {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;)Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    .line 452
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 453
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_6
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v2

    if-le v0, v2, :cond_13

    .line 455
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 379
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell operator data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 393
    :cond_f
    :try_start_5
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 394
    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access current serving cell"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 397
    :catch_2
    move-exception v0

    .line 398
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 399
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 410
    :cond_10
    :try_start_6
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 411
    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access current serving cell"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 414
    :catch_3
    move-exception v0

    .line 415
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 416
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 436
    :cond_11
    :try_start_7
    iput-object v4, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->lastKnownLocations:Ljava/util/HashMap;

    goto :goto_5

    .line 438
    :cond_12
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 439
    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access location"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 458
    :cond_13
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 460
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleVisibleWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 463
    :try_start_9
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->hasWifiScanPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 465
    new-instance v0, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2$1;

    invoke-direct {v0, p0, v1, v3}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2$1;-><init>(Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;ZZ)V

    .line 497
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->requestScan(Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-direct {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 508
    :catch_4
    move-exception v0

    .line 509
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 510
    const-string v1, "IceDataCollector"

    const-string v2, "Error scanning for wifi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 503
    :cond_14
    :try_start_a
    invoke-direct {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;->a()V

    .line 504
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 505
    const-string v0, "IceDataCollector"

    const-string v1, "application does not have permission to scan for wifi access points"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 516
    :cond_15
    invoke-direct {p0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$2;->a()V

    goto/16 :goto_0
.end method
