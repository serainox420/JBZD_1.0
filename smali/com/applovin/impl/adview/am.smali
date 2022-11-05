.class Lcom/applovin/impl/adview/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/am;->a:Lcom/applovin/impl/adview/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/am;->a:Lcom/applovin/impl/adview/ah;

    invoke-static {v0}, Lcom/applovin/impl/adview/ah;->b(Lcom/applovin/impl/adview/ah;)Lcom/applovin/impl/adview/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/w;->dismiss()V

    return-void
.end method
