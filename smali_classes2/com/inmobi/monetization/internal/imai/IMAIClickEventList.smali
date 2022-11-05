.class public Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;
.super Ljava/util/ArrayList;
.source "IMAIClickEventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/inmobi/monetization/internal/imai/db/ClickData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2f06392ad58e8bbL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLoggedClickEvents()Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;
    .locals 8

    .prologue
    .line 22
    const-class v2, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    monitor-enter v2

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getNoOfEvents()I

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getImai()Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->getmDefaultEventsBatch()I

    move-result v0

    .line 26
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getImai()Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/monetization/internal/configs/IMAIConfigParams;->getmMaxDb()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->setDBLimit(I)V

    .line 27
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getClickEvents(I)Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    move-result-object v1

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/imai/db/ClickData;

    .line 31
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 33
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->deleteClickEvents(Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    :goto_1
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getClickEvent(J)Lcom/inmobi/monetization/internal/imai/db/ClickData;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/imai/db/ClickData;

    .line 70
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getClickId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 81
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Cant get click event"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 79
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method public declared-synchronized reduceRetryCount(I)V
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->getClickEvent(J)Lcom/inmobi/monetization/internal/imai/db/ClickData;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getRetryCount()I

    move-result v1

    .line 111
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->removeClickEvent(J)Z

    .line 112
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->getRetryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setRetryCount(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Cant reduce retry count"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeClickEvent(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->getClickEvent(J)Lcom/inmobi/monetization/internal/imai/db/ClickData;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 97
    :try_start_1
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Cant remove click event"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveClickEvents()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Save ping events"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/imai/db/ClickData;

    .line 54
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/imai/db/ClickDatabaseManager;->insertClick(Lcom/inmobi/monetization/internal/imai/db/ClickData;)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
