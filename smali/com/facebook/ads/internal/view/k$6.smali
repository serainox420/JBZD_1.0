.class Lcom/facebook/ads/internal/view/k$6;
.super Lcom/facebook/ads/internal/j/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/k;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->b(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ah;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->b(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ah;->a()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/k;->f(Lcom/facebook/ads/internal/view/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/util/z;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/util/z;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/k;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/util/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/k;->c(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/view/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/j;->f:Lcom/facebook/ads/internal/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/k;->e(Lcom/facebook/ads/internal/view/k;)Lcom/facebook/ads/internal/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/k;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/k;->g(Lcom/facebook/ads/internal/view/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/k$6;->a:Lcom/facebook/ads/internal/view/k;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/k;->f(Lcom/facebook/ads/internal/view/k;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/g/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
