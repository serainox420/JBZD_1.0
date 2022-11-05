.class Lcom/facebook/ads/internal/adapters/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/c;->a(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/c$4;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/c$4;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/c;->b(Lcom/facebook/ads/internal/adapters/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
