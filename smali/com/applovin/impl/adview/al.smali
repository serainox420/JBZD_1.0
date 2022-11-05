.class Lcom/applovin/impl/adview/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/ah;

    iput p2, p0, Lcom/applovin/impl/adview/al;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/al;->a:I

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method
