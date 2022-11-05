.class Lcom/facebook/ads/internal/view/a/a$3;
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

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/a$3;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/a$3;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/a/a;->b(Lcom/facebook/ads/internal/view/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/a$3;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
