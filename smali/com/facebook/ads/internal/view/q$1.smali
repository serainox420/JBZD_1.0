.class Lcom/facebook/ads/internal/view/q$1;
.super Lcom/facebook/ads/internal/view/d/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/q;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/q$1;->a:Lcom/facebook/ads/internal/view/q;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/d;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/q$1;->a(Lcom/facebook/ads/internal/view/d/a/d;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q$1;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/q;->a(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    return-void
.end method
