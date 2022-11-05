.class public Lcom/inmobi/monetization/internal/InterstitialAd;
.super Lcom/inmobi/monetization/internal/Ad;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/InterstitialAd$a;
    }
.end annotation


# instance fields
.field b:J

.field c:Z

.field private d:Landroid/app/Activity;

.field private e:J

.field private f:Lcom/inmobi/re/container/IMWebView;

.field private g:J

.field private h:Ljava/lang/Object;

.field private i:Lcom/inmobi/commons/network/Response;

.field private j:Z

.field private k:Z

.field private l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

.field private m:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/inmobi/monetization/internal/Ad;-><init>(J)V

    .line 43
    iput-wide v4, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->g:J

    .line 44
    iput-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    .line 45
    iput-wide v4, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->b:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->c:Z

    .line 47
    iput-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    .line 51
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    .line 52
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    .line 354
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/InterstitialAd$a;-><init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    .line 359
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd$2;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/InterstitialAd$2;-><init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->m:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 82
    iput-object p1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    .line 83
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p2}, Lcom/inmobi/monetization/internal/Ad;-><init>(Ljava/lang/String;)V

    .line 43
    iput-wide v4, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->g:J

    .line 44
    iput-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    .line 45
    iput-wide v4, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->b:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->c:Z

    .line 47
    iput-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    .line 51
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    .line 52
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    .line 354
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/InterstitialAd$a;-><init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    .line 359
    new-instance v0, Lcom/inmobi/monetization/internal/InterstitialAd$2;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/InterstitialAd$2;-><init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->m:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 65
    iput-object p1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    .line 67
    return-void
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 169
    const/16 v0, 0xe

    .line 172
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/data/DeviceInfo;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/16 v0, 0x11

    .line 175
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/InterstitialAd;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/InterstitialAd;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->c()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 479
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    const-string v1, "mIsPlayableReady"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 481
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 485
    :goto_0
    return v0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/IMAdListener;->onShowAdScreen()V

    .line 228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v1, "extra_browser_type"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "isAnimationEnabledOnDimiss"

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebview(Lcom/inmobi/re/container/IMWebView;)V

    .line 234
    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setOriginalActivity(Landroid/app/Activity;)V

    .line 235
    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Error showing ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 491
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 492
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 493
    const/4 v2, 0x0

    const-class v3, Lcom/inmobi/monetization/internal/IMAdListener;

    aput-object v3, v1, v2

    .line 494
    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 495
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 496
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to display playable ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/monetization/internal/InterstitialAd;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->e:J

    return-wide v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 282
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    if-nez v0, :cond_1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mFetchStartTime:J

    sub-long v2, v0, v2

    .line 286
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    invoke-virtual {v0}, Lcom/inmobi/commons/network/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    if-eqz v0, :cond_2

    .line 291
    const-string v1, "@__imm_aft@"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 293
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->e:J

    .line 297
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    const/16 v1, 0x12d

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getRenderTimeOut()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v0, v1, v6, v7}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->sendEmptyMessageDelayed(IJ)Z

    .line 300
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    const-string v1, ""

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    :goto_1
    return-void

    .line 302
    :cond_2
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/commons/network/Response;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 453
    :try_start_0
    const-string v0, "com.inmobi.monetization.internal.thirdparty.PlayableAdsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/monetization/internal/InterstitialAd;)Lcom/inmobi/monetization/internal/InterstitialAd$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    return-object v0
.end method

.method private e()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 462
    :try_start_0
    const-string v0, "com.inmobi.monetization.internal.thirdparty.PlayableAdsManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 464
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 465
    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    .line 466
    const/4 v2, 0x1

    const-class v3, Lcom/inmobi/re/container/IMWebView;

    aput-object v3, v1, v2

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 469
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception creating playable ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 505
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->m:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    .line 506
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->c:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 509
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/internal/imai/IMAIController;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    .line 510
    invoke-virtual {v0, p0}, Lcom/inmobi/monetization/internal/imai/IMAIController;->setInterstitialAdStateListener(Lcom/inmobi/monetization/internal/imai/IMAIController$InterstitialAdStateListener;)V

    .line 511
    iget-object v1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    const-string v2, "imaiController"

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method static synthetic f(Lcom/inmobi/monetization/internal/InterstitialAd;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/inmobi/monetization/internal/Ad;->destroy()V

    .line 216
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V

    .line 219
    :cond_0
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    if-nez v0, :cond_1

    .line 268
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please check for initialization error on the ad. The activity or appId cannot be null or blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->c:Z

    .line 273
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->f:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    goto :goto_0
.end method

.method protected getAdFormatParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string v1, "format"

    sget-object v2, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "mk-ads"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "mk-ad-slot"

    invoke-static {}, Lcom/inmobi/monetization/internal/InterstitialAd;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "adtype"

    const-string v2, "int"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "playable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-object v0
.end method

.method public handleResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iput-object p2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    .line 124
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/monetization/internal/InterstitialAd$1;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/internal/InterstitialAd$1;-><init>(Lcom/inmobi/monetization/internal/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Error retrieving ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0
.end method

.method protected initialize()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Activity cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/b;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->d:Landroid/app/Activity;

    .line 96
    invoke-super {p0}, Lcom/inmobi/monetization/internal/Ad;->initialize()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    if-nez v0, :cond_0

    .line 152
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please check for initialization error on the ad. The activity or appId cannot be null or blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    .line 157
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->destroy()V

    .line 158
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->f()V

    .line 159
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    .line 162
    :cond_1
    invoke-super {p0}, Lcom/inmobi/monetization/internal/Ad;->loadAd()V

    goto :goto_0
.end method

.method public onAdFailed()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->removeMessages(I)V

    .line 445
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onAdReady()V
    .locals 4

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->e:J

    sub-long/2addr v0, v2

    .line 433
    iget-object v2, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->i:Lcom/inmobi/commons/network/Response;

    sget-object v3, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/inmobi/monetization/internal/InterstitialAd;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 434
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->removeMessages(I)V

    .line 436
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-interface {v0}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestSucceeded()V

    .line 440
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    if-nez v0, :cond_0

    .line 196
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please check for initialization error on the ad. The activity or appId cannot be null or blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Showing the Interstitial Ad. "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->h:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Error showing ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public show(J)V
    .locals 3

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    if-nez v0, :cond_0

    .line 180
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please check for initialization error on the ad. The activity or appId cannot be null or blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->g:J

    .line 185
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/InterstitialAd;->show()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x12d

    .line 250
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->j:Z

    if-nez v0, :cond_0

    .line 251
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please check for initialization error on the ad. The activity or appId cannot be null or blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/inmobi/monetization/internal/Ad;->stopLoading()V

    .line 256
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->l:Lcom/inmobi/monetization/internal/InterstitialAd$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/InterstitialAd$a;->removeMessages(I)V

    .line 259
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/InterstitialAd;->k:Z

    goto :goto_0
.end method
