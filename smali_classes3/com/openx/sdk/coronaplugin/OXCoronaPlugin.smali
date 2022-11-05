.class public Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;
.super Ljava/lang/Object;
.source "OXCoronaPlugin.java"


# static fields
.field private static BOTTOM_ALIGNMENT:I

.field private static TOP_ALIGNMENT:I

.field private static activity:Landroid/app/Activity;

.field private static instance:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;


# instance fields
.field private adCallParams:Lcom/openx/model/adParams/AdCallParameters;

.field private adRequest:Lcom/openx/core/network/OXAdRequest;

.field private bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

.field private bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private currentAdBanner:Lcom/openx/view/AdBanner;

.field private currentAdInterstitial:Lcom/openx/view/AdInterstitial;

.field private currentInterstitialLoaded:Z

.field private interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;

.field private userBannerListener:Lcom/openx/view/AdEventsListener;

.field private userInterstitialListener:Lcom/openx/view/AdEventsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->TOP_ALIGNMENT:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->BOTTOM_ALIGNMENT:I

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;

    invoke-direct {v0, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$1;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    iput-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

    .line 65
    new-instance v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;

    invoke-direct {v0, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$2;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    iput-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;

    .line 99
    sput-object p1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->userBannerListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->userInterstitialListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/model/adParams/AdCallParameters;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/core/network/OXAdRequest;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adRequest:Lcom/openx/core/network/OXAdRequest;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adRequest:Lcom/openx/core/network/OXAdRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentInterstitialLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentInterstitialLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdInterstitial;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentAdInterstitial:Lcom/openx/view/AdInterstitial;

    return-object v0
.end method

.method static synthetic access$302(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentAdInterstitial:Lcom/openx/view/AdInterstitial;

    return-object p1
.end method

.method static synthetic access$400(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdBanner;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentAdBanner:Lcom/openx/view/AdBanner;

    return-object v0
.end method

.method static synthetic access$402(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Lcom/openx/view/AdBanner;)Lcom/openx/view/AdBanner;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->currentAdBanner:Lcom/openx/view/AdBanner;

    return-object p1
.end method

.method static synthetic access$500()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->TOP_ALIGNMENT:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->BOTTOM_ALIGNMENT:I

    return v0
.end method

.method public static instance(Landroid/app/Activity;)Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;
    .locals 2

    .prologue
    .line 104
    const-string v0, "OXCoronaPlugin"

    const-string v1, "OXCoronaPlugin Constructor Called!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->instance:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    if-nez v0, :cond_1

    new-instance v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    invoke-direct {v0, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->instance:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    .line 110
    :cond_1
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->instance:Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;

    goto :goto_0
.end method

.method public static logCoronaMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    const-string v0, "OXCoronaPlugin :logCoronaMessage"

    invoke-static {v0, p0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static setDisabledSupportFlags(I)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0}, Lcom/openx/core/sdk/OXSettings;->setDisabledSupportFlags(I)V

    .line 117
    return-void
.end method


# virtual methods
.method public createBanner(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 122
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v6, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$3;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public createInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 8

    .prologue
    .line 258
    const-string v0, "OXCoronaPlugin :createAdInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v7, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$7;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hideBanner()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 214
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$6;

    invoke-direct {v1, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$6;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadBanner()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$4;

    invoke-direct {v1, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$4;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadInterstitial()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;

    invoke-direct {v1, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$8;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAdCallParams(ILjava/lang/String;IIIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v0}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 235
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setUserAge(I)V

    .line 236
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p2}, Lcom/openx/model/adParams/AdCallParameters;->setDma(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserEthnicity(Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;)V

    .line 238
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    move-result-object v1

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserGender(Lcom/openx/model/adParams/AdCallParameters$OXMGender;)V

    .line 239
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p5}, Lcom/openx/model/adParams/AdCallParameters;->setUserAnnualIncomeInUs(I)V

    .line 240
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    move-result-object v1

    aget-object v1, v1, p6

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserMaritalStatus(Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;)V

    .line 241
    iget-object v0, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p7}, Lcom/openx/model/adParams/AdCallParameters;->setAppStoreMarketUrl(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setBannerEventListener(Lcom/openx/view/AdEventsListener;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->userBannerListener:Lcom/openx/view/AdEventsListener;

    .line 248
    return-void
.end method

.method public setInterstitialEventListener(Lcom/openx/view/AdEventsListener;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->userInterstitialListener:Lcom/openx/view/AdEventsListener;

    .line 253
    return-void
.end method

.method public showBanner()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 190
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;

    invoke-direct {v1, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$5;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 317
    :cond_0
    sget-object v0, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;

    invoke-direct {v1, p0}, Lcom/openx/sdk/coronaplugin/OXCoronaPlugin$9;-><init>(Lcom/openx/sdk/coronaplugin/OXCoronaPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
