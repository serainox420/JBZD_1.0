.class Lcom/applovin/adview/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/applovin/adview/b;


# direct methods
.method constructor <init>(Lcom/applovin/adview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/adview/c;->a:Lcom/applovin/adview/b;

    iget-object v0, v0, Lcom/applovin/adview/b;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->e(Lcom/applovin/adview/AppLovinInterstitialActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/adview/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/applovin/adview/d;-><init>(Lcom/applovin/adview/c;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
