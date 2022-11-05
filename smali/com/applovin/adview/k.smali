.class Lcom/applovin/adview/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/k;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/k;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;Z)Z

    iget-object v0, p0, Lcom/applovin/adview/k;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->j(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    return-void
.end method
