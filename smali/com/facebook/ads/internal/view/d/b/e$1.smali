.class Lcom/facebook/ads/internal/view/d/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/e;->a(Lcom/facebook/ads/internal/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;

.field final synthetic b:Lcom/facebook/ads/internal/view/d/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/e;Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/e;->a(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/a;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/view/d/a/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/e;->b(Lcom/facebook/ads/internal/view/d/b/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d/b/e;->a(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/d/b/e;->c(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LearnMorePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/b/e$1;->b:Lcom/facebook/ads/internal/view/d/b/e;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/d/b/e;->a(Lcom/facebook/ads/internal/view/d/b/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
