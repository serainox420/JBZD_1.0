.class Lcom/apprupt/sdk/CvInterstitialManager$2$1;
.super Ljava/lang/Object;
.source "CvInterstitialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInterstitialManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInterstitialManager$2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInterstitialManager$2;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 75
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget v1, v1, Lcom/apprupt/sdk/CvInterstitialManager$2;->a:I

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvValueExchange;->a(I)Lcom/apprupt/sdk/CvValueExchange$Status;

    move-result-object v0

    sget-object v1, Lcom/apprupt/sdk/CvValueExchange$Status;->a:Lcom/apprupt/sdk/CvValueExchange$Status;

    if-ne v0, v1, :cond_0

    .line 76
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->b()Lcom/apprupt/sdk/CvAdColony$Wrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget v1, v1, Lcom/apprupt/sdk/CvInterstitialManager$2;->a:I

    invoke-interface {v0, v1, v4}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a(IZ)Z

    move-result v5

    .line 77
    new-instance v0, Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget v1, v1, Lcom/apprupt/sdk/CvInterstitialManager$2;->a:I

    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v2, v2, Lcom/apprupt/sdk/CvInterstitialManager$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v3, v3, Lcom/apprupt/sdk/CvInterstitialManager$2;->c:Ljava/lang/String;

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvContentOptions;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 78
    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v1, v1, Lcom/apprupt/sdk/CvInterstitialManager$2;->d:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iput-object v1, v0, Lcom/apprupt/sdk/CvContentOptions;->i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    .line 79
    sget-object v1, Lcom/apprupt/sdk/CvSDK;->c:Lcom/apprupt/sdk/CvMediation;

    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v2, v2, Lcom/apprupt/sdk/CvInterstitialManager$2;->e:Landroid/content/Context;

    new-instance v3, Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;

    invoke-direct {v3, p0}, Lcom/apprupt/sdk/CvInterstitialManager$2$1$1;-><init>(Lcom/apprupt/sdk/CvInterstitialManager$2$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;)Lcom/apprupt/sdk/CvMediator;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvSDK;->d:Lcom/apprupt/sdk/CvValueExchange;

    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v1, v1, Lcom/apprupt/sdk/CvInterstitialManager$2;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget v2, v2, Lcom/apprupt/sdk/CvInterstitialManager$2;->a:I

    iget-object v3, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v3, v3, Lcom/apprupt/sdk/CvInterstitialManager$2;->d:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget-object v4, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v4, v4, Lcom/apprupt/sdk/CvInterstitialManager$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/apprupt/sdk/CvInterstitialManager$2$1;->a:Lcom/apprupt/sdk/CvInterstitialManager$2;

    iget-object v5, v5, Lcom/apprupt/sdk/CvInterstitialManager$2;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/apprupt/sdk/CvValueExchange;->a(Landroid/content/Context;ILcom/apprupt/sdk/CvSDK$CvInterstitialListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
