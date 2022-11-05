.class final Lcom/revmob/ads/interstitial/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:I

.field private synthetic c:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;I)V
    .locals 1

    iput-object p1, p0, Lcom/revmob/ads/interstitial/p;->c:Lcom/revmob/ads/interstitial/a;

    iput p2, p0, Lcom/revmob/ads/interstitial/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/revmob/ads/interstitial/p;->b:I

    iput v0, p0, Lcom/revmob/ads/interstitial/p;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/revmob/ads/interstitial/p;->a:I

    add-int/lit16 v0, v0, -0x3e8

    if-gez v0, :cond_0

    iput v5, p0, Lcom/revmob/ads/interstitial/p;->a:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/p;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/revmob/ads/interstitial/p;->a:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/revmob/ads/interstitial/p;->a:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/p;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/revmob/ads/interstitial/p;->a:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/p;->c:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/p;->c:Lcom/revmob/ads/interstitial/a;

    invoke-static {v1}, Lcom/revmob/ads/interstitial/a;->c(Lcom/revmob/ads/interstitial/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
