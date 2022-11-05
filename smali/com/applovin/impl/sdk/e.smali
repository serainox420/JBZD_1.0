.class Lcom/applovin/impl/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

.field final synthetic d:Lcom/applovin/adview/AppLovinAdView;

.field final synthetic e:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;Lcom/applovin/impl/sdk/AppLovinAdImpl;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->e:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/e;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/e;->c:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-object p5, p0, Lcom/applovin/impl/sdk/e;->d:Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->e:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/g;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/g;-><init>(Lcom/applovin/impl/sdk/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->e:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/f;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
