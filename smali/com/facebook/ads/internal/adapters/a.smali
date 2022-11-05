.class public abstract Lcom/facebook/ads/internal/adapters/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/adapters/b;

.field protected final b:Lcom/facebook/ads/internal/j/a;

.field private final c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/j/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/a;->a:Lcom/facebook/ads/internal/adapters/b;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/a;->b:Lcom/facebook/ads/internal/j/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a;->a:Lcom/facebook/ads/internal/adapters/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a;->a:Lcom/facebook/ads/internal/adapters/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b;->d()V

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/a;->b:Lcom/facebook/ads/internal/j/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/a;->b:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Ljava/util/Map;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/a;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a;->c:Landroid/content/Context;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a;->a:Lcom/facebook/ads/internal/adapters/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a;->a:Lcom/facebook/ads/internal/adapters/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b;->e()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
