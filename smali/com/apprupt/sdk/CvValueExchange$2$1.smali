.class Lcom/apprupt/sdk/CvValueExchange$2$1;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvValueExchange$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvValueExchange$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvValueExchange$2;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 249
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$2;->f:Lcom/apprupt/sdk/CvValueExchange;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/CvValueExchange;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    .line 250
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "cappings"

    aput-object v5, v2, v3

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 251
    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueExchange is not configured for ad space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget v3, v3, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x194

    invoke-direct {v1, v2, v3}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->e(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v0, v0, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    new-instance v1, Lcom/apprupt/sdk/CvPreloaderResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueExchange daily limit exceeded for ad space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget v3, v3, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x193

    invoke-direct {v1, v2, v3}, Lcom/apprupt/sdk/CvPreloaderResponse;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvContentManager$PreloaderListener;->onPreloaderFinish(Lcom/apprupt/sdk/CvPreloaderResponse;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->b()Lcom/apprupt/sdk/CvAdColony$Wrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    invoke-interface {v0, v1, v4}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a(IZ)Z

    move-result v5

    .line 259
    new-instance v0, Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget v1, v1, Lcom/apprupt/sdk/CvValueExchange$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v2, v2, Lcom/apprupt/sdk/CvValueExchange$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v3, v3, Lcom/apprupt/sdk/CvValueExchange$2;->d:Ljava/lang/String;

    new-instance v7, Lcom/apprupt/sdk/CvValueExchange$2$1$1;

    invoke-direct {v7, p0}, Lcom/apprupt/sdk/CvValueExchange$2$1$1;-><init>(Lcom/apprupt/sdk/CvValueExchange$2$1;)V

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/apprupt/sdk/CvContentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 271
    sget-object v1, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v2, v2, Lcom/apprupt/sdk/CvValueExchange$2;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/apprupt/sdk/CvValueExchange$2$1;->a:Lcom/apprupt/sdk/CvValueExchange$2;

    iget-object v3, v3, Lcom/apprupt/sdk/CvValueExchange$2;->b:Lcom/apprupt/sdk/CvContentManager$PreloaderListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$PreloaderListener;Z)Lcom/apprupt/sdk/CvMediator;

    goto :goto_0
.end method
