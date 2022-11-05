.class Lcom/facebook/ads/internal/adapters/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/l;->a(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/facebook/ads/internal/adapters/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/l;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/l$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/l$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/l;->a(Lcom/facebook/ads/internal/adapters/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/l;->b(Lcom/facebook/ads/internal/adapters/l;)Lcom/facebook/ads/internal/g/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/l;->b(Lcom/facebook/ads/internal/adapters/l;)Lcom/facebook/ads/internal/g/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/l;->c(Lcom/facebook/ads/internal/adapters/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/l$1;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/l$1;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/ads/internal/g/f;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/l$1;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/l$1;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/l;->b(Lcom/facebook/ads/internal/adapters/l;)Lcom/facebook/ads/internal/g/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/l;->b(Lcom/facebook/ads/internal/adapters/l;)Lcom/facebook/ads/internal/g/f;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/l$1;->c:Lcom/facebook/ads/internal/adapters/l;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/l;->a(Lcom/facebook/ads/internal/adapters/l;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->e(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
