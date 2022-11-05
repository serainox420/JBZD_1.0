.class Lcom/apprupt/sdk/CvValueExchange$3$1$2;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Lcom/apprupt/sdk/CvMediator$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvValueExchange$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvValueExchange$3$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvValueExchange$3$1;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1$2;->a:Lcom/apprupt/sdk/CvValueExchange$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$3$1$2$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvValueExchange$3$1$2$1;-><init>(Lcom/apprupt/sdk/CvValueExchange$3$1$2;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 325
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$3$1$2;->a:Lcom/apprupt/sdk/CvValueExchange$3$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3;->b:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$3$1$2;->a:Lcom/apprupt/sdk/CvValueExchange$3$1;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3;->b:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1$2;->a:Lcom/apprupt/sdk/CvValueExchange$3$1;

    iget-object v1, v1, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialDidFail(ILjava/lang/String;I)V

    .line 315
    :cond_0
    return-void
.end method
