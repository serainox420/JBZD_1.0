.class Lcom/facebook/ads/AudienceNetworkActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AudienceNetworkActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->g(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->h(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->g(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$8$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$8$1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

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

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    sget-object v2, Lcom/facebook/ads/internal/j;->e:Lcom/facebook/ads/internal/j;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v2}, Lcom/facebook/ads/AudienceNetworkActivity;->f(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/AudienceNetworkActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
