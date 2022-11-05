.class Lcom/facebook/ads/internal/view/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/a$2;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/a$2;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/a;->a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/a$2;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/a;->a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/a/a$a;->a()V

    :cond_0
    return-void
.end method
