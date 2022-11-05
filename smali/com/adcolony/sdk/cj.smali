.class Lcom/adcolony/sdk/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:J

.field f:J

.field g:J

.field h:J

.field i:I

.field j:J

.field k:J

.field l:Lcom/adcolony/sdk/by;

.field m:Lcom/adcolony/sdk/bv;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/cj;->a:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/cj;->b:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/cj;->c:I

    .line 94
    new-instance v0, Lcom/adcolony/sdk/by;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/by;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    .line 95
    new-instance v0, Lcom/adcolony/sdk/cj$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/cj$1;-><init>(Lcom/adcolony/sdk/cj;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/cj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 121
    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->e:J

    .line 122
    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->f:J

    .line 123
    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->g:J

    .line 124
    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->h:J

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/cj;->i:I

    .line 126
    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->j:J

    .line 127
    iget v0, p0, Lcom/adcolony/sdk/cj;->a:I

    iput v0, p0, Lcom/adcolony/sdk/cj;->d:I

    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 130
    return-void
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->f:J

    invoke-static {p1}, Lcom/adcolony/sdk/bn;->a(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/cj;->f:J

    .line 182
    return-void
.end method

.method a(J)V
    .locals 5

    .prologue
    .line 282
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->o()I

    move-result v0

    int-to-long v0, v0

    .line 283
    iget-object v2, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    iget-object v3, p0, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 284
    iget-object v2, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    iget-object v3, p0, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    invoke-virtual {v2, v3, p1, p2}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 286
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session timer starting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " repeats every "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 287
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/adcolony/sdk/cj$2;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/cj$2;-><init>(Lcom/adcolony/sdk/cj;)V

    .line 153
    iget-object v1, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 154
    return-void
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 294
    iput-wide p1, p0, Lcom/adcolony/sdk/cj;->k:J

    .line 295
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    .line 157
    iget v0, p0, Lcom/adcolony/sdk/cj;->d:I

    iget v1, p0, Lcom/adcolony/sdk/cj;->b:I

    if-eq v0, v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause session time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget v2, p0, Lcom/adcolony/sdk/cj;->c:I

    iput v2, p0, Lcom/adcolony/sdk/cj;->d:I

    .line 165
    iput-wide v0, p0, Lcom/adcolony/sdk/cj;->g:J

    .line 166
    iget v2, p0, Lcom/adcolony/sdk/cj;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adcolony/sdk/cj;->i:I

    .line 167
    iget-wide v2, p0, Lcom/adcolony/sdk/cj;->j:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/adcolony/sdk/cj;->e:J

    .line 170
    iput-wide v0, p0, Lcom/adcolony/sdk/cj;->j:J

    .line 174
    iget-object v0, p0, Lcom/adcolony/sdk/cj;->l:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/cj;->m:Lcom/adcolony/sdk/bv;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 176
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->c()V

    goto :goto_0
.end method

.method d()J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 185
    iget v2, p0, Lcom/adcolony/sdk/cj;->d:I

    iget v3, p0, Lcom/adcolony/sdk/cj;->a:I

    if-ne v2, v3, :cond_0

    .line 215
    :goto_0
    return-wide v0

    .line 188
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopSession time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->g:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 192
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    iget-wide v2, p0, Lcom/adcolony/sdk/cj;->g:J

    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->j:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    .line 197
    :goto_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->n()I

    move-result v0

    int-to-long v0, v0

    .line 201
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 202
    const-string v3, "paused_time_ms"

    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v3, "paused_count"

    iget v4, p0, Lcom/adcolony/sdk/cj;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "grace_period_ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "active_time_ms"

    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "error_bit_code"

    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "reset_session_timer_ms"

    .line 208
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bm;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 207
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ax()Lcom/adcolony/sdk/br;

    move-result-object v0

    const-string v1, "stop_session"

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/br;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    .line 213
    invoke-virtual {p0}, Lcom/adcolony/sdk/cj;->a()V

    goto/16 :goto_0

    .line 194
    :cond_1
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->j:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    goto :goto_1
.end method

.method e()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 220
    iget-wide v4, p0, Lcom/adcolony/sdk/cj;->g:J

    sub-long v4, v2, v4

    .line 222
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->n()I

    move-result v0

    int-to-long v6, v0

    .line 223
    iget-wide v8, p0, Lcom/adcolony/sdk/cj;->g:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 226
    :goto_0
    if-nez v0, :cond_1

    iget v8, p0, Lcom/adcolony/sdk/cj;->d:I

    iget v9, p0, Lcom/adcolony/sdk/cj;->b:I

    if-ne v8, v9, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resumeSession returned early"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    :goto_1
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    iget-wide v8, p0, Lcom/adcolony/sdk/cj;->j:J

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 233
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeMs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sessionResumedTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, p0, Lcom/adcolony/sdk/cj;->j:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    iget v2, p0, Lcom/adcolony/sdk/cj;->a:I

    iput v2, p0, Lcom/adcolony/sdk/cj;->d:I

    .line 238
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->o()I

    move-result v2

    int-to-long v2, v2

    .line 239
    iget v8, p0, Lcom/adcolony/sdk/cj;->d:I

    iget v9, p0, Lcom/adcolony/sdk/cj;->a:I

    if-ne v8, v9, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResumeSession: no paused session - creating a new one."

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-virtual {p0}, Lcom/adcolony/sdk/cj;->b()V

    goto :goto_1

    .line 243
    :cond_3
    if-eqz v0, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResumeSession: resume grace period expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    iget v0, p0, Lcom/adcolony/sdk/cj;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adcolony/sdk/cj;->i:I

    .line 250
    invoke-virtual {p0}, Lcom/adcolony/sdk/cj;->d()J

    .line 251
    invoke-virtual {p0}, Lcom/adcolony/sdk/cj;->b()V

    .line 254
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->u()V

    .line 255
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "GracePeriodExpired"

    .line 256
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 260
    :cond_4
    iput-wide v12, p0, Lcom/adcolony/sdk/cj;->g:J

    .line 261
    iget-wide v6, p0, Lcom/adcolony/sdk/cj;->h:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/adcolony/sdk/cj;->h:J

    .line 262
    iget v0, p0, Lcom/adcolony/sdk/cj;->b:I

    iput v0, p0, Lcom/adcolony/sdk/cj;->d:I

    .line 264
    sub-long/2addr v2, v4

    .line 265
    cmp-long v0, v2, v12

    if-gez v0, :cond_5

    .line 268
    :cond_5
    invoke-direct {p0}, Lcom/adcolony/sdk/cj;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResumeSession: normal resume after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method f()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->o()I

    move-result v0

    int-to-long v0, v0

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/cj;->a(J)V

    .line 277
    return-void
.end method

.method g()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->e:J

    return-wide v0
.end method

.method h()J
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/adcolony/sdk/cj;->k:J

    return-wide v0
.end method
