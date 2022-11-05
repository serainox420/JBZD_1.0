.class Lcom/facebook/ads/internal/view/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/h;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;

.field final synthetic b:Lcom/facebook/ads/internal/view/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/h;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/h;->c(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->b()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "close"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/h;->a(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v1

    const-string v2, "com.facebook.ads.interstitial.clicked"

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/internal/view/h$1;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/h;->b(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->a()Lcom/facebook/ads/internal/util/c$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/view/h;->a(Lcom/facebook/ads/internal/view/h;Lcom/facebook/ads/internal/util/c$a;)Lcom/facebook/ads/internal/util/c$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/view/h;->a(Lcom/facebook/ads/internal/view/h;J)J

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/internal/view/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h$1;->b:Lcom/facebook/ads/internal/view/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/h;->c(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/p;->a()V

    return-void
.end method
