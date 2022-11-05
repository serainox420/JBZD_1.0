.class Lcom/apprupt/sdk/CvValueExchange$3$1;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvValueExchange$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvValueExchange$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvValueExchange$3;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 286
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3;->f:Lcom/apprupt/sdk/CvValueExchange;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/CvValueExchange;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    .line 287
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "cappings"

    aput-object v3, v2, v8

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 288
    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3;->b:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueExchange is not configured for ad space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v3, v3, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x194

    invoke-interface {v0, v1, v2, v3}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialDidFail(ILjava/lang/String;I)V

    .line 327
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->e(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$3;->b:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueExchange daily limit exceeded for ad space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v3, v3, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x193

    invoke-interface {v0, v1, v2, v3}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialDidFail(ILjava/lang/String;I)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->b()Lcom/apprupt/sdk/CvAdColony$Wrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    invoke-interface {v0, v1, v4}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a(IZ)Z

    move-result v5

    .line 296
    new-instance v0, Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v2, v2, Lcom/apprupt/sdk/CvValueExchange$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v3, v3, Lcom/apprupt/sdk/CvValueExchange$3;->d:Ljava/lang/String;

    new-instance v7, Lcom/apprupt/sdk/CvValueExchange$3$1$1;

    invoke-direct {v7, p0}, Lcom/apprupt/sdk/CvValueExchange$3$1$1;-><init>(Lcom/apprupt/sdk/CvValueExchange$3$1;)V

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/apprupt/sdk/CvContentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 308
    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v1, v1, Lcom/apprupt/sdk/CvValueExchange$3;->b:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iput-object v1, v0, Lcom/apprupt/sdk/CvContentOptions;->i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    .line 309
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "start ve interstitial"

    aput-object v3, v2, v8

    iget-boolean v3, v0, Lcom/apprupt/sdk/CvContentOptions;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 311
    sget-object v1, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$3$1;->a:Lcom/apprupt/sdk/CvValueExchange$3;

    iget-object v2, v2, Lcom/apprupt/sdk/CvValueExchange$3;->e:Landroid/content/Context;

    new-instance v3, Lcom/apprupt/sdk/CvValueExchange$3$1$2;

    invoke-direct {v3, p0}, Lcom/apprupt/sdk/CvValueExchange$3$1$2;-><init>(Lcom/apprupt/sdk/CvValueExchange$3$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;)Lcom/apprupt/sdk/CvMediator;

    goto :goto_0
.end method
