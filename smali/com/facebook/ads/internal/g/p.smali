.class public Lcom/facebook/ads/internal/g/p;
.super Lcom/facebook/ads/internal/g/d;


# direct methods
.method public constructor <init>(DLjava/lang/String;Lcom/facebook/ads/internal/util/n;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/facebook/ads/internal/util/n;->a()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

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

    const-string v0, "debug_crash_report"

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
