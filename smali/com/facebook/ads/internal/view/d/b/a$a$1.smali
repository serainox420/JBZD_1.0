.class Lcom/facebook/ads/internal/view/d/b/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->a(Lcom/facebook/ads/internal/view/d/b/a$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->b(Lcom/facebook/ads/internal/view/d/b/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d/b/a$a;->b(Lcom/facebook/ads/internal/view/d/b/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/d/b/a$a;->c(Lcom/facebook/ads/internal/view/d/b/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/a$a$1;->a:Lcom/facebook/ads/internal/view/d/b/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b/a$a;->d(Lcom/facebook/ads/internal/view/d/b/a$a;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
