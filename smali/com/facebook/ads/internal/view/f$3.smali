.class Lcom/facebook/ads/internal/view/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/f;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->c(Lcom/facebook/ads/internal/view/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->d(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/a/b;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/a/a;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/a/a;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->d(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/b;->setProgress(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$3;->a:Lcom/facebook/ads/internal/view/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;Z)Z

    return-void
.end method
