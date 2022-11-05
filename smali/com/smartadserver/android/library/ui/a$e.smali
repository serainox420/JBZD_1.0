.class Lcom/smartadserver/android/library/ui/a$e;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 1

    .prologue
    .line 386
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$e;->b:Ljava/util/HashSet;

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a$e;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/a;Lcom/smartadserver/android/library/ui/a$1;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a$e;-><init>(Lcom/smartadserver/android/library/ui/a;)V

    return-void
.end method


# virtual methods
.method public dispatchVPAIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native dispatchVPAIDEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v2, 0x0

    .line 396
    const/4 v0, -0x1

    .line 397
    const-string v3, "AdLoaded"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/smartadserver/android/library/ui/a$e$1;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$e$1;-><init>(Lcom/smartadserver/android/library/ui/a$e;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1, v4}, Lcom/smartadserver/android/library/ui/a;->e(Lcom/smartadserver/android/library/ui/a;Z)Z

    move-object v1, v2

    .line 479
    :goto_0
    if-eqz v1, :cond_1

    .line 480
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$e;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v2, v1}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 482
    if-ltz v0, :cond_0

    .line 483
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$e;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_1
    return-void

    .line 422
    :cond_2
    const-string v3, "AdStarted"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    const-string v0, "start"

    .line 425
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a$e;->c:Z

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    .line 426
    :cond_3
    const-string v3, "AdVideoFirstQuartile"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 427
    const-string v1, "firstQuartile"

    .line 428
    const/4 v0, 0x4

    goto :goto_0

    .line 429
    :cond_4
    const-string v3, "AdVideoMidpoint"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 430
    const-string v1, "midpoint"

    .line 431
    const/4 v0, 0x5

    goto :goto_0

    .line 432
    :cond_5
    const-string v3, "AdVideoThirdQuartile"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 433
    const-string v1, "thirdQuartile"

    .line 434
    const/4 v0, 0x6

    goto :goto_0

    .line 435
    :cond_6
    const-string v3, "AdPlaying"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 437
    iget-boolean v1, p0, Lcom/smartadserver/android/library/ui/a$e;->c:Z

    if-eqz v1, :cond_e

    .line 438
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v3, "resume"

    invoke-virtual {v1, v3}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    move-object v1, v2

    goto :goto_0

    .line 441
    :cond_7
    const-string v3, "AdPaused"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 442
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v3, "pause"

    invoke-virtual {v1, v3}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 444
    iput-boolean v4, p0, Lcom/smartadserver/android/library/ui/a$e;->c:Z

    move-object v1, v2

    goto/16 :goto_0

    .line 445
    :cond_8
    const-string v3, "AdError"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 446
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1, p2}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 450
    monitor-exit v1

    move-object v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_9
    const-string v3, "AdVideoComplete"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 452
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/smartadserver/android/library/ui/a$e$2;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$e$2;-><init>(Lcom/smartadserver/android/library/ui/a$e;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v1, v2

    goto/16 :goto_0

    .line 458
    :cond_a
    const-string v3, "AdSkipped"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "AdUserClose"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 459
    :cond_b
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    move-object v1, v2

    goto/16 :goto_0

    .line 460
    :cond_c
    const-string v3, "AdVolumeChange"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 461
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 462
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;Z)Z

    .line 463
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/smartadserver/android/library/ui/a$e$3;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/ui/a$e$3;-><init>(Lcom/smartadserver/android/library/ui/a$e;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v1, v2

    goto/16 :goto_0

    .line 470
    :cond_d
    const-string v3, "AdVideoStart"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 471
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->v(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 472
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/a;->b()V

    .line 473
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->w(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$e;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3, v1}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;Z)Z

    :cond_e
    move-object v1, v2

    goto/16 :goto_0
.end method
