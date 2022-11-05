.class final Lcom/applovin/adview/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinSdk;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/u;->a:Lcom/applovin/sdk/AppLovinSdk;

    iput-object p2, p0, Lcom/applovin/adview/u;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/adview/u;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    iget-object v1, p0, Lcom/applovin/adview/u;->a:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/applovin/adview/u;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/adview/u;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show(Ljava/lang/String;)V

    return-void
.end method
