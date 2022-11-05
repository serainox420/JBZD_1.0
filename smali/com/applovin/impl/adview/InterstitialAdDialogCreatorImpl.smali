.class public Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/InterstitialAdDialogCreator;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/ref/WeakReference;

.field private static c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 5

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    :cond_0
    sget-object v1, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_2

    :cond_1
    new-instance v0, Lcom/applovin/impl/adview/ah;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/adview/ah;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->b:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;->c:Ljava/lang/ref/WeakReference;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "InterstitialAdDialogCreator"

    const-string v4, "An interstitial dialog is already showing, returning it"

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
