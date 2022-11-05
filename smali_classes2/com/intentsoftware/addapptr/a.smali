.class Lcom/intentsoftware/addapptr/a;
.super Ljava/lang/Object;
.source "AdBuilder.java"


# static fields
.field private static final ads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/intentsoftware/addapptr/AdNetwork;",
            "Lcom/intentsoftware/addapptr/AdType;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/intentsoftware/addapptr/ad/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    .line 17
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/AmazonBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AmazonFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/AppruptBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/DFPBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/DFPFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/EmptyBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/FacebookBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/FacebookFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/FacebookNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTSTREAMTV:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/SmartStreamFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/PromoHouseBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/InMobiBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/LoopMeFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MDOTM:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/MillenialBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/MoPubBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/MoPubFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/NexageBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/OpenXBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/AdMobFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/SmaatoBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/SmaatoFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->UNITYADS:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/PubMaticBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/PubMaticFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/RevMobFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->BANNER:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/FlurryFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->PERMODO:Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v3, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v2, Lcom/intentsoftware/addapptr/fullscreens/PermodoFullscreen;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/intentsoftware/addapptr/b;)Lcom/intentsoftware/addapptr/ad/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/b;->getSize()Lcom/intentsoftware/addapptr/AdType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lcom/intentsoftware/addapptr/a;->ads:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/ad/a;

    return-object v0
.end method
