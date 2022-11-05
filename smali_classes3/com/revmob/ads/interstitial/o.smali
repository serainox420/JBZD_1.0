.class final Lcom/revmob/ads/interstitial/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/o;->a:Lcom/revmob/ads/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/o;->a:Lcom/revmob/ads/interstitial/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a;->b()V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/o;->a:Lcom/revmob/ads/interstitial/a;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a;->g(Lcom/revmob/ads/interstitial/a;)V

    return-void
.end method
