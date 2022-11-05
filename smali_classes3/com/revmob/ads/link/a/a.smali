.class public final Lcom/revmob/ads/link/a/a;
.super Lcom/revmob/ads/a/b;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/a/b;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "anchor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/ads/link/a/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/revmob/ads/link/a/a;->c(Lorg/json/JSONObject;)Z

    move-result v6

    const-string v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/ads/link/a/a;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/revmob/ads/link/a/a;->a(Lorg/json/JSONObject;)Z

    move-result v4

    invoke-static {v1}, Lcom/revmob/ads/link/a/a;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/revmob/ads/link/a/a;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/revmob/ads/link/a/b;

    invoke-direct/range {v0 .. v6}, Lcom/revmob/ads/link/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/revmob/ads/link/a/a;->c:Lcom/revmob/internal/c;

    iget-object v1, v1, Lcom/revmob/internal/c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/revmob/ads/link/a/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/revmob/ads/link/a/a;->c:Lcom/revmob/internal/c;

    iget-object v1, v1, Lcom/revmob/internal/c;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/revmob/ads/link/a/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/revmob/ads/link/a/a;->b:Lcom/revmob/ads/a/a;

    invoke-interface {v1, v0}, Lcom/revmob/ads/a/a;->updateWithData(Lcom/revmob/client/a;)V

    return-void
.end method
