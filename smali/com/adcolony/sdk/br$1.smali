.class Lcom/adcolony/sdk/br$1;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/br;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/br;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/br;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;Z)Z

    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;J)J

    .line 89
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->S()I

    move-result v0

    .line 91
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/adcolony/sdk/cf;->a(J)Ljava/util/TreeMap;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    invoke-static {v2}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requested sendLogs with lastMessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iget-object v2, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    invoke-static {v2}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending logs with lastMessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v4

    iget v4, v4, Lcom/adcolony/sdk/cf;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 97
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 98
    invoke-static {v1}, Lcom/adcolony/sdk/co;->f(Ljava/util/Map;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 100
    :try_start_1
    const-string v2, "events"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "events"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string v1, "lastQueuedMessageId"

    .line 118
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->aC()Lcom/adcolony/sdk/cf;

    move-result-object v3

    iget v3, v3, Lcom/adcolony/sdk/cf;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 117
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "latestMessageLogged"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v7, Lcom/adcolony/sdk/br$1$1;

    invoke-direct {v7, p0}, Lcom/adcolony/sdk/br$1$1;-><init>(Lcom/adcolony/sdk/br$1;)V

    .line 129
    invoke-static {}, Lcom/adcolony/sdk/ce;->c()Lcom/adcolony/sdk/ce;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    sget-object v3, Lcom/adcolony/sdk/bn;->aC:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "logs"

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 129
    invoke-virtual/range {v0 .. v7}, Lcom/adcolony/sdk/ce;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;ILcom/adcolony/sdk/bk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_3
    new-instance v1, Lcom/adcolony/sdk/bs;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->t:Lcom/adcolony/sdk/bn$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred when sending logs ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adcolony/sdk/bs;-><init>(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred when sending logs ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v2, v0, v3, v4}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/br$1;->a(Lcom/adcolony/sdk/bs;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    invoke-static {v0}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No logs to send"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/adcolony/sdk/br$1;->b()V

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/br$1;->a:Lcom/adcolony/sdk/br;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
