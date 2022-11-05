.class Lcom/millennialmedia/internal/SizableStateManager$1;
.super Ljava/lang/Object;
.source "SizableStateManager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/SizableStateManager;->a(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

.field final synthetic c:Lcom/millennialmedia/internal/SizableStateManager;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->c:Lcom/millennialmedia/internal/SizableStateManager;

    iput-object p2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    .prologue
    .line 609
    sub-int v0, p4, p2

    .line 610
    sub-int v1, p5, p3

    .line 611
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 612
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->a:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 614
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_RESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v2, v3, :cond_1

    .line 615
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->c:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onResized(II)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_EXPANDED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v2, v3, :cond_2

    .line 617
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->c:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onExpanded()V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v3, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v2, v3, :cond_3

    .line 619
    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->c:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onUnresized(II)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->b:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    sget-object v1, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$1;->c:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager;->b(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsed()V

    goto :goto_0
.end method
