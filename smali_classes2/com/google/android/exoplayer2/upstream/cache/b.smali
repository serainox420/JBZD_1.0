.class public final Lcom/google/android/exoplayer2/upstream/cache/b;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:Lcom/google/android/exoplayer2/upstream/e;

.field private final d:Lcom/google/android/exoplayer2/upstream/e;

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private i:Lcom/google/android/exoplayer2/upstream/e;

.field private j:Z

.field private k:Landroid/net/Uri;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:J

.field private o:J

.field private p:Lcom/google/android/exoplayer2/upstream/cache/e;

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/d;ILcom/google/android/exoplayer2/upstream/cache/b$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 155
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 156
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Z

    .line 157
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Z

    .line 158
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->h:Z

    .line 160
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/e;

    .line 161
    if-eqz p4, :cond_3

    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/upstream/q;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer2/upstream/q;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/d;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/e;

    .line 166
    :goto_3
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    :cond_2
    move v1, v2

    .line 158
    goto :goto_2

    .line 164
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/e;

    goto :goto_3
.end method

.method private a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/e;

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->c(Ljava/lang/String;J)V

    .line 349
    :cond_0
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Z

    .line 371
    :cond_1
    return-void
.end method

.method private a(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->r:Z

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x0

    move-object v8, v0

    .line 271
    :goto_0
    if-nez v8, :cond_3

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    .line 275
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v2, v0

    .line 307
    :goto_1
    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/g;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    .line 308
    const/4 v3, 0x0

    .line 309
    const-wide/16 v4, 0x0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/upstream/e;->a(Lcom/google/android/exoplayer2/upstream/g;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 312
    const/4 v3, 0x1

    .line 337
    :goto_3
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 338
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 339
    iget-wide v0, v2, Lcom/google/android/exoplayer2/upstream/g;->d:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(J)V

    .line 341
    :cond_0
    return v3

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->f:Z

    if-eqz v0, :cond_2

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v8, v0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/e;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 276
    :cond_3
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/upstream/cache/e;->d:Z

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, v8, Lcom/google/android/exoplayer2/upstream/cache/e;->e:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    iget-wide v4, v8, Lcom/google/android/exoplayer2/upstream/cache/e;->b:J

    sub-long v4, v2, v4

    .line 280
    iget-wide v2, v8, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    sub-long v6, v2, v4

    .line 281
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    .line 282
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 284
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 285
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    move-object v2, v0

    .line 286
    goto :goto_1

    .line 289
    :cond_5
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/cache/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 290
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 297
    :cond_6
    :goto_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 298
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/e;

    if-eqz v1, :cond_8

    .line 299
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->c:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    .line 300
    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    move-object v2, v0

    goto/16 :goto_1

    .line 292
    :cond_7
    iget-wide v4, v8, Lcom/google/android/exoplayer2/upstream/cache/e;->c:J

    .line 293
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 294
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_4

    .line 302
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/e;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    .line 303
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    move-object v2, v0

    goto/16 :goto_1

    .line 307
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 313
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 317
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz v0, :cond_a

    move-object v1, v6

    .line 319
    :goto_5
    if-eqz v1, :cond_a

    .line 320
    instance-of v0, v1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 321
    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    .line 322
    if-nez v0, :cond_b

    .line 323
    const/4 v6, 0x0

    .line 330
    :cond_a
    if-eqz v6, :cond_c

    .line 331
    throw v6

    .line 327
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_5

    :cond_c
    move-wide v0, v4

    goto/16 :goto_3
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->a()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 362
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/e;)V

    .line 362
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->p:Lcom/google/android/exoplayer2/upstream/cache/e;

    :cond_2
    throw v0
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->e:Lcom/google/android/exoplayer2/upstream/cache/b$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/b$a;->a(JJ)V

    .line 376
    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:J

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 196
    if-nez p3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 200
    const/4 v0, -0x1

    goto :goto_0

    .line 203
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result v0

    .line 204
    if-ltz v0, :cond_4

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->b:Lcom/google/android/exoplayer2/upstream/e;

    if-ne v1, v2, :cond_3

    .line 206
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->s:J

    .line 208
    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    .line 209
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 210
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Ljava/io/IOException;)V

    .line 229
    throw v0

    .line 213
    :cond_4
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->j:Z

    if-eqz v1, :cond_5

    .line 216
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(J)V

    .line 217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 219
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->c()V

    .line 220
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 221
    :cond_6
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/b;->a([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/g;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, -0x1

    .line 172
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/g;->a:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    .line 173
    iget v1, p1, Lcom/google/android/exoplayer2/upstream/g;->g:I

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->l:I

    .line 174
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/g;->f:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    .line 175
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->n:J

    .line 176
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->q:Z

    if-nez v1, :cond_1

    :cond_0
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->h:Z

    if-eqz v1, :cond_5

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->r:Z

    .line 178
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->r:Z

    if-eqz v0, :cond_6

    .line 179
    :cond_2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/g;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 186
    :cond_3
    :goto_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Z)Z

    .line 187
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    return-wide v0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 183
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/g;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->o:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Ljava/io/IOException;)V

    .line 190
    throw v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->d()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/b;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/b;->a(Ljava/io/IOException;)V

    .line 246
    throw v0
.end method

.method public b()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->d:Lcom/google/android/exoplayer2/upstream/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->i:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b;->k:Landroid/net/Uri;

    goto :goto_0
.end method
