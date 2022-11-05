.class public Lcom/openx/view/tp/adapters/AdapterManager;
.super Ljava/lang/Object;
.source "AdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/tp/adapters/AdapterManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterManager"


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private adType:Lcom/openx/model/AdType;

.field private baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

.field private context:Landroid/content/Context;

.field private listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/tp/chain/SDKAdEventsListener;Lcom/openx/model/AdType;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    .line 42
    iput-object p2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adContainer:Landroid/view/ViewGroup;

    .line 43
    iput-object p4, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    .line 45
    return-void
.end method


# virtual methods
.method public loadAdSDK(Lcom/openx/view/tp/chain/SDK;Lcom/openx/view/tp/chain/parser/ChainItem;)Lcom/openx/view/tp/adapters/AdapterBase;
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    .line 53
    sget-object v0, Lcom/openx/view/tp/adapters/AdapterManager$1;->$SwitchMap$com$openx$view$tp$chain$SDK:[I

    invoke-virtual {p1}, Lcom/openx/view/tp/chain/SDK;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    invoke-virtual {v0, p2}, Lcom/openx/view/tp/adapters/AdapterBase;->loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    return-object v0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_2

    .line 60
    new-instance v0, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/openx/view/tp/adapters/banners/AdNetworkBannerAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/AdNetworkInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/AdNetworkInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_3

    .line 75
    :try_start_0
    new-instance v0, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/MoPubBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "AdapterManager"

    const-string v1, "MoPubBanner does not exist..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 86
    :try_start_1
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/MoPubInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 91
    const-string v0, "AdapterManager"

    const-string v1, "MoPubInterstitial does not exist..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_4

    .line 102
    const-string v0, "AdapterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####### Going into AdMob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/AdMobBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_5

    .line 118
    :try_start_2
    new-instance v0, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/MillenialBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 120
    :catch_2
    move-exception v0

    .line 122
    const-string v0, "AdapterManager"

    const-string v1, "MillenialBanner does not exist..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 130
    :try_start_3
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/MillenialInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v0

    .line 134
    const-string v0, "AdapterManager"

    const-string v1, "MillenialInterstitial does not exist..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 148
    :try_start_4
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 150
    :catch_4
    move-exception v0

    .line 152
    const-string v0, "AdapterManager"

    const-string v1, "AdColonyInterstitial does not exist..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_5
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_6

    .line 162
    new-instance v0, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/FallbackBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 166
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/FallbackInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 171
    :pswitch_6
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_7

    .line 173
    new-instance v0, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/FacebookBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 177
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/FacebookInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 182
    :pswitch_7
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_8

    .line 184
    new-instance v0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 186
    :cond_8
    iget-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->adType:Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v0, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/AdapterManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/AdapterManager;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    invoke-direct {v0, v1, v2}, Lcom/openx/view/tp/adapters/interstitials/InMobiInterstitialAdapter;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/AdapterManager;->baseAdapter:Lcom/openx/view/tp/adapters/AdapterBase;

    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
