.class Lcom/applovin/adview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/UUID;

.field final synthetic c:Lcom/applovin/adview/AppLovinInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/h;->c:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iput p2, p0, Lcom/applovin/adview/h;->a:I

    iput-object p3, p0, Lcom/applovin/adview/h;->b:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/h;->c:Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget v1, p0, Lcom/applovin/adview/h;->a:I

    iget-object v2, p0, Lcom/applovin/adview/h;->b:Ljava/util/UUID;

    invoke-static {v0, v1, v2}, Lcom/applovin/adview/AppLovinInterstitialActivity;->a(Lcom/applovin/adview/AppLovinInterstitialActivity;ILjava/util/UUID;)V

    return-void
.end method
