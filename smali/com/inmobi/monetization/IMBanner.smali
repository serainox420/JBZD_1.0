.class public final Lcom/inmobi/monetization/IMBanner;
.super Landroid/widget/RelativeLayout;
.source "IMBanner.java"


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final REFRESH_INTERVAL_MINIMUM:I = 0x0

.field public static final REFRESH_INTERVAL_OFF:I = -0x1


# instance fields
.field a:Lcom/inmobi/monetization/internal/IMAdListener;

.field private b:Lcom/inmobi/monetization/internal/BannerAd;

.field private c:Lcom/inmobi/monetization/IMBannerListener;

.field private d:Z

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    .line 84
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    .line 266
    new-instance v0, Lcom/inmobi/monetization/IMBanner$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$1;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 115
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    .line 116
    iput-wide p2, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    .line 117
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    .line 84
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    .line 266
    new-instance v0, Lcom/inmobi/monetization/IMBanner$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$1;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 99
    iput-object p2, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;

    .line 100
    iput p3, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    .line 101
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    .line 102
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    .line 82
    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    .line 84
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    .line 266
    new-instance v0, Lcom/inmobi/monetization/IMBanner$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$1;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 122
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    .line 124
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "slotId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    .line 126
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 132
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "adSize"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 138
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "appId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :goto_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/monetization/IMBannerListener;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 146
    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 147
    new-instance v1, Lcom/inmobi/monetization/internal/BannerAd;

    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/inmobi/monetization/IMBanner;->g:J

    const/16 v6, 0xf

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/monetization/internal/BannerAd;-><init>(Landroid/app/Activity;Lcom/inmobi/monetization/IMBanner;JI)V

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/monetization/internal/IMAdListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/BannerAd;->setAdListener(Lcom/inmobi/monetization/internal/IMAdListener;)V

    .line 151
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getDefaultRefreshRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 153
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/BannerAd;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/monetization/IMBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/internal/BannerAd;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner;->f:Ljava/lang/String;

    iget v3, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/inmobi/monetization/internal/BannerAd;-><init>(Landroid/app/Activity;Lcom/inmobi/monetization/IMBanner;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    goto :goto_0
.end method

.method private a(ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/inmobi/monetization/internal/AdErrorCode;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    if-nez v0, :cond_1

    .line 371
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Banner not sending callback because the view is not added to any window."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/monetization/IMBannerListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/monetization/IMBanner$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/monetization/IMBanner$2;-><init>(Lcom/inmobi/monetization/IMBanner;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMBanner;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/monetization/IMBanner;->a(ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v1, 0x140

    .line 482
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 487
    iget v0, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    packed-switch v0, :pswitch_data_0

    .line 513
    :pswitch_0
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 514
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 517
    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 518
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 519
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 520
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 521
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/IMBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    return-void

    .line 490
    :pswitch_1
    const/16 v0, 0x30

    .line 491
    goto :goto_0

    .line 493
    :pswitch_2
    const/16 v1, 0x12c

    .line 494
    const/16 v0, 0xfa

    .line 495
    goto :goto_0

    .line 497
    :pswitch_3
    const/16 v1, 0x2d9

    .line 498
    const/16 v0, 0x5a

    .line 499
    goto :goto_0

    .line 501
    :pswitch_4
    const/16 v1, 0x1d4

    .line 502
    const/16 v0, 0x3c

    .line 503
    goto :goto_0

    .line 505
    :pswitch_5
    const/16 v1, 0x78

    .line 506
    const/16 v0, 0x258

    .line 507
    goto :goto_0

    .line 510
    :pswitch_6
    const/16 v0, 0x32

    .line 511
    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/BannerAd;->disableHardwareAcceleration()V

    .line 217
    :cond_0
    return-void
.end method

.method public loadBanner()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/BannerAd;->loadAd()V

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 173
    const-string v1, "Banner Ad instance not created with valid paramters"

    .line 174
    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/monetization/IMBannerListener;

    invoke-interface {v2, p0, v0}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 176
    const-string v0, "[InMobi]-[Monetization]"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 354
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->b()V

    .line 355
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    .line 357
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Z

    .line 361
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 362
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 327
    if-nez p1, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/BannerAd;->refreshAd()V

    .line 343
    :cond_0
    :goto_1
    new-instance v0, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;-><init>()V

    .line 344
    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->init()V

    .line 346
    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/monetization/internal/imai/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/commons/analytics/net/AnalyticsCommon$HttpRequestCallback;)V

    .line 347
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/BannerAd;->stopRefresh()V

    goto :goto_1
.end method

.method public setAdSize(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setAdSize(I)V

    .line 238
    iput p1, p0, Lcom/inmobi/monetization/IMBanner;->h:I

    .line 241
    :cond_0
    return-void
.end method

.method public setAnimationType(Lcom/inmobi/commons/AnimationType;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setAnimation(Lcom/inmobi/commons/AnimationType;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setAppId(Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/monetization/IMBannerListener;

    .line 197
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setKeywords(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 461
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Key or Value cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Key or Value cannot be empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/internal/BannerAd;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setRefreshInterval(I)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setRefreshInterval(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
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

    .prologue
    .line 445
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/BannerAd;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/BannerAd;->setSlotId(J)V

    .line 252
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/BannerAd;->stopLoading()V

    .line 188
    :cond_0
    return-void
.end method
