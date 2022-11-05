.class final Lcom/revmob/ads/interstitial/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/b/a;

.field private synthetic b:Lcom/revmob/ads/interstitial/b/e;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/b/e;Lcom/revmob/ads/interstitial/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b/f;->b:Lcom/revmob/ads/interstitial/b/e;

    iput-object p2, p0, Lcom/revmob/ads/interstitial/b/f;->a:Lcom/revmob/ads/interstitial/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/f;->b:Lcom/revmob/ads/interstitial/b/e;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/b/e;->a(Lcom/revmob/ads/interstitial/b/e;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/f;->a:Lcom/revmob/ads/interstitial/b/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/b/a;->b()Z

    return-void
.end method
