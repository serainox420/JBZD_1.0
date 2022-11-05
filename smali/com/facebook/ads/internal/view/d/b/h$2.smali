.class Lcom/facebook/ads/internal/view/d/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/h;->a(Lcom/facebook/ads/internal/view/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/m;

.field final synthetic b:Lcom/facebook/ads/internal/view/d/b/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/h;Lcom/facebook/ads/internal/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/h$2;->b:Lcom/facebook/ads/internal/view/d/b/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/h$2;->a:Lcom/facebook/ads/internal/view/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/h$2;->b:Lcom/facebook/ads/internal/view/d/b/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/h;->a(Lcom/facebook/ads/internal/view/d/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SkipPlugin"

    const-string v1, "User clicked skip before the ads is allowed to skip."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/h$2;->a:Lcom/facebook/ads/internal/view/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/m;->f()V

    goto :goto_0
.end method
