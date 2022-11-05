.class Lcom/smartadserver/android/library/ui/a$b;
.super Ljava/util/TimerTask;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:J

.field final synthetic c:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 270
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 272
    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a$b;->a:J

    .line 273
    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a$b;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 276
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a$b;->b:J

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a$b;->a:J

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/a$b;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/smartadserver/android/library/ui/a$b;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 281
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 285
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->e(Lcom/smartadserver/android/library/ui/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 288
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 292
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/smartadserver/android/library/ui/a$b$1;

    invoke-direct {v2, p0}, Lcom/smartadserver/android/library/ui/a$b$1;-><init>(Lcom/smartadserver/android/library/ui/a$b;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->getCurrentPosition()I

    move-result v2

    .line 311
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setCurrentPosition(I)V

    .line 313
    int-to-long v4, v2

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a$b;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a$b;->b:J

    sub-long/2addr v4, v6

    .line 315
    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->h(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 318
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/smartadserver/android/library/ui/a$b$2;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$b$2;-><init>(Lcom/smartadserver/android/library/ui/a$b;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    :cond_1
    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->b()V

    .line 328
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/smartadserver/android/library/ui/a$b$3;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$b$3;-><init>(Lcom/smartadserver/android/library/ui/a$b;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_2
    :goto_1
    int-to-long v4, v2

    iput-wide v4, p0, Lcom/smartadserver/android/library/ui/a$b;->a:J

    .line 360
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->l(Lcom/smartadserver/android/library/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->l(Lcom/smartadserver/android/library/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a$c;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$c;->b(Lcom/smartadserver/android/library/ui/a$c;)I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 361
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->l(Lcom/smartadserver/android/library/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartadserver/android/library/ui/a$c;

    .line 362
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$c;->c(Lcom/smartadserver/android/library/ui/a$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 363
    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$c;->d(Lcom/smartadserver/android/library/ui/a$c;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 364
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v3

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$c;->d(Lcom/smartadserver/android/library/ui/a$c;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    goto :goto_2

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 305
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;Z)Z

    goto/16 :goto_0

    .line 337
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/smartadserver/android/library/ui/a$b;->b:J

    .line 340
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->h(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->j(Lcom/smartadserver/android/library/ui/a;)V

    .line 347
    :goto_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 348
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/smartadserver/android/library/ui/a$b$4;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$b$4;-><init>(Lcom/smartadserver/android/library/ui/a$b;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->k(Lcom/smartadserver/android/library/ui/a;)V

    goto :goto_3

    .line 368
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    return-void
.end method
