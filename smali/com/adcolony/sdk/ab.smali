.class Lcom/adcolony/sdk/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ad;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ad;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field e:Lorg/json/JSONArray;

.field f:I

.field g:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ab;->b:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/ab;->c:I

    .line 22
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ab;->e:Lorg/json/JSONArray;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/ab;->f:I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    .line 30
    return-void
.end method


# virtual methods
.method a(I)Lcom/adcolony/sdk/ad;
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ad;

    .line 133
    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    monitor-exit v1

    .line 143
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/adcolony/sdk/ab;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Lcom/adcolony/sdk/ad;->b()V

    .line 143
    monitor-exit v1

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/adcolony/sdk/ad;)Lcom/adcolony/sdk/ad;
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/adcolony/sdk/ad;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    monitor-exit v1

    return-object p1

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/adcolony/sdk/ab$1;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/ab$1;-><init>(Lcom/adcolony/sdk/ab;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 42
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 222
    iget-object v3, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 226
    if-eqz v0, :cond_0

    .line 228
    new-instance v4, Lcom/adcolony/sdk/z;

    invoke-direct {v4, p2}, Lcom/adcolony/sdk/z;-><init>(Lorg/json/JSONObject;)V

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 230
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    .line 234
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ac;

    invoke-interface {v1, v4}, Lcom/adcolony/sdk/ac;->a(Lcom/adcolony/sdk/z;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    :try_start_2
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 239
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 244
    :cond_0
    monitor-exit v3

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    const-string v0, "m_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "m_id"

    iget v1, p0, Lcom/adcolony/sdk/ab;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adcolony/sdk/ab;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    :cond_0
    const-string v0, "m_origin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    const-string v0, "m_origin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    :cond_1
    const-string v0, "m_target"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    if-nez v0, :cond_3

    .line 271
    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 274
    monitor-exit p0

    .line 289
    :cond_2
    :goto_0
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCMessageDispatcher\'s send_message(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0

    .line 278
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/adcolony/sdk/ab;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ad;

    .line 279
    if-eqz v0, :cond_2

    .line 281
    invoke-interface {v0, p1}, Lcom/adcolony/sdk/ad;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 155
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/ab;->g:Z

    .line 158
    iget-object v3, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ad;

    .line 163
    invoke-interface {v0}, Lcom/adcolony/sdk/ad;->c()V

    .line 160
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 165
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    const/4 v0, 0x0

    .line 169
    :try_start_2
    iget-object v2, p0, Lcom/adcolony/sdk/ab;->e:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 171
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->e:Lorg/json/JSONArray;

    .line 172
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/ab;->e:Lorg/json/JSONArray;

    move-object v2, v0

    .line 175
    :goto_1
    if-eqz v2, :cond_3

    .line 177
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    .line 178
    :goto_2
    if-ge v1, v3, :cond_3

    .line 182
    :try_start_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    const-string v4, "m_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    const-string v5, "m_origin"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 187
    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 189
    sget-object v5, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 191
    sget-object v5, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v6, Lcom/adcolony/sdk/ab$2;

    invoke-direct {v6, p0, v4, v0}, Lcom/adcolony/sdk/ab$2;-><init>(Lcom/adcolony/sdk/ab;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 165
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_2
    :try_start_6
    invoke-virtual {p0, v4, v0}, Lcom/adcolony/sdk/ab;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 206
    :catch_0
    move-exception v0

    .line 208
    :try_start_7
    sget-object v4, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v5, "JSON error from message dispatcher\'s update_modules(): "

    invoke-virtual {v4, v5}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 212
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method b(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ab;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
