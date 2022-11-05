.class public Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;


# static fields
.field public static URI_NO_OP:Ljava/lang/String;

.field public static URI_TRACK_CLICK_IMMEDIATELY:Ljava/lang/String;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/adservice/no_op"

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_NO_OP:Ljava/lang/String;

    const-string v0, "/adservice/track_click_now"

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->URI_TRACK_CLICK_IMMEDIATELY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {}, Lcom/applovin/sdk/AppLovinAdType;->allTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdType;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/i;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/i;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/e;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .locals 2

    invoke-virtual {p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->removeClickTrackingOverlay()V

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->expireAdLoadState(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p3}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->openUri(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->dismissInterstitialIfRequired()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 6

    new-instance v1, Lcom/applovin/impl/sdk/c;

    invoke-direct {v1, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/az;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using pre-loaded ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b;->f(Lcom/applovin/impl/sdk/c;)V

    return-void

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/cn;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/applovin/impl/sdk/cn;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v2, v0, v3}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->t:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->v:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->x:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->A:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p2, v0}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aq:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ar:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;)J
    .locals 2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->u:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->w:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->y:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->D:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bx;->E:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p2, v2}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    const-string v3, "Unable to safely test preload merge capability"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private c(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Lcom/applovin/sdk/AppLovinAdSize;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/applovin/impl/sdk/j;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/sdk/j;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x2

    add-long/2addr v0, v8

    mul-long/2addr v0, v6

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;J)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad listener specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added update listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/sdk/j;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cr;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/cs;->a:Lcom/applovin/impl/sdk/cs;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cr;->a(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/cs;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public expireAdLoadState(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v1, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/applovin/impl/sdk/i;->d:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/c;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b;->e(Lcom/applovin/impl/sdk/c;)Z

    move-result v0

    return v0
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad type specificed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading next ad of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v3, "AppLovinAdService"

    const-string v4, "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!"

    invoke-interface {v0, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v3, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/applovin/impl/sdk/i;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :goto_0
    iget-object v4, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    iget-object v0, v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/sdk/AppLovinAd;

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p3, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Loading next ad..."

    invoke-interface {v2, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/applovin/impl/sdk/i;->e:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/applovin/impl/sdk/i;->e:Z

    new-instance v2, Lcom/applovin/impl/sdk/h;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/e;)V

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    new-instance v4, Lcom/applovin/impl/sdk/c;

    invoke-direct {v4, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v4, v2}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/c;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinAdService"

    const-string v4, "Attaching load listener to initial preload task..."

    invoke-interface {v0, v2, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Skipped attach of initial preload callback."

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    move-object v0, v1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v4, "AppLovinAdService"

    const-string v5, "Task merge not necessary."

    invoke-interface {v0, v4, v5}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :cond_a
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public preloadAd(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/c;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/b;->f(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method

.method public removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/i;

    iget-object v1, v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/i;->b(Lcom/applovin/impl/sdk/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed update listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public trackClickOn(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V
    .locals 3

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSupplementalClickTrackingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPersistentPostbackManager()Lcom/applovin/impl/sdk/bn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/bn;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p5, p1, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    return-void
.end method

.method public trackForegroundClick(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V
    .locals 12

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v4, p1

    check-cast v4, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdService"

    const-string v2, "Tracking foreground click on an ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->be:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bf:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bg:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getPostbackService()Lcom/applovin/impl/sdk/PostbackServiceImpl;

    move-result-object v9

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getSupplementalClickTrackingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/e;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;)V

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v7

    move v5, v8

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/PostbackServiceImpl;->dispatchPostbackAsync(Ljava/lang/String;Ljava/util/Map;IIILcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method
