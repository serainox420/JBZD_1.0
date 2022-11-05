.class final Lcom/revmob/ads/banner/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/internal/t;


# instance fields
.field private synthetic a:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/c;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "#click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/c;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$000(Lcom/revmob/ads/banner/RevMobBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/c;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/revmob/ads/banner/c;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$1000(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/banner/c;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
