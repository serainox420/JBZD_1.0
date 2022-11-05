.class Lcom/apprupt/sdk/CvValueExchange$3$1$1;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;


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
    .line 296
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$3$1$1;->a:Lcom/apprupt/sdk/CvValueExchange$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VE onComplete called with adSpaceId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 300
    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$3$1$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/apprupt/sdk/CvValueExchange$3$1$1$1;-><init>(Lcom/apprupt/sdk/CvValueExchange$3$1$1;Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method
