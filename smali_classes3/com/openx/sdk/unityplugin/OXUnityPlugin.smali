.class public Lcom/openx/sdk/unityplugin/OXUnityPlugin;
.super Ljava/lang/Object;
.source "OXUnityPlugin.java"


# static fields
.field private static BOTTOM_ALIGNMENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OXUnityPlugin"

.field private static TOP_ALIGNMENT:I

.field private static activity:Landroid/app/Activity;

.field private static instance:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

.field private static unityCallbackName:Ljava/lang/String;


# instance fields
.field private adCallParams:Lcom/openx/model/adParams/AdCallParameters;

.field private adRequest:Lcom/openx/core/network/OXAdRequest;

.field private bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

.field private bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private currentAdBanner:Lcom/openx/view/AdBanner;

.field private currentAdInterstitial:Lcom/openx/view/AdInterstitial;

.field private currentInterstitialLoaded:Z

.field private interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->TOP_ALIGNMENT:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->BOTTOM_ALIGNMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$1;

    invoke-direct {v0, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$1;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    iput-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

    .line 72
    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;

    invoke-direct {v0, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$2;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    iput-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;

    return-void
.end method

.method public static SetCallbackHandlerName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 393
    const-string v0, "OXUnityPlugin :SetCallbackHandlerName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sput-object p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->unityCallbackName:Ljava/lang/String;

    .line 395
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->unityCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentInterstitialLoaded:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/core/network/OXAdRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adRequest:Lcom/openx/core/network/OXAdRequest;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/core/network/OXAdRequest;)Lcom/openx/core/network/OXAdRequest;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adRequest:Lcom/openx/core/network/OXAdRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentInterstitialLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->interstitialAdEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdInterstitial;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentAdInterstitial:Lcom/openx/view/AdInterstitial;

    return-object v0
.end method

.method static synthetic access$202(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdInterstitial;)Lcom/openx/view/AdInterstitial;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentAdInterstitial:Lcom/openx/view/AdInterstitial;

    return-object p1
.end method

.method static synthetic access$300(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdBanner;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentAdBanner:Lcom/openx/view/AdBanner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/view/AdBanner;)Lcom/openx/view/AdBanner;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->currentAdBanner:Lcom/openx/view/AdBanner;

    return-object p1
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/view/AdEventsListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->bannerAdEventsListener:Lcom/openx/view/AdEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$602(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->bannerLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->TOP_ALIGNMENT:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->BOTTOM_ALIGNMENT:I

    return v0
.end method

.method static synthetic access$900(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)Lcom/openx/model/adParams/AdCallParameters;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object v0
.end method

.method static synthetic access$902(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Lcom/openx/model/adParams/AdCallParameters;)Lcom/openx/model/adParams/AdCallParameters;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    return-object p1
.end method

.method private static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    .line 400
    :cond_0
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static instance()Lcom/openx/sdk/unityplugin/OXUnityPlugin;
    .locals 2

    .prologue
    .line 111
    const-string v0, "OXUnityPlugin"

    const-string v1, "OXUnityPlugin Constructor Called!"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->instance:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    invoke-direct {v0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;-><init>()V

    sput-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->instance:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    .line 115
    :cond_0
    invoke-static {}, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->getActivity()Landroid/app/Activity;

    .line 117
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->instance:Lcom/openx/sdk/unityplugin/OXUnityPlugin;

    return-object v0
.end method

.method public static logUnityMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    const-string v0, "OXUnityPlugin :logUnityMessage"

    invoke-static {v0, p0}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public static setDisabledSupportFlags(I)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p0}, Lcom/openx/core/sdk/OXSettings;->setDisabledSupportFlags(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public createBanner(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 129
    sget-object v6, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$3;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public createInterstitial(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 7

    .prologue
    .line 315
    const-string v0, "OXUnityPlugin :createAdInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AUID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Close Position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v6, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$9;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Ljava/lang/String;Ljava/lang/String;FI)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method public createVideoInterstitial(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 253
    const-string v0, "OXUnityPlugin :createVideoInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner: VAST Tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v6, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$7;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public createVideoInterstitial(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 283
    const-string v0, "OXUnityPlugin :createVideoInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAST Tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v8, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$8;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public hideBanner()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/unityplugin/OXUnityPlugin$6;

    invoke-direct {v1, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$6;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public loadBanner()V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;

    invoke-direct {v1, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$4;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public loadInterstitial()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;

    invoke-direct {v1, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$10;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public setAdCallParams(ILjava/lang/String;IIIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v0}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p1}, Lcom/openx/model/adParams/AdCallParameters;->setUserAge(I)V

    .line 234
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p2}, Lcom/openx/model/adParams/AdCallParameters;->setDma(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserEthnicity(Lcom/openx/model/adParams/AdCallParameters$OXMEthnicity;)V

    .line 236
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMGender;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMGender;

    move-result-object v1

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserGender(Lcom/openx/model/adParams/AdCallParameters$OXMGender;)V

    .line 237
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p5}, Lcom/openx/model/adParams/AdCallParameters;->setUserAnnualIncomeInUs(I)V

    .line 238
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-static {}, Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;->values()[Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;

    move-result-object v1

    aget-object v1, v1, p6

    invoke-virtual {v0, v1}, Lcom/openx/model/adParams/AdCallParameters;->setUserMaritalStatus(Lcom/openx/model/adParams/AdCallParameters$OXMMaritalStatus;)V

    .line 239
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p7}, Lcom/openx/model/adParams/AdCallParameters;->setAppStoreMarketUrl(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openx/model/adParams/AdCallParameters;

    invoke-direct {v0}, Lcom/openx/model/adParams/AdCallParameters;-><init>()V

    iput-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, p1, p2}, Lcom/openx/model/adParams/AdCallParameters;->setCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public showBanner()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/unityplugin/OXUnityPlugin$5;

    invoke-direct {v1, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$5;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/openx/sdk/unityplugin/OXUnityPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;

    invoke-direct {v1, p0}, Lcom/openx/sdk/unityplugin/OXUnityPlugin$11;-><init>(Lcom/openx/sdk/unityplugin/OXUnityPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method
