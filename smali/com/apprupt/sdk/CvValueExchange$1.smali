.class Lcom/apprupt/sdk/CvValueExchange$1;
.super Ljava/lang/Object;
.source "CvValueExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvValueExchange;->a(Ljava/lang/String;Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/mediation/AdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/CvValueExchange;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvValueExchange;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/apprupt/sdk/CvValueExchange$1;->b:Lcom/apprupt/sdk/CvValueExchange;

    iput-object p2, p0, Lcom/apprupt/sdk/CvValueExchange$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$1;->b:Lcom/apprupt/sdk/CvValueExchange;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange;->a(Lcom/apprupt/sdk/CvValueExchange;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/apprupt/sdk/CvValueExchange$Cappings;

    .line 202
    if-eqz v6, :cond_1

    .line 203
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Grant rewardAmount "

    aput-object v2, v1, v3

    invoke-static {v6}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v6}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    move-result-object v2

    iget v2, v2, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v6}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->a(Lcom/apprupt/sdk/CvValueExchange$Cappings;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 204
    invoke-static {v6}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->c(Lcom/apprupt/sdk/CvValueExchange$Cappings;)Lcom/apprupt/sdk/CvValueExchange$RewardConfig;

    move-result-object v4

    .line 206
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$1;->b:Lcom/apprupt/sdk/CvValueExchange;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange;->b(Lcom/apprupt/sdk/CvValueExchange;)Lcom/apprupt/sdk/CvValueExchange$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/apprupt/sdk/CvValueExchange$1;->b:Lcom/apprupt/sdk/CvValueExchange;

    invoke-static {v0}, Lcom/apprupt/sdk/CvValueExchange;->b(Lcom/apprupt/sdk/CvValueExchange;)Lcom/apprupt/sdk/CvValueExchange$Listener;

    move-result-object v7

    new-instance v0, Lcom/apprupt/sdk/CvValueExchange$Reward;

    iget-object v1, p0, Lcom/apprupt/sdk/CvValueExchange$1;->b:Lcom/apprupt/sdk/CvValueExchange;

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$1;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v4, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->a:Ljava/lang/String;

    iget v4, v4, Lcom/apprupt/sdk/CvValueExchange$RewardConfig;->b:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/apprupt/sdk/CvValueExchange$Reward;-><init>(Lcom/apprupt/sdk/CvValueExchange;ILjava/lang/String;ILcom/apprupt/sdk/CvValueExchange$1;)V

    invoke-interface {v7, v0}, Lcom/apprupt/sdk/CvValueExchange$Listener;->onReward(Lcom/apprupt/sdk/CvValueExchange$Reward;)V

    .line 208
    invoke-static {v6}, Lcom/apprupt/sdk/CvValueExchange$Cappings;->d(Lcom/apprupt/sdk/CvValueExchange$Cappings;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/apprupt/sdk/CvValueExchange;->c()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Grant rewardAmount - unknown space"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apprupt/sdk/CvValueExchange$1;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method
