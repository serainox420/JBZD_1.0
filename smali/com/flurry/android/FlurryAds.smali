.class public Lcom/flurry/android/FlurryAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/flurry/android/FlurryAds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static clearLocation()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 552
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static clearTargetingKeywords()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 680
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9087
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->clearKeywords()V

    goto :goto_0
.end method

.method public static clearUserCookies()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 624
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9076
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v0}, Lcom/flurry/sdk/e;->clearUserCookies()V

    goto :goto_0
.end method

.method public static displayAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 394
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7473
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1
    if-nez p0, :cond_2

    .line 401
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    if-nez p1, :cond_3

    .line 405
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 409
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to displayAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_4
    if-nez p2, :cond_5

    .line 413
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to displayAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 419
    if-nez v0, :cond_6

    .line 420
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while displaying Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7228
    :cond_6
    :try_start_1
    iget-object v0, v0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 424
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v0

    .line 425
    if-nez v0, :cond_9

    .line 426
    new-instance v0, Lcom/flurry/sdk/v;

    invoke-direct {v0, p0, p2, p1}, Lcom/flurry/sdk/v;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    move-object v1, v0

    .line 7460
    :goto_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 7461
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7462
    :cond_7
    sget-object v0, Lcom/flurry/sdk/bb;->r:Lcom/flurry/sdk/bb;

    invoke-static {v1, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 7473
    :cond_8
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 429
    :cond_9
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v1

    if-eq p2, v1, :cond_c

    .line 430
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "An ad must be displayed with the same context and viewGroup as the fetch."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 7463
    :cond_a
    :try_start_4
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7464
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/v$5;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/v$5;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7470
    :cond_b
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7471
    invoke-static {v1}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_c
    move-object v1, v0

    goto :goto_1
.end method

.method public static enableTestAds(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 696
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 697
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9091
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/e;->setEnableTestAds(Z)V

    goto :goto_0
.end method

.method public static fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 322
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    if-nez p0, :cond_2

    .line 329
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    if-nez p1, :cond_3

    .line 333
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 337
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to fetchAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_4
    if-nez p2, :cond_5

    .line 341
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_5
    if-nez p3, :cond_6

    .line 345
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "FlurryAdSize passed to fetchAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 351
    if-nez v0, :cond_7

    .line 352
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while fetching Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4228
    :cond_7
    :try_start_1
    iget-object v0, v0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 356
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v0

    .line 357
    if-nez v0, :cond_9

    .line 358
    new-instance v0, Lcom/flurry/sdk/v;

    invoke-direct {v0, p0, p2, p1}, Lcom/flurry/sdk/v;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    move-object v1, v0

    .line 4444
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/flurry/sdk/v;->k:Z

    .line 4445
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 4446
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5289
    iget-object v0, v1, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 4447
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    .line 4456
    :cond_8
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 361
    :cond_9
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v1

    if-eq p2, v1, :cond_d

    .line 362
    invoke-virtual {v0}, Lcom/flurry/sdk/v;->a()V

    .line 363
    new-instance v0, Lcom/flurry/sdk/v;

    invoke-direct {v0, p0, p2, p1}, Lcom/flurry/sdk/v;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    goto :goto_1

    .line 4448
    :cond_a
    :try_start_4
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4449
    invoke-static {v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;)V

    goto :goto_2

    .line 4450
    :cond_b
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v2, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4453
    :cond_c
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iput-object v0, v1, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    .line 6289
    iget-object v0, v1, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 4454
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_d
    move-object v1, v0

    goto :goto_1
.end method

.method public static getAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 72
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    if-nez p0, :cond_2

    .line 79
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Context passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    if-nez p1, :cond_3

    .line 83
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 87
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to getAd was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_4
    if-nez p2, :cond_5

    .line 91
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "ViewGroup passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    if-nez p3, :cond_6

    .line 95
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "FlurryAdSize passed to getAd was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 99
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "getAd must be called from UI thread."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_7
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 106
    if-nez v1, :cond_8

    .line 107
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    sget-object v2, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v3, "Exception while getting Ad : "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1228
    :cond_8
    :try_start_1
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 111
    invoke-virtual {v1, p0, p1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v1

    .line 112
    if-nez v1, :cond_a

    .line 113
    new-instance v1, Lcom/flurry/sdk/v;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/v;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 122
    :cond_9
    :goto_1
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->o()Z

    move-result v0

    goto/16 :goto_0

    .line 116
    :cond_a
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    if-ne p0, v2, :cond_b

    invoke-virtual {v1}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v2

    if-eq p2, v2, :cond_9

    .line 117
    :cond_b
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->a()V

    .line 118
    new-instance v1, Lcom/flurry/sdk/v;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/v;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static initializeAds(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public static isAdAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 180
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    if-nez p0, :cond_3

    .line 187
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Context passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    if-nez p1, :cond_4

    .line 191
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 195
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdAvailable was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_5
    if-nez p2, :cond_6

    .line 199
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "FlurryAdSize passed to isAdAvailable was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_6
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 205
    if-nez v1, :cond_7

    .line 206
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    sget-object v2, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v3, "Exception while checking Ads if available: "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2228
    :cond_7
    :try_start_1
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 210
    invoke-virtual {v1, p0, p1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->k()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static isAdReady(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 237
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    if-nez p0, :cond_3

    .line 244
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 248
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Ad space name passed to isAdReady was empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 254
    if-nez v1, :cond_5

    .line 255
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    sget-object v2, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v3, "Exception while checking Ads if ready: "

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3228
    :cond_5
    :try_start_1
    iget-object v1, v1, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 259
    invoke-virtual {v1, p0}, Lcom/flurry/sdk/w;->a(Ljava/lang/String;)Lcom/flurry/sdk/v;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/flurry/sdk/v;->k()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method public static removeAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 463
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1
    if-nez p0, :cond_2

    .line 470
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Context passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_2
    if-nez p1, :cond_3

    .line 474
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 478
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Ad space name passed to removeAd was empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_4
    if-nez p2, :cond_5

    .line 482
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ViewGroup passed to removeAd was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 488
    if-nez v0, :cond_6

    .line 489
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    sget-object v1, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v2, "Exception while removing Ad: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8228
    :cond_6
    :try_start_1
    iget-object v0, v0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 493
    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setAdListener(Lcom/flurry/android/FlurryAdListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 513
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9052
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/flurry/sdk/j;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static setCustomAdNetworkHandler(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 2

    .prologue
    .line 564
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 565
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 568
    :cond_0
    if-nez p0, :cond_1

    .line 569
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9060
    iput-object p0, v0, Lcom/flurry/sdk/j;->b:Lcom/flurry/android/ICustomAdNetworkHandler;

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 532
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "Explicit"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 537
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 538
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 540
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v1

    const-string v2, "ExplicitLocation"

    .line 541
    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTargetingKeywords(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 659
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void

    .line 662
    :cond_0
    if-nez p0, :cond_1

    .line 663
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "targetingKeywords Map passed to setTargetingKeywords was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9082
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/e;->setKeywords(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setUserCookies(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 603
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void

    .line 606
    :cond_0
    if-nez p0, :cond_1

    .line 607
    sget-object v0, Lcom/flurry/android/FlurryAds;->a:Ljava/lang/String;

    const-string v1, "userCookies Map passed to setUserCookies was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 9072
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/e;->setUserCookies(Ljava/util/Map;)V

    goto :goto_0
.end method
