.class Lcom/applovin/impl/adview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;

.field private final b:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/h;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/h;->b:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/h;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/h;->b:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/adview/h;->b:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/h;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Exception while notifying ad display listener"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
