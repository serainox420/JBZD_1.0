.class Lcom/facebook/ads/AudienceNetworkActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AudienceNetworkActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/j;->c:Lcom/facebook/ads/internal/j;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/j;->a:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->c(Lcom/facebook/ads/AudienceNetworkActivity;)V

    sget-object v0, Lcom/facebook/ads/internal/j;->b:Lcom/facebook/ads/internal/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->d(Lcom/facebook/ads/AudienceNetworkActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity$3;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity;Z)Z

    :cond_1
    return-void
.end method
