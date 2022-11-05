.class Lpl/jbzd/core/ui/view/lce/c$7;
.super Ljava/lang/Object;
.source "LceRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/view/lce/c;->a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/view/lce/c;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/view/lce/c;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, v1, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, v1, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->notifyItemChanged(I)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c$7;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, v1, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->notifyItemInserted(I)V

    goto :goto_0
.end method
