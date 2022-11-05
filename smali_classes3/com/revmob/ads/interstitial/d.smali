.class final Lcom/revmob/ads/interstitial/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/d;->a:Lcom/revmob/ads/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/d;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->h(Lcom/revmob/ads/interstitial/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/d;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->f()V

    return-void
.end method
