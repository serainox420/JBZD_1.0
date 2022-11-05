.class Lcom/applovin/impl/adview/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/x;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/x;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->h(Lcom/applovin/impl/adview/x;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/x;

    invoke-static {v0}, Lcom/applovin/impl/adview/x;->g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->setClickable(Z)V

    return-void
.end method
