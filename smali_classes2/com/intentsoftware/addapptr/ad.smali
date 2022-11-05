.class public Lcom/intentsoftware/addapptr/ad;
.super Ljava/lang/Object;
.source "SupportedNetworks.java"


# static fields
.field private static final disabledNetworks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final networks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            "Lcom/intentsoftware/addapptr/AdType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final networksWithRemovedSdks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/ad;->networks:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/intentsoftware/addapptr/AdNetwork;->values()[Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad;->networksWithRemovedSdks:Ljava/util/HashSet;

    .line 24
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.adcolony.sdk.AdColonyInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.AdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.formats.NativeAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.AdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.amazon.device.ads.AdLayout"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.amazon.device.ads.InterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.applovin.adview.AppLovinAdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.applovin.adview.AppLovinInterstitialAdDialog"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.apprupt.sdk.AdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.apprupt.sdk.CvSDK"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.doubleclick.PublisherAdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.doubleclick.PublisherInterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.google.android.gms.ads.formats.NativeAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.banners.EmptyBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.fullscreens.EmptyFullscreen"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.facebook.ads.AdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.facebook.ads.InterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.facebook.ads.NativeAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.flurry.android.ads.FlurryAdBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.flurry.android.ads.FlurryAdInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.flurry.android.ads.FlurryAdNative"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.banners.PromoHouseBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.fullscreens.PromoHouseFullscreen"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.inmobi.monetization.IMBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.inmobi.monetization.IMInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.inmobi.monetization.IMNative"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.loopme.LoopMeInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MDOTM:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.mdotm.android.view.MdotMInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.millennialmedia.InlineAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.millennialmedia.InterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.mopub.mobileads.HtmlBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.mopub.mobileads.MoPubInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.mopub.nativeads.MoPubNative"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.banners.NexageBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.intentsoftware.addapptr.fullscreens.NexageFullscreen"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.openx.view.AdBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.openx.view.AdInterstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PERMODO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.madsdk.MadSdkInterstitialAd"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.pubmatic.sdk.banner.PMBannerAdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.pubmatic.sdk.banner.PMInterstitialAdView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.revmob.ads.banner.RevMobBanner"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.revmob.ads.interstitial.RevMobFullscreen"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.smaato.soma.BannerView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.smaato.soma.interstitial.Interstitial"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.smartadserver.android.library.SASBannerView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.smartadserver.android.library.SASBannerView"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTSTREAMTV:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.video.adsdk.VideoAdSDK"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->UNITYADS:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    const-string v2, "com.unity3d.ads.UnityAds"

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad;->add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/intentsoftware/addapptr/ad;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 90
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networks:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networksWithRemovedSdks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "SupportedNetworks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK for network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getDisabledNetworks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    return-object v0
.end method

.method static getNetworks()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 109
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method static getNetworksWithRemovedSdks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networksWithRemovedSdks:Ljava/util/HashSet;

    return-object v0
.end method

.method public static isConfigSupported(Lcom/intentsoftware/addapptr/AdNetwork;Lcom/intentsoftware/addapptr/AdType;)Z
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 79
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {v1, p0}, Lcom/intentsoftware/addapptr/AdNetwork;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;)Z
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networksWithRemovedSdks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static remove(Lcom/intentsoftware/addapptr/AdNetwork;)V
    .locals 6

    .prologue
    .line 100
    invoke-static {}, Lcom/intentsoftware/addapptr/AdType;->values()[Lcom/intentsoftware/addapptr/AdType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 101
    sget-object v4, Lcom/intentsoftware/addapptr/ad;->networks:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->networksWithRemovedSdks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method static setNetworkEnabled(Lcom/intentsoftware/addapptr/AdNetwork;Z)V
    .locals 1

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v0, Lcom/intentsoftware/addapptr/ad;->disabledNetworks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
