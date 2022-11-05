.class Lcom/facebook/ads/internal/DisplayAdController$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/internal/f/d;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method
