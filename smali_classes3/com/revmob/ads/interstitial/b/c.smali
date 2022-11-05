.class final Lcom/revmob/ads/interstitial/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/internal/i;


# instance fields
.field private synthetic a:Lcom/revmob/ads/interstitial/b/b;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/b/c;->a:Lcom/revmob/ads/interstitial/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "Closing Fullscreen activity"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/c;->a:Lcom/revmob/ads/interstitial/b/b;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/b/b;->a:Lcom/revmob/ads/interstitial/b/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/b/a;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->finish()V

    return-void
.end method
