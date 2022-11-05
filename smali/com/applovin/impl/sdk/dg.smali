.class Lcom/applovin/impl/sdk/dg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/df;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/df;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/dg;->a:Lcom/applovin/impl/sdk/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dg;->a:Lcom/applovin/impl/sdk/df;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/df;->a(Lcom/applovin/impl/sdk/df;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dg;->a:Lcom/applovin/impl/sdk/df;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/df;->a(Lcom/applovin/impl/sdk/df;Lorg/json/JSONObject;)V

    return-void
.end method
