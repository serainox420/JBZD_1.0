.class Lcom/facebook/ads/internal/view/h$2;
.super Lcom/facebook/ads/internal/adapters/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/h;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h$2;->a:Lcom/facebook/ads/internal/view/h;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/b;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h$2;->a:Lcom/facebook/ads/internal/view/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/h;->a(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    const-string v1, "com.facebook.ads.interstitial.impression.logged"

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    return-void
.end method
