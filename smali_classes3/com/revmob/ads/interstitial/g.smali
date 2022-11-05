.class final Lcom/revmob/ads/interstitial/g;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/g;->b:Lcom/revmob/ads/interstitial/a;

    iput-object p2, p0, Lcom/revmob/ads/interstitial/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/g;->b:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/g;->b:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/interstitial/g;->a:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    new-instance v6, Lcom/revmob/internal/c;

    invoke-direct {v6}, Lcom/revmob/internal/c;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/revmob/internal/c;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
