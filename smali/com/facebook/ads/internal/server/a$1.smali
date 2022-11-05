.class Lcom/facebook/ads/internal/server/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/f/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/f/f;

.field final synthetic b:Lcom/facebook/ads/internal/server/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/server/a$1;->a:Lcom/facebook/ads/internal/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/f/i;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->a:Lcom/facebook/ads/internal/f/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/f/f;->e()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/internal/server/a;->a:Ljava/util/Map;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/server/a$1;->a:Lcom/facebook/ads/internal/f/f;

    iget-object v2, v2, Lcom/facebook/ads/internal/f/f;->e:Lcom/facebook/ads/internal/e;

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/util/y;->b(Landroid/content/Context;Lcom/facebook/ads/internal/e;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/i/a/a;)Lcom/facebook/ads/internal/i/a/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->c(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/server/a;->b(Lcom/facebook/ads/internal/server/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/server/a;->c(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/i/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/a/a;->b()Lcom/facebook/ads/internal/i/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    iget-object v3, v3, Lcom/facebook/ads/internal/server/a;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/i/a/p;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/i/a/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    invoke-static {v3}, Lcom/facebook/ads/internal/server/a;->d(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/i/a/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/i/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/i/a/p;Lcom/facebook/ads/internal/i/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$1;->b:Lcom/facebook/ads/internal/server/a;

    sget-object v2, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/b;)V

    goto :goto_0
.end method
