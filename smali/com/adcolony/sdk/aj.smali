.class Lcom/adcolony/sdk/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->a:J

    .line 15
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->b:J

    .line 25
    iput-boolean v2, p0, Lcom/adcolony/sdk/aj;->j:Z

    .line 26
    iput-boolean v2, p0, Lcom/adcolony/sdk/aj;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "SessionInfo.stopped"

    new-instance v1, Lcom/adcolony/sdk/aj$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/aj$1;-><init>(Lcom/adcolony/sdk/aj;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 48
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 277
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->m:Z

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->n:Z

    if-eqz v0, :cond_2

    .line 180
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-boolean v1, v0, Lcom/adcolony/sdk/h;->E:Z

    .line 181
    iput-boolean v1, p0, Lcom/adcolony/sdk/aj;->n:Z

    .line 185
    :cond_2
    iput-wide v4, p0, Lcom/adcolony/sdk/aj;->c:J

    .line 186
    iput-wide v4, p0, Lcom/adcolony/sdk/aj;->d:J

    .line 189
    iput-boolean v3, p0, Lcom/adcolony/sdk/aj;->m:Z

    .line 190
    iput-boolean v3, p0, Lcom/adcolony/sdk/aj;->j:Z

    .line 191
    iput-boolean v1, p0, Lcom/adcolony/sdk/aj;->q:Z

    .line 192
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    if-eqz p1, :cond_3

    .line 196
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    const-string v1, "id"

    invoke-static {}, Lcom/adcolony/sdk/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "SessionInfo.on_start"

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 202
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/adcolony/sdk/aj;->m:Z

    .line 215
    iput-boolean v0, p0, Lcom/adcolony/sdk/aj;->j:Z

    .line 218
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->a()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 224
    const-string v1, "session_length"

    iget-wide v2, p0, Lcom/adcolony/sdk/aj;->c:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 225
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v2, "SessionInfo.on_stop"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 228
    invoke-static {}, Lcom/adcolony/sdk/a;->a()V

    .line 231
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 233
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "SESSION STOP"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 234
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 242
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget-object v0, v0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ad;

    .line 246
    new-instance v2, Lcom/adcolony/sdk/z;

    const-string v3, "SessionInfo.on_pause"

    invoke-interface {v0}, Lcom/adcolony/sdk/ad;->a()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/aj;->k:Z

    .line 250
    invoke-static {}, Lcom/adcolony/sdk/a;->a()V

    .line 251
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    .line 259
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    if-eqz v0, :cond_1

    .line 261
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget-object v1, v0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 263
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    iget-object v0, v0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ad;

    .line 265
    new-instance v3, Lcom/adcolony/sdk/z;

    const-string v4, "SessionInfo.on_resume"

    invoke-interface {v0}, Lcom/adcolony/sdk/ad;->a()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/z;->b()V

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/aj;->k:Z

    .line 270
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1388

    const-wide/16 v2, 0x64

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 58
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->o:Z

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->f:J

    .line 63
    invoke-static {}, Lcom/adcolony/sdk/a;->a()V

    .line 66
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->d:J

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 68
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Ending session due to excessive suspend time: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->d:J

    long-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/adcolony/sdk/u;->b(D)Lcom/adcolony/sdk/u;

    .line 141
    :cond_1
    :goto_1
    sget-object v0, Lcom/adcolony/sdk/u;->c:Lcom/adcolony/sdk/u;

    const-string v1, "AdColony session ending, releasing Activity reference."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 142
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-boolean v6, v0, Lcom/adcolony/sdk/h;->E:Z

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    .line 144
    iput-boolean v6, p0, Lcom/adcolony/sdk/aj;->n:Z

    .line 145
    iput-boolean v6, p0, Lcom/adcolony/sdk/aj;->r:Z

    .line 146
    invoke-virtual {p0}, Lcom/adcolony/sdk/aj;->b()V

    .line 150
    new-instance v0, Lcom/adcolony/sdk/au$b;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v4, v5}, Lcom/adcolony/sdk/au$b;-><init>(D)V

    .line 151
    :goto_2
    iget-boolean v1, p0, Lcom/adcolony/sdk/aj;->q:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/adcolony/sdk/au$b;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    iget-boolean v1, p0, Lcom/adcolony/sdk/aj;->r:Z

    if-nez v1, :cond_c

    .line 161
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "SessionInfo.stopped message received, ending ADC.update_module() spam."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 162
    return-void

    .line 72
    :cond_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->j:Z

    if-nez v0, :cond_9

    .line 75
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->l:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->k:Z

    if-nez v0, :cond_4

    .line 77
    iput-boolean v7, p0, Lcom/adcolony/sdk/aj;->l:Z

    .line 78
    invoke-virtual {p0}, Lcom/adcolony/sdk/aj;->c()V

    .line 81
    :cond_4
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->p:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    iput-boolean v6, p0, Lcom/adcolony/sdk/aj;->p:Z

    .line 84
    iput-wide v8, p0, Lcom/adcolony/sdk/aj;->h:J

    .line 87
    :cond_5
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->p:Z

    if-eqz v0, :cond_6

    .line 89
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->h:J

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->e:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->h:J

    .line 90
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->h:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_6

    .line 92
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Ending session due to excessive time between an Activity finishing and an onResume() event."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_1

    .line 96
    :cond_6
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->d:J

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->e:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->d:J

    .line 112
    :goto_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->j:Z

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->d:J

    cmp-long v0, v0, v10

    if-ltz v0, :cond_b

    move-wide v0, v2

    :goto_4
    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->e:J

    .line 113
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/aj;->a(J)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->f:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->g:J

    .line 117
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->g:J

    const-wide/16 v4, 0x1770

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    .line 119
    iget-wide v0, p0, Lcom/adcolony/sdk/aj;->c:J

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->g:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->c:J

    .line 123
    :cond_7
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/adcolony/sdk/aj;->i:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    .line 125
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/aj;->i:J

    .line 126
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->p:Lcom/adcolony/sdk/ae;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ae;->c()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    sget-object v1, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iput-object v0, v1, Lcom/adcolony/sdk/h;->B:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    const-string v1, "network_type"

    sget-object v4, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v4, v4, Lcom/adcolony/sdk/h;->B:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    new-instance v1, Lcom/adcolony/sdk/z;

    const-string v4, "Network.on_status_change"

    invoke-direct {v1, v4, v6, v0}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    goto/16 :goto_0

    .line 101
    :cond_9
    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->l:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/adcolony/sdk/aj;->k:Z

    if-eqz v0, :cond_a

    .line 103
    iput-boolean v7, p0, Lcom/adcolony/sdk/aj;->l:Z

    .line 104
    iput-boolean v7, p0, Lcom/adcolony/sdk/aj;->p:Z

    .line 105
    invoke-virtual {p0}, Lcom/adcolony/sdk/aj;->d()V

    .line 107
    :cond_a
    iput-wide v8, p0, Lcom/adcolony/sdk/aj;->d:J

    goto/16 :goto_3

    .line 112
    :cond_b
    const-wide/16 v0, 0x11

    goto :goto_4

    .line 157
    :cond_c
    invoke-static {}, Lcom/adcolony/sdk/a;->a()V

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/adcolony/sdk/aj;->a(J)V

    goto/16 :goto_2
.end method
