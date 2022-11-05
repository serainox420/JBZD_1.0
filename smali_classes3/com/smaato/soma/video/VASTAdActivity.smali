.class public Lcom/smaato/soma/video/VASTAdActivity;
.super Lcom/smaato/soma/interstitial/BaseActivity;
.source "VASTAdActivity.java"

# interfaces
.implements Lcom/smaato/soma/g;
.implements Lcom/smaato/soma/video/c$a;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field a:Lcom/smaato/soma/video/c;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/os/Handler;

.field d:Landroid/os/Handler;

.field f:Z

.field private g:Lcom/smaato/soma/internal/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "VASTAdActivity"

    sput-object v0, Lcom/smaato/soma/video/VASTAdActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->c:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->d:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/video/VASTAdActivity;Lcom/smaato/soma/internal/d/b;)Lcom/smaato/soma/internal/d/b;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/video/VASTAdActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smaato/soma/video/VASTAdActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/video/VASTAdActivity;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smaato/soma/video/VASTAdActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/video/VASTAdActivity;)Lcom/smaato/soma/internal/d/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1}, Lcom/smaato/soma/video/c;->getVastAd()Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/smaato/soma/internal/d/c;->a()Lcom/smaato/soma/internal/d/a;

    move-result-object v1

    .line 125
    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {v1}, Lcom/smaato/soma/internal/d/a;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/smaato/soma/internal/d/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onWillOpenLandingPage()V

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->onWillOpenLandingPage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/d/b;

    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/d/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    .line 366
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    new-instance v1, Lcom/smaato/soma/video/VASTAdActivity$5;

    invoke-direct {v1, p0}, Lcom/smaato/soma/video/VASTAdActivity$5;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/d/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/d/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    throw v0

    .line 380
    :catch_1
    move-exception v0

    .line 381
    new-instance v1, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$2;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 229
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$2;->c()Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$3;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 312
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$3;->c()Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getRewardedVideoListener()Lcom/smaato/soma/video/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/a;->onWillClose()V

    .line 324
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity;->finish()V

    .line 326
    :goto_1
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAdListener()Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onWillClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Lcom/smaato/soma/internal/d/b;

    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/d/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    .line 340
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    new-instance v1, Lcom/smaato/soma/video/VASTAdActivity$4;

    invoke-direct {v1, p0}, Lcom/smaato/soma/video/VASTAdActivity$4;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/d/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity;->g:Lcom/smaato/soma/internal/d/b;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/d/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    throw v0

    .line 354
    :catch_1
    move-exception v0

    .line 355
    new-instance v1, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity;->e()V

    .line 409
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$6;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 397
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$6;->c()Ljava/lang/Object;

    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/smaato/soma/interstitial/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$1;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 117
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$1;->c()Ljava/lang/Object;

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$9;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 488
    invoke-super {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->onDestroy()V

    .line 489
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$8;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 448
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$8;->c()Ljava/lang/Object;

    .line 449
    invoke-super {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->onPause()V

    .line 450
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/smaato/soma/video/VASTAdActivity$7;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/VASTAdActivity$7;-><init>(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 423
    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity$7;->c()Ljava/lang/Object;

    .line 424
    invoke-super {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->onResume()V

    .line 425
    return-void
.end method

.method public onWillCloseLandingPage(Lcom/smaato/soma/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingLandingPageFailed;
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public onWillOpenLandingPage(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
