.class public Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;
.super Lcom/openx/view/tp/adapters/AdapterBase;
.source "InMobiBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InMobiBannerAdapter"


# instance fields
.field private adBannerListener:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;

.field private bannerAd:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/adapters/AdapterBase;-><init>(Landroid/content/Context;Lcom/openx/view/tp/chain/SDKAdEventsListener;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->listener:Lcom/openx/view/tp/chain/SDKAdEventsListener;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0}, Lcom/openx/view/tp/adapters/AdapterBase;->cleanUp()V

    .line 37
    const-string v0, "InMobiBannerAdapter"

    const-string v1, "cleanUp: InMobiBannerAdapter destroying InMobiBanner on cleanUp"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0, v2}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 42
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->destroy()V

    .line 43
    iput-object v2, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    .line 47
    :cond_0
    return-void
.end method

.method public loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/inmobi/monetization/IMBanner;

    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v1, v1, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v3, "appid"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v1, v3}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    .line 57
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 60
    new-instance v0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;

    invoke-direct {v0, p0}, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;-><init>(Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;)V

    iput-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->adBannerListener:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;

    .line 61
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    iget-object v1, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->adBannerListener:Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter$AdBannerListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 64
    iget-object v0, p0, Lcom/openx/view/tp/adapters/banners/InMobiBannerAdapter;->bannerAd:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    .line 65
    return-void
.end method
