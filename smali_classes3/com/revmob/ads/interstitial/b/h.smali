.class public final Lcom/revmob/ads/interstitial/b/h;
.super Lcom/revmob/ads/interstitial/b/a;

# interfaces
.implements Lcom/revmob/internal/t;


# direct methods
.method public constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/revmob/ads/interstitial/b/a;-><init>(Lcom/revmob/FullscreenActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/b/h;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->e()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/h;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "#click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/b/h;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
