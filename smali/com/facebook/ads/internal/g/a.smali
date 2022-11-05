.class public Lcom/facebook/ads/internal/g/a;
.super Lcom/facebook/ads/internal/g/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Lcom/facebook/ads/internal/util/l;)V
    .locals 6

    invoke-virtual {p5}, Lcom/facebook/ads/internal/util/l;->a()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/g/d;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/g/h;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/g/h;->b:Lcom/facebook/ads/internal/g/h;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "browser_session"

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
