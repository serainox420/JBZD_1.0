.class final Lcom/revmob/ads/button/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/revmob/ads/button/RevMobButton;


# direct methods
.method constructor <init>(Lcom/revmob/ads/button/RevMobButton;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    sget-object v0, Lcom/revmob/a/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/revmob/ads/button/RevMobButton;->access$002(Lcom/revmob/ads/button/RevMobButton;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    invoke-static {v0}, Lcom/revmob/ads/button/RevMobButton;->access$000(Lcom/revmob/ads/button/RevMobButton;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    invoke-static {v0}, Lcom/revmob/ads/button/RevMobButton;->access$100(Lcom/revmob/ads/button/RevMobButton;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    invoke-static {v0}, Lcom/revmob/ads/button/RevMobButton;->access$000(Lcom/revmob/ads/button/RevMobButton;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/revmob/ads/button/b;

    invoke-direct {v1, p0}, Lcom/revmob/ads/button/b;-><init>(Lcom/revmob/ads/button/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
