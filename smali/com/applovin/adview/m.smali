.class Lcom/applovin/adview/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/adview/l;


# direct methods
.method constructor <init>(Lcom/applovin/adview/l;II)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/m;->c:Lcom/applovin/adview/l;

    iput p2, p0, Lcom/applovin/adview/m;->a:I

    iput p3, p0, Lcom/applovin/adview/m;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/m;->c:Lcom/applovin/adview/l;

    iget-object v0, v0, Lcom/applovin/adview/l;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video view error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/adview/m;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/adview/m;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - showing close button."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/m;->c:Lcom/applovin/adview/l;

    iget-object v0, v0, Lcom/applovin/adview/l;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    return-void
.end method
