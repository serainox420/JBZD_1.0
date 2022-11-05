.class public Lcom/smartadserver/android/library/controller/a;
.super Ljava/lang/Object;
.source "SASAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/controller/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field public a:Lcom/smartadserver/android/library/controller/mraid/a;

.field public b:Lcom/smartadserver/android/library/controller/mraid/e;

.field public c:Lcom/smartadserver/android/library/controller/mraid/f;

.field private e:Lcom/smartadserver/android/library/ui/SASAdView;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    .line 59
    const-string v0, "https://www.saspreview.com/current/app/apppreview?iid=%s&timestamp=%s&s=%s"

    sput-object v0, Lcom/smartadserver/android/library/controller/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 66
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/a;->g()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/model/a;)V

    return-void
.end method

.method private a(Lcom/smartadserver/android/library/model/a;)V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/a$4;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/controller/a$4;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 459
    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a([Ljava/lang/String;)V

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->d()[Lcom/smartadserver/android/library/model/d;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/a;->d()[Lcom/smartadserver/android/library/model/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a([Lcom/smartadserver/android/library/model/d;)V

    .line 473
    :cond_1
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "create MRAID controller"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    .line 75
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/e;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/e;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    .line 77
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v1, Lcom/smartadserver/android/library/controller/a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/a$1;-><init>(Lcom/smartadserver/android/library/controller/a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 617
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "enableListeners"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/e;->e()V

    .line 621
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 639
    iput p1, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 640
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;Z)V
    .locals 13

    .prologue
    .line 313
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v3, "loading"

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 315
    if-eqz p9, :cond_3

    .line 317
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 319
    new-instance v2, Lcom/smartadserver/android/library/controller/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move/from16 v0, p7

    int-to-long v6, v0

    add-long/2addr v6, v4

    move-object v3, p0

    move-object/from16 v4, p6

    move/from16 v5, p9

    invoke-direct/range {v2 .. v7}, Lcom/smartadserver/android/library/controller/a$a;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/SASAdView$a;ZJ)V

    .line 322
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/d/a;->a(Landroid/content/Context;)Lcom/smartadserver/android/library/d/a;

    move-result-object v5

    .line 323
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v5, p1, p2, v0, v1}, Lcom/smartadserver/android/library/d/a;->b(ILjava/lang/String;ILjava/lang/String;)Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v3

    .line 325
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartadserver/android/library/g/c;->e(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/smartadserver/android/library/model/SASAdElement;->isNeedsDataConnection()Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    :cond_0
    new-instance v4, Lcom/smartadserver/android/library/controller/a$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/smartadserver/android/library/controller/a$2;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/controller/a$a;Lcom/smartadserver/android/library/model/SASAdElement;)V

    .line 333
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 349
    :goto_0
    new-instance v3, Lcom/smartadserver/android/library/controller/a$3;

    move-object v4, p0

    move v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/smartadserver/android/library/controller/a$3;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/d/a;ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V

    .line 403
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v4, v4, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    move v5, p1

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object v10, v3

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/smartadserver/android/library/e/a/c;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;)V

    .line 446
    :goto_1
    return-void

    .line 337
    :cond_1
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdCachingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v3

    .line 405
    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/controller/a$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 407
    invoke-virtual {v3}, Lcom/smartadserver/android/library/exception/SASAdCachingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_2
    :try_start_1
    new-instance v3, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverFromCacheException;

    const-string v4, "No ad to deliver from cache with requested parameters"

    invoke-direct {v3, v4}, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverFromCacheException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/controller/a$a;->adLoadingFailed(Ljava/lang/Exception;)V
    :try_end_1
    .catch Lcom/smartadserver/android/library/exception/SASAdCachingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 415
    :cond_3
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 418
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v2, p2, v3, v0}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;

    move-result-object v3

    .line 421
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)Z

    move-result v4

    .line 422
    if-eqz v4, :cond_5

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v3, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->previewUrlExpirationDate:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    const-string v2, ""

    .line 429
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "monrevecestdevendredescocktailssuruneplagegrecque"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/smartadserver/android/library/g/c;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 435
    :goto_2
    sget-object v5, Lcom/smartadserver/android/library/controller/a;->g:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v3, v3, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 443
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v8, v2, Lcom/smartadserver/android/library/ui/SASAdView;->f:Lcom/smartadserver/android/library/e/a/c;

    new-instance v2, Lcom/smartadserver/android/library/controller/a$a;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move/from16 v0, p7

    int-to-long v10, v0

    add-long/2addr v6, v10

    move-object v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v7}, Lcom/smartadserver/android/library/controller/a$a;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/ui/SASAdView$a;ZJ)V

    move-object v3, v8

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v2

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/smartadserver/android/library/e/a/c;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 437
    :cond_5
    if-eqz v3, :cond_4

    .line 439
    const/4 v4, -0x1

    iput v4, v3, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;->insertionId:I

    .line 440
    invoke-static {v2, v3}, Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity;->a(Landroid/content/Context;Lcom/smartadserver/android/library/preview/SASPreviewHandlerActivity$PreviewConfig;)V

    goto :goto_3

    .line 431
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 482
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 483
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 484
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 485
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 486
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 488
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 489
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/smartadserver/android/library/model/SASAdElement;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 510
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayAd: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getHtmlContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getHtmlContents()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isTransferTouchEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_0
    sget-object v1, Lcom/smartadserver/android/library/controller/mraid/a;->b:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isPrefetchable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 527
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_1
    :goto_0
    const-string v4, "\"mraid.js\""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 537
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayAd: script, with mraid bridge inside script "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setHtmlContents(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a()V

    .line 547
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCloseButtonPosition()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 550
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/e;->a()V

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getCloseButtonPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/smartadserver/android/library/controller/mraid/f;->b(I)V

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->i:Lcom/smartadserver/android/library/controller/c;

    .line 561
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v4, v4, Lcom/smartadserver/android/library/ui/SASAdView;->j:Lcom/smartadserver/android/library/controller/b;

    .line 563
    iget-object v5, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v5, v5, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/d;

    .line 565
    monitor-enter v4

    .line 567
    :try_start_0
    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/c;->a()V

    .line 568
    invoke-virtual {v4}, Lcom/smartadserver/android/library/controller/b;->a()V

    .line 570
    iget-object v6, p0, Lcom/smartadserver/android/library/controller/a;->e:Lcom/smartadserver/android/library/ui/SASAdView;

    new-instance v7, Lcom/smartadserver/android/library/controller/a$5;

    invoke-direct {v7, p0, p1, v5, v1}, Lcom/smartadserver/android/library/controller/a$5;-><init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/model/SASAdElement;Lcom/smartadserver/android/library/ui/d;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    const-wide/16 v6, 0x2710

    :try_start_1
    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 595
    sget-object v1, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v5, "Wait finished"

    invoke-static {v1, v5}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/c;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    :cond_4
    invoke-virtual {v4}, Lcom/smartadserver/android/library/controller/b;->b()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 612
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    return v3

    .line 529
    :cond_5
    sget-boolean v4, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v4, :cond_1

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/smartadserver/android/library/g/c;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 547
    goto :goto_1

    .line 607
    :catch_0
    move-exception v0

    .line 610
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_7
    move v3, v2

    goto :goto_2

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    const-string v1, "disableListeners"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a;->b:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/e;->d()V

    .line 631
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 644
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 645
    iget v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    if-gez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    .line 649
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/controller/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendingLoadAdCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smartadserver/android/library/controller/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method
