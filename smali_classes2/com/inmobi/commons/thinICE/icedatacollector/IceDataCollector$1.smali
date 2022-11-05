.class final Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector$1;
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
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    const-class v1, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;

    monitor-enter v1

    .line 270
    :try_start_0
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "IceDataCollector"

    const-string v2, "** stop runnable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "IceDataCollector"

    const-string v2, "ignoring, stop not requested"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    monitor-exit v1

    .line 288
    :goto_0
    return-void

    .line 279
    :cond_2
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 280
    const-string v0, "IceDataCollector"

    const-string v2, "terminating sampling and flushing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b()V

    .line 283
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/app/Activity;)Landroid/app/Activity;

    .line 286
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    .line 287
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
