.class final Lcom/revmob/ads/interstitial/f;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/revmob/ads/interstitial/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/interstitial/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/interstitial/f;->b:Lcom/revmob/ads/interstitial/a;

    iput-object p2, p0, Lcom/revmob/ads/interstitial/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/interstitial/f;->b:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/f;->b:Lcom/revmob/ads/interstitial/a;

    iget-object v0, v0, Lcom/revmob/ads/interstitial/a;->a:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->u()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/revmob/ads/interstitial/f;->a:Ljava/lang/String;

    if-ne v1, v4, :cond_1

    new-instance v6, Lcom/revmob/internal/c;

    invoke-direct {v6}, Lcom/revmob/internal/c;-><init>()V

    move v4, v5

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/revmob/ads/interstitial/f;->b:Lcom/revmob/ads/interstitial/a;

    iget-wide v8, v7, Lcom/revmob/ads/interstitial/a;->m:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    const-string v7, "&videoPosition="

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "%.2f"

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/revmob/ads/interstitial/f;->b:Lcom/revmob/ads/interstitial/a;

    iget-wide v10, v9, Lcom/revmob/ads/interstitial/a;->m:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method
