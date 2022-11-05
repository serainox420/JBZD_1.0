.class final Lcom/revmob/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/revmob/internal/d;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/revmob/internal/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/internal/f;->a:Lcom/revmob/internal/d;

    iput-object p2, p0, Lcom/revmob/internal/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/revmob/ads/interstitial/b/i;

    iget-object v1, p0, Lcom/revmob/internal/f;->a:Lcom/revmob/internal/d;

    invoke-static {v1}, Lcom/revmob/internal/d;->a(Lcom/revmob/internal/d;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/revmob/internal/g;

    invoke-direct {v2, p0}, Lcom/revmob/internal/g;-><init>(Lcom/revmob/internal/f;)V

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/interstitial/b/i;-><init>(Landroid/content/Context;Lcom/revmob/internal/s;)V

    iget-object v1, p0, Lcom/revmob/internal/f;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/interstitial/b/i;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method
