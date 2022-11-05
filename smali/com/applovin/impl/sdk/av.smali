.class Lcom/applovin/impl/sdk/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/au;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/av;->a:Lcom/applovin/impl/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/av;->a:Lcom/applovin/impl/sdk/au;

    iget-object v0, v0, Lcom/applovin/impl/sdk/au;->a:Lcom/applovin/impl/sdk/at;

    iget-object v0, v0, Lcom/applovin/impl/sdk/at;->a:Lcom/applovin/impl/sdk/as;

    iget-object v0, v0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ar;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ar;->c(Lcom/applovin/impl/sdk/ar;)V

    return-void
.end method
