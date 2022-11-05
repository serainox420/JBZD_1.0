.class public Lcom/flurry/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/flurry/sdk/fg;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/flurry/sdk/fg;

    invoke-direct {v0}, Lcom/flurry/sdk/fg;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    .line 59
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/flurry/sdk/r;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 49
    .line 50254
    invoke-interface {p1}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    .line 50255
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50256
    new-instance v6, Lcom/flurry/sdk/gx;

    invoke-direct {v6}, Lcom/flurry/sdk/gx;-><init>()V

    .line 50257
    sget-object v0, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 50258
    sget v0, Lcom/flurry/sdk/gx$a;->b:I

    iput v0, v6, Lcom/flurry/sdk/gx;->d:I

    .line 50264
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 50260
    :goto_0
    return-void

    .line 50261
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bc;->ae:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto :goto_0
.end method

.method private a(Lcom/flurry/sdk/a;)V
    .locals 10

    .prologue
    const/4 v7, 0x6

    .line 416
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v2

    .line 419
    const-string v0, "expirationTimeEpochSeconds"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    .line 430
    :cond_0
    :goto_0
    const/4 v6, 0x2

    .line 431
    const-string v0, "maxRetries"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 50195
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50196
    iget-object v7, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50197
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 443
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50198
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 444
    iget-object v3, v2, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    .line 445
    sget-object v2, Lcom/flurry/sdk/bc;->i:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->L:Lcom/flurry/sdk/bc;

    .line 446
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->M:Lcom/flurry/sdk/bc;

    .line 447
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->H:Lcom/flurry/sdk/bc;

    .line 448
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->I:Lcom/flurry/sdk/bc;

    .line 449
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->J:Lcom/flurry/sdk/bc;

    .line 450
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->j:Lcom/flurry/sdk/bc;

    .line 451
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/flurry/sdk/bc;->Z:Lcom/flurry/sdk/bc;

    .line 452
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 455
    :cond_2
    if-eqz v3, :cond_4

    .line 456
    sget-object v0, Lcom/flurry/sdk/fl;->a:[Ljava/lang/String;

    array-length v8, v0

    .line 457
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v8, :cond_3

    .line 458
    sget-object v0, Lcom/flurry/sdk/fl;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 459
    sget-object v0, Lcom/flurry/sdk/fl;->b:[Ljava/lang/String;

    aget-object v9, v0, v2

    sget-object v0, Lcom/flurry/sdk/fl;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 424
    :catch_0
    move-exception v2

    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "caught Exception with expirationTime parameter in onSendUrlAsync:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :catch_1
    move-exception v0

    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v2, "caught Exception with maxRetries parameter in onSendUrlAsync:2"

    invoke-static {v7, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 462
    :cond_3
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendUrlAsync: New Url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_4
    const/4 v0, 0x5

    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "BeaconTest: event name: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50199
    iget-object v8, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 466
    iget-object v8, v8, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50200
    iget-object v8, v8, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 466
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " beacon Url: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " adObj: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeaconTest: event name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50201
    iget-object v3, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 467
    iget-object v3, v3, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50202
    iget-object v3, v3, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " beacon Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, v1

    .line 470
    instance-of v0, v7, Lcom/flurry/sdk/t;

    if-eqz v0, :cond_b

    .line 471
    invoke-interface {v7}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 50204
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50205
    iget-object v7, v0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 472
    if-eqz v7, :cond_6

    .line 473
    sget-object v0, Lcom/flurry/sdk/mj$b;->d:Lcom/flurry/sdk/mj$b;

    iget-object v0, v0, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50206
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 474
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->T:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 475
    sget-object v0, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    iget-object v0, v0, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    sget v1, Lcom/flurry/sdk/mh;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_6
    :goto_4
    new-instance v0, Lcom/flurry/sdk/do;

    .line 50213
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 486
    iget-object v1, v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50214
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 50215
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50216
    iget-object v2, v2, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 487
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v8, p1, v3}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/do;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/util/HashMap;)V

    .line 489
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 50217
    iget-object v1, v1, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/dp;

    .line 489
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dp;->b(Lcom/flurry/sdk/kw;)V

    .line 497
    :cond_7
    :goto_5
    return-void

    .line 50207
    :cond_8
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 476
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->i:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50208
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 477
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->H:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50209
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 478
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->I:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50210
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 479
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->J:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 50211
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 480
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->j:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 481
    :cond_9
    sget-object v0, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    iget-object v0, v0, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    sget v1, Lcom/flurry/sdk/mh;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 50212
    :cond_a
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 482
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v1, Lcom/flurry/sdk/bc;->Z:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    sget-object v0, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    iget-object v0, v0, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    sget v1, Lcom/flurry/sdk/mh;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 491
    :cond_b
    new-instance v0, Lcom/flurry/sdk/do;

    .line 50218
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 491
    iget-object v1, v1, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 50219
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 50220
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50221
    iget-object v2, v2, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    .line 492
    iget-object v2, v2, Lcom/flurry/sdk/cn;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v7, p1, v3}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/do;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 494
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 50222
    iget-object v1, v1, Lcom/flurry/sdk/i;->f:Lcom/flurry/sdk/dp;

    .line 494
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dp;->b(Lcom/flurry/sdk/kw;)V

    goto/16 :goto_5

    :cond_c
    move-object v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 50251
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 691
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/ly;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/flurry/sdk/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 655
    const-string v0, "idHash"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 50235
    iget-object v1, v1, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/bg;

    .line 658
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/bg;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bf;

    .line 50236
    iget v2, v0, Lcom/flurry/sdk/bf;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/sdk/bf;->i:I

    .line 50237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/flurry/sdk/bf;->j:J

    .line 661
    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateViewCount:capType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50239
    iget-object v4, v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50240
    iget-object v4, v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 663
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",capRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50241
    iget v4, v0, Lcom/flurry/sdk/bf;->f:I

    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",totalCap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50242
    iget v4, v0, Lcom/flurry/sdk/bf;->g:I

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50243
    iget v4, v0, Lcom/flurry/sdk/bf;->i:I

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-static {v7, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50244
    iget v2, v0, Lcom/flurry/sdk/bf;->i:I

    .line 50245
    iget v3, v0, Lcom/flurry/sdk/bf;->f:I

    .line 666
    if-lt v2, v3, :cond_0

    .line 50246
    iget-object v2, p0, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 667
    invoke-virtual {v2}, Lcom/flurry/sdk/b;->a()Lcom/flurry/sdk/cs;

    move-result-object v2

    .line 668
    iget-object v2, v2, Lcom/flurry/sdk/cs;->b:Ljava/lang/String;

    .line 50247
    iget v3, v0, Lcom/flurry/sdk/bf;->i:I

    .line 50248
    iget v4, v0, Lcom/flurry/sdk/bf;->f:I

    .line 670
    if-le v3, v4, :cond_1

    .line 671
    const/4 v3, 0x6

    sget-object v4, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FlurryAdAction: !! rendering a capped object for id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50249
    iget-object v6, v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 674
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for adspace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 682
    :goto_1
    new-instance v2, Lcom/flurry/sdk/be;

    invoke-direct {v2}, Lcom/flurry/sdk/be;-><init>()V

    .line 683
    iput-object v0, v2, Lcom/flurry/sdk/be;->a:Lcom/flurry/sdk/bf;

    .line 684
    invoke-virtual {v2}, Lcom/flurry/sdk/be;->b()V

    goto/16 :goto_0

    .line 676
    :cond_1
    sget-object v3, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FlurryAdAction: hit cap for id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50250
    iget-object v5, v0, Lcom/flurry/sdk/bf;->b:Ljava/lang/String;

    .line 677
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for adspace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v7, v3, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 688
    :cond_2
    return-void
.end method

.method private static b(Lcom/flurry/sdk/a;I)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 616
    .line 50223
    iget-object v0, p0, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50224
    iget-object v2, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 621
    const-string v0, "idHash"

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50225
    iget-object v7, v0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/bg;

    .line 625
    invoke-virtual {v7, v6}, Lcom/flurry/sdk/bg;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bf;

    .line 627
    sget-object v1, Lcom/flurry/sdk/bc;->F:Lcom/flurry/sdk/bc;

    .line 630
    if-eqz v0, :cond_0

    .line 50226
    iget-wide v4, v0, Lcom/flurry/sdk/bf;->d:J

    .line 630
    invoke-static {v4, v5}, Lcom/flurry/sdk/bg;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    sget-object v3, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Discarding expired frequency cap info for id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50227
    iget-object v0, v0, Lcom/flurry/sdk/bf;->a:Lcom/flurry/sdk/da;

    .line 632
    invoke-virtual {v7, v0, v6}, Lcom/flurry/sdk/bg;->a(Lcom/flurry/sdk/da;Ljava/lang/String;)V

    .line 633
    const/4 v0, 0x0

    .line 637
    :cond_0
    if-eqz v0, :cond_2

    .line 50228
    iget v3, v0, Lcom/flurry/sdk/bf;->i:I

    .line 50229
    iget v0, v0, Lcom/flurry/sdk/bf;->f:I

    .line 637
    if-lt v3, v0, :cond_2

    .line 638
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Frequency cap exhausted for id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/flurry/sdk/bc;->E:Lcom/flurry/sdk/bc;

    .line 642
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    .line 50230
    iget-object v3, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 642
    invoke-virtual {v1, v3}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 50231
    iget-object v1, p0, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50232
    iget-object v3, v1, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50233
    iget-object v1, p0, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50234
    iget-object v4, v1, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 646
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v5, p1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto :goto_0

    .line 649
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 767
    new-instance v0, Lcom/flurry/sdk/gx;

    invoke-direct {v0}, Lcom/flurry/sdk/gx;-><init>()V

    .line 768
    sget v1, Lcom/flurry/sdk/gx$a;->a:I

    iput v1, v0, Lcom/flurry/sdk/gx;->d:I

    .line 769
    iput-object p0, v0, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    .line 770
    iput-object p1, v0, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    .line 771
    iput-boolean p2, v0, Lcom/flurry/sdk/gx;->c:Z

    .line 50252
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 773
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V
    .locals 8

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 698
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v2, "Unable to launch url, null context"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 752
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v7

    new-instance v0, Lcom/flurry/sdk/g$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/g$1;-><init>(Lcom/flurry/sdk/g;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/sdk/r;Z)V

    invoke-virtual {v7, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/a;I)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 72
    const/4 v0, 0x0

    .line 1055
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 73
    if-eqz v1, :cond_0

    .line 2055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 74
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 77
    :cond_0
    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "performAction:action="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v1, 0xa

    if-le p2, v1, :cond_2

    .line 79
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    sget-object v1, Lcom/flurry/sdk/g$2;->a:[I

    .line 3025
    iget-object v2, p1, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 85
    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 163
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50184
    iget-object v4, p1, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",triggered by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50194
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50185
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    const-string v1, "requiresCallComplete"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50187
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "Fire call complete"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50188
    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    .line 50189
    iput-object p1, v0, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 50190
    sget v1, Lcom/flurry/sdk/ha$a;->e:I

    iput v1, v0, Lcom/flurry/sdk/ha;->a:I

    .line 50191
    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->b()V

    goto :goto_0

    .line 4055
    :pswitch_1
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 5031
    iget-object v1, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 5055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 6035
    iget-object v4, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 6055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 7039
    iget-object v0, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 3286
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3288
    invoke-static {v2}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3289
    invoke-static {v1, v2}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 3291
    :cond_4
    const-string v5, "true"

    const-string v7, "native"

    invoke-virtual {p1, v7}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3292
    const-string v5, "true"

    const-string v8, "is_privacy"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3293
    if-nez v5, :cond_5

    move v5, v6

    .line 3294
    :goto_2
    if-eqz v7, :cond_6

    .line 3295
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v3, "Explictly instructed to use native browser"

    invoke-static {v11, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3297
    invoke-static {v1, v0}, Lcom/flurry/sdk/fo;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    move v5, v3

    .line 3293
    goto :goto_2

    .line 3299
    :cond_6
    iget-object v8, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v8, p1, v2}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 8262
    iget-boolean v0, v0, Lcom/flurry/sdk/ay;->g:Z

    .line 3300
    if-eqz v0, :cond_7

    .line 3302
    invoke-static {v4, v2, v5}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3304
    :cond_7
    if-nez v7, :cond_8

    move v3, v6

    :cond_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto/16 :goto_1

    .line 3309
    :cond_9
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9055
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 3310
    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3309
    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10055
    :pswitch_2
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 11031
    iget-object v0, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 11055
    iget-object v1, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 12035
    iget-object v1, v1, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 12055
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 13039
    iget-object v2, v2, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 9218
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9219
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 9220
    invoke-static {v4}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 9221
    invoke-static {v0, v4}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 9223
    :cond_a
    const-string v5, "true"

    const-string v7, "native"

    invoke-virtual {p1, v7}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 9224
    const-string v7, "true"

    const-string v8, "is_privacy"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 9225
    if-nez v7, :cond_b

    .line 9226
    :goto_3
    if-eqz v5, :cond_c

    .line 9227
    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v2, "Explictly instructed to use native browser"

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 9228
    iget-object v1, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v1, p1, v4}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9229
    invoke-static {v0, v1}, Lcom/flurry/sdk/fo;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_b
    move v6, v3

    .line 9225
    goto :goto_3

    .line 9231
    :cond_c
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->j()V

    .line 14078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 14262
    iget-boolean v2, v2, Lcom/flurry/sdk/ay;->g:Z

    .line 9232
    if-eqz v2, :cond_d

    .line 9233
    invoke-static {v1, v4, v6}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 9235
    :cond_d
    invoke-static {v0, v1, v4, v6}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 9240
    :cond_e
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15055
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 9241
    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9240
    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16055
    :pswitch_3
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 17031
    iget-object v1, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 17055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 18035
    iget-object v4, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 18055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 19039
    iget-object v0, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 15186
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 15188
    invoke-static {v2}, Lcom/flurry/sdk/mc;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 15189
    invoke-static {v1, v2}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 15191
    :cond_f
    const-string v5, "true"

    const-string v7, "native"

    invoke-virtual {p1, v7}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 15192
    const-string v5, "true"

    const-string v8, "is_privacy"

    invoke-virtual {p1, v8}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 15193
    if-nez v5, :cond_10

    move v5, v6

    .line 15194
    :goto_4
    if-eqz v7, :cond_11

    .line 15195
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v3, "Explictly instructed to use native browser"

    invoke-static {v11, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 15196
    iget-object v0, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15197
    invoke-static {v1, v0}, Lcom/flurry/sdk/fo;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_10
    move v5, v3

    .line 15193
    goto :goto_4

    .line 15199
    :cond_11
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->j()V

    .line 20078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 20262
    iget-boolean v0, v0, Lcom/flurry/sdk/ay;->g:Z

    .line 15200
    if-eqz v0, :cond_12

    .line 15201
    invoke-static {v4, v2, v5}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 15203
    :cond_12
    if-nez v7, :cond_13

    move v3, v6

    :cond_13
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto/16 :goto_1

    .line 15208
    :cond_14
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21055
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 15209
    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15208
    invoke-static {v9, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22055
    :pswitch_4
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 23035
    iget-object v0, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 21317
    const-string v1, "groupId"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21319
    invoke-interface {v0, v1}, Lcom/flurry/sdk/r;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24055
    :pswitch_5
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 25031
    iget-object v1, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 25055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 26035
    iget-object v4, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 26055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 23326
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    .line 23329
    if-eqz v0, :cond_15

    const-string v2, "hide_view"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 23330
    const-string v2, "hide_view"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 23334
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 23341
    :goto_5
    if-eqz v0, :cond_15

    .line 23342
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "Not processing click in the SDK."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23336
    :catch_0
    move-exception v2

    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "caught Exception with hideView parameter in onProcessRedirect:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_5

    .line 23348
    :cond_15
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23349
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23351
    const-string v0, "native"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 23354
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 23362
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 23363
    iget-object v5, p0, Lcom/flurry/sdk/g;->b:Lcom/flurry/sdk/fg;

    invoke-virtual {v5, p1, v2}, Lcom/flurry/sdk/fg;->a(Lcom/flurry/sdk/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23364
    invoke-static {v2}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23365
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 23366
    if-nez v0, :cond_16

    move v3, v6

    :cond_16
    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/r;Z)V

    goto/16 :goto_1

    .line 23356
    :catch_1
    move-exception v5

    sget-object v5, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "caught Exception with useNative parameter in onProcessRedirect:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v5, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_17
    move v0, v3

    goto :goto_6

    .line 27055
    :pswitch_6
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 28031
    iget-object v2, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 28055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 29035
    iget-object v3, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 29055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 30039
    iget-object v4, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 26377
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 26379
    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/flurry/sdk/bc;->n:Lcom/flurry/sdk/bc;

    .line 26380
    :goto_7
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    .line 30079
    iget-object v5, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 26380
    invoke-virtual {v1, v5}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 26382
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_1

    .line 26379
    :cond_18
    sget-object v0, Lcom/flurry/sdk/bc;->o:Lcom/flurry/sdk/bc;

    goto :goto_7

    .line 31055
    :pswitch_7
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 32031
    iget-object v2, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 32055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 33035
    iget-object v3, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 33055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 34039
    iget-object v4, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 30391
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30392
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 30393
    invoke-static {v5}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/flurry/sdk/bc;->p:Lcom/flurry/sdk/bc;

    .line 30394
    :goto_8
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v1

    .line 34079
    iget-object v6, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 30394
    invoke-virtual {v1, v6}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 30396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35055
    iget-object v6, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 30397
    iget-object v6, v6, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v7, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    invoke-virtual {v6, v7}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 30398
    const-string v6, "origin"

    sget-object v7, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    .line 35079
    iget-object v7, v7, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 30398
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30401
    :cond_19
    const-string v6, "VerifyPackageLog"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onVerifyPackage() called for pkg: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packageInstalled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/flurry/sdk/g;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v6, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 30402
    add-int/lit8 v5, p2, 0x1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_1

    .line 30393
    :cond_1a
    sget-object v0, Lcom/flurry/sdk/bc;->q:Lcom/flurry/sdk/bc;

    goto :goto_8

    .line 36055
    :pswitch_8
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 37031
    iget-object v0, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 35409
    const-string v1, "package"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 37055
    iget-object v2, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 38035
    iget-object v2, v2, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 35411
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fo;->b(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;)Z

    goto/16 :goto_1

    .line 119
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/a;)V

    goto/16 :goto_1

    .line 38500
    :pswitch_a
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    .line 39316
    invoke-static {}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/ec;

    move-result-object v0

    .line 39317
    if-eqz v0, :cond_3

    .line 39318
    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->a()V

    goto/16 :goto_1

    .line 40029
    :pswitch_b
    iget-object v0, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    .line 39504
    const-string v1, "__sendToServer"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "__sendToServer"

    .line 39505
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v1, v6

    .line 39506
    :goto_9
    const-string v0, "__sendToServer"

    .line 40041
    iget-object v2, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    if-eqz v2, :cond_1b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 40055
    :cond_1b
    :goto_a
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 41039
    iget-object v0, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 42078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 41130
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->a()Ljava/lang/String;

    move-result-object v2

    .line 43055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 39509
    iget-object v4, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 44029
    iget-object v5, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    .line 44055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 45039
    iget-object v7, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 45055
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 39514
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 45079
    iget-object v8, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 46078
    iget-object v0, v7, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 46328
    iget-object v9, v0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    .line 47070
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 39516
    :cond_1c
    :goto_b
    if-eqz v3, :cond_21

    .line 39517
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onLogEvent("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 39519
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {v2, v4, v1, v5}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bc;ZLjava/util/Map;)V

    .line 48078
    iget-object v0, v7, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 48332
    iget-object v1, v0, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/av;

    .line 49082
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49086
    iget-object v1, v0, Lcom/flurry/sdk/av;->d:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49087
    iget-object v0, v0, Lcom/flurry/sdk/av;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    move v1, v3

    .line 39505
    goto/16 :goto_9

    .line 40044
    :cond_1e
    iget-object v2, p1, Lcom/flurry/sdk/a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 47075
    :cond_1f
    iget-object v9, v0, Lcom/flurry/sdk/av;->d:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v0, v0, Lcom/flurry/sdk/av;->f:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_20
    move v3, v6

    .line 47078
    goto :goto_b

    .line 39522
    :cond_21
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event already logged for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50055
    :pswitch_c
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50056
    iget-object v2, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 50058
    iget-object v0, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50059
    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    .line 49529
    add-int/lit8 v0, v0, 0x1

    .line 49530
    const-string v1, "offset"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49531
    if-eqz v4, :cond_23

    .line 49532
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_22
    move v3, v1

    :goto_c
    packed-switch v3, :pswitch_data_1

    .line 49541
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v1, v0

    .line 50084
    :goto_d
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50085
    iget-object v2, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50086
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50087
    iget-object v3, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 50065
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "goToFrame: triggering event = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50088
    iget-object v5, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50089
    iget-object v5, v5, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 50065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50091
    iget-object v0, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50092
    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    .line 50066
    if-eq v1, v0, :cond_3

    .line 50094
    iget-object v0, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50095
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 50066
    iget-object v0, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 50067
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "goToFrame: currentIndex = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50097
    iget-object v5, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50098
    iget v5, v5, Lcom/flurry/sdk/ay;->e:I

    .line 50067
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and go to index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v0, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50100
    iget-object v0, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50101
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 50068
    iget-object v0, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 50103
    iget-object v4, v3, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50102
    invoke-virtual {v4}, Lcom/flurry/sdk/ay;->c()Lcom/flurry/sdk/bd;

    move-result-object v4

    .line 50070
    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    iget-object v0, v0, Lcom/flurry/sdk/cr;->d:Ljava/lang/String;

    .line 50071
    invoke-virtual {v4}, Lcom/flurry/sdk/bd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 50072
    sget-object v5, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "goToFrame: Moving now from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/flurry/sdk/bd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v5, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50073
    sget-object v4, Lcom/flurry/sdk/bd;->b:Lcom/flurry/sdk/bd;

    invoke-virtual {v4}, Lcom/flurry/sdk/bd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50074
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/au;->a(I)V

    .line 50104
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50105
    iget-object v0, v0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 50075
    invoke-static {v0, v2}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Z

    goto/16 :goto_1

    .line 49532
    :sswitch_0
    const-string v5, "next"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto/16 :goto_c

    :sswitch_1
    const-string v3, "current"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v3, v6

    goto/16 :goto_c

    .line 50061
    :pswitch_d
    iget-object v0, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50062
    iget v0, v0, Lcom/flurry/sdk/ay;->e:I

    .line 49534
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 49535
    goto/16 :goto_d

    .line 49542
    :catch_2
    move-exception v1

    .line 49543
    sget-object v2, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "caught: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v2, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_23
    move v1, v0

    goto/16 :goto_d

    .line 50078
    :cond_24
    sget-object v5, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "goToFrame: Already a takeover Ad, just move to next frame. "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/flurry/sdk/bd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to format "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v5, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50079
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/au;->a(I)V

    .line 50080
    const/4 v0, 0x0

    invoke-static {v2, v0, v6}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 50144
    :pswitch_e
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50145
    iget-object v1, v0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 50146
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50109
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v2, Lcom/flurry/sdk/bc;->p:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 50147
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50109
    iget-object v0, v0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    sget-object v2, Lcom/flurry/sdk/bc;->q:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 50148
    :cond_25
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50110
    iget-object v0, v0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    .line 50149
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 50110
    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v2, v3

    .line 50116
    :goto_e
    instance-of v0, v1, Lcom/flurry/sdk/v;

    if-eqz v0, :cond_26

    move-object v0, v1

    .line 50117
    check-cast v0, Lcom/flurry/sdk/v;

    .line 50151
    iget-object v0, v0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 50150
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v0

    sget-object v4, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/bd;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50117
    if-eqz v0, :cond_26

    move v3, v6

    .line 50122
    :cond_26
    instance-of v0, v1, Lcom/flurry/sdk/q;

    if-nez v0, :cond_27

    if-eqz v3, :cond_2a

    .line 50123
    :cond_27
    const/16 v0, 0xa

    if-le p2, v0, :cond_28

    .line 50124
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50128
    :cond_28
    const-string v0, "delay"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50129
    const-wide/16 v2, 0x1e

    .line 50130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 50132
    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    .line 50152
    :cond_29
    :goto_f
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50153
    iget-object v0, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 50139
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1, v0, v2, v3, v6}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/au;JZ)V

    goto/16 :goto_1

    .line 50134
    :catch_3
    move-exception v4

    sget-object v4, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "caught Exception with delay parameter in nextAdUnit:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v4, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 50154
    :cond_2a
    iget-object v0, p1, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 50155
    iget-object v0, v0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 50141
    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5, v2}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/au;JZ)V

    goto/16 :goto_1

    .line 139
    :pswitch_f
    invoke-static {p1, p2}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/a;I)V

    goto/16 :goto_1

    .line 143
    :pswitch_10
    invoke-static {p1}, Lcom/flurry/sdk/g;->b(Lcom/flurry/sdk/a;)V

    goto/16 :goto_1

    .line 50156
    :pswitch_11
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "closing ad"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50157
    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    .line 50158
    iput-object p1, v0, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 50159
    iput v3, v0, Lcom/flurry/sdk/ha;->c:I

    .line 50160
    sget v1, Lcom/flurry/sdk/ha$a;->b:I

    iput v1, v0, Lcom/flurry/sdk/ha;->a:I

    .line 50161
    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->b()V

    goto/16 :goto_1

    .line 50163
    :pswitch_12
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "notify user"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50164
    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    .line 50165
    iput-object p1, v0, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 50166
    iput p2, v0, Lcom/flurry/sdk/ha;->c:I

    .line 50167
    sget v1, Lcom/flurry/sdk/ha$a;->a:I

    iput v1, v0, Lcom/flurry/sdk/ha;->a:I

    .line 50168
    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->b()V

    goto/16 :goto_1

    .line 50170
    :pswitch_13
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "expanding ad"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50171
    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    .line 50172
    iput-object p1, v0, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 50173
    iput v3, v0, Lcom/flurry/sdk/ha;->c:I

    .line 50174
    sget v1, Lcom/flurry/sdk/ha$a;->c:I

    iput v1, v0, Lcom/flurry/sdk/ha;->a:I

    .line 50175
    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->b()V

    goto/16 :goto_1

    .line 50177
    :pswitch_14
    sget-object v0, Lcom/flurry/sdk/g;->a:Ljava/lang/String;

    const-string v1, "closing ad"

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50178
    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    .line 50179
    iput-object p1, v0, Lcom/flurry/sdk/ha;->b:Lcom/flurry/sdk/a;

    .line 50180
    iput v3, v0, Lcom/flurry/sdk/ha;->c:I

    .line 50181
    sget v1, Lcom/flurry/sdk/ha$a;->d:I

    iput v1, v0, Lcom/flurry/sdk/ha;->a:I

    .line 50182
    invoke-virtual {v0}, Lcom/flurry/sdk/ha;->b()V

    goto/16 :goto_1

    :cond_2b
    move v2, v6

    goto/16 :goto_e

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 49532
    :sswitch_data_0
    .sparse-switch
        0x338af3 -> :sswitch_0
        0x432bbd79 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method
