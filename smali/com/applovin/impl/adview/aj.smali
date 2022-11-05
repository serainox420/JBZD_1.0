.class Lcom/applovin/impl/adview/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/adview/ah;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ah;ZZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/aj;->d:Lcom/applovin/impl/adview/ah;

    iput-boolean p2, p0, Lcom/applovin/impl/adview/aj;->a:Z

    iput-boolean p3, p0, Lcom/applovin/impl/adview/aj;->b:Z

    iput-object p4, p0, Lcom/applovin/impl/adview/aj;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/aj;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/aj;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->d:Lcom/applovin/impl/adview/ah;

    iget-object v1, p0, Lcom/applovin/impl/adview/aj;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/ah;->a(Lcom/applovin/impl/adview/ah;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->d:Lcom/applovin/impl/adview/ah;

    iget-object v1, p0, Lcom/applovin/impl/adview/aj;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/ah;->b(Lcom/applovin/impl/adview/ah;Landroid/app/Activity;)V

    goto :goto_0
.end method
