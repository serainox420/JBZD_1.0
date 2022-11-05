.class Lcom/facebook/ads/internal/view/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;

.field final synthetic b:Lcom/facebook/ads/internal/view/c/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Lcom/facebook/ads/internal/view/c/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/a;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/view/d/a/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/q;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v0, v3}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-class v1, Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
