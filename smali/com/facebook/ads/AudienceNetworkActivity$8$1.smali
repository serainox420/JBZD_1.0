.class Lcom/facebook/ads/AudienceNetworkActivity$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AudienceNetworkActivity$8;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AudienceNetworkActivity$8;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity$8;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$8$1;->a:Lcom/facebook/ads/AudienceNetworkActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8$1;->a:Lcom/facebook/ads/AudienceNetworkActivity$8;

    iget-object v0, v0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->g(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/AudienceNetworkActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview already destroyed, cannot activate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$8$1;->a:Lcom/facebook/ads/AudienceNetworkActivity$8;

    iget-object v0, v0, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->g(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity$8$1;->a:Lcom/facebook/ads/AudienceNetworkActivity$8;

    iget-object v2, v2, Lcom/facebook/ads/AudienceNetworkActivity$8;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v2}, Lcom/facebook/ads/AudienceNetworkActivity;->h(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
