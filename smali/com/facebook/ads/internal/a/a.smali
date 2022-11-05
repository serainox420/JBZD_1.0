.class public abstract Lcom/facebook/ads/internal/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/facebook/ads/internal/util/c$a;
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v0

    instance-of v1, p0, Lcom/facebook/ads/internal/a/c;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2, p4}, Lcom/facebook/ads/internal/g/g;->h(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    const-string v0, "Click logged"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p2, p4}, Lcom/facebook/ads/internal/g/g;->c(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string v0, "native_click_report_url"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/util/z;

    invoke-direct {v1, p4}, Lcom/facebook/ads/internal/util/z;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public abstract b()V
.end method
