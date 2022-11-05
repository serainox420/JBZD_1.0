.class Lcom/adcolony/sdk/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/adcolony/sdk/t;

.field b:Lcom/adcolony/sdk/r;

.field c:Ljava/util/concurrent/ScheduledExecutorService;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/v;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/t;Lcom/adcolony/sdk/r;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/t;",
            "Lcom/adcolony/sdk/r;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/v;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/adcolony/sdk/ag;->a:Lcom/adcolony/sdk/t;

    .line 32
    iput-object p2, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    .line 33
    iput-object p3, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    iput-object p4, p0, Lcom/adcolony/sdk/ag;->d:Ljava/util/List;

    .line 35
    iput-object p5, p0, Lcom/adcolony/sdk/ag;->e:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method a(Lcom/adcolony/sdk/r;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/r;",
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/v;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    const-string v0, "index"

    invoke-virtual {p1}, Lcom/adcolony/sdk/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v0, "environment"

    invoke-virtual {p1}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v0, "version"

    invoke-virtual {p1}, Lcom/adcolony/sdk/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/v;

    .line 186
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ag;->b(Lcom/adcolony/sdk/v;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, "logs"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ScheduledExecutorService did not terminate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adcolony/sdk/ag$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ag$1;-><init>(Lcom/adcolony/sdk/ag;)V

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 91
    return-void
.end method

.method declared-synchronized a(Lcom/adcolony/sdk/v;)V
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    iget-object v0, v0, Lcom/adcolony/sdk/ag;->e:Ljava/util/HashMap;

    const-string v1, "controllerVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method

.method b(Lcom/adcolony/sdk/v;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adcolony/sdk/ag;->e:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 196
    const-string v1, "index"

    iget-object v2, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v2}, Lcom/adcolony/sdk/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v1, "environment"

    iget-object v2, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v2}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "version"

    iget-object v2, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v2}, Lcom/adcolony/sdk/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "level"

    invoke-virtual {p1}, Lcom/adcolony/sdk/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/adcolony/sdk/v;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v1, "level"

    invoke-virtual {p1}, Lcom/adcolony/sdk/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v1, "tag"

    invoke-virtual {p1}, Lcom/adcolony/sdk/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v1, "message"

    invoke-virtual {p1}, Lcom/adcolony/sdk/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    return-object v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    iget-object v1, p0, Lcom/adcolony/sdk/ag;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/r;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/adcolony/sdk/ag;->a:Lcom/adcolony/sdk/t;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/t;->a(Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/adcolony/sdk/ag;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    iget-object v0, v0, Lcom/adcolony/sdk/ag;->e:Ljava/util/HashMap;

    const-string v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Lcom/adcolony/sdk/v;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v3}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/adcolony/sdk/v;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/v;)V

    .line 151
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/adcolony/sdk/v;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v3}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/adcolony/sdk/v;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/v;)V

    .line 157
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/adcolony/sdk/v;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v3}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/adcolony/sdk/v;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/v;)V

    .line 163
    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 167
    new-instance v0, Lcom/adcolony/sdk/v;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/adcolony/sdk/ag;->b:Lcom/adcolony/sdk/r;

    invoke-virtual {v3}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/adcolony/sdk/v;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ag;->a(Lcom/adcolony/sdk/v;)V

    .line 169
    return-void
.end method
