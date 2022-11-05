.class public Lcom/applovin/impl/sdk/cj;
.super Lcom/applovin/impl/sdk/bw;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ck;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/ck;)V
    .locals 1

    const-string v0, "TaskCollectAdvertisingId"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/cj;->a:Lcom/applovin/impl/sdk/ck;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cj;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/r;->c()Lcom/applovin/impl/sdk/t;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cj;->a:Lcom/applovin/impl/sdk/ck;

    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/ck;->a(Lcom/applovin/impl/sdk/t;)V

    return-void
.end method
