.class Lpl/jbzd/core/ui/view/lce/c$8;
.super Ljava/lang/Object;
.source "LceRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/view/lce/c;->e(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;)V
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
    .line 424
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c$8;->a:Lpl/jbzd/core/ui/view/lce/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$8;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, p0, Lpl/jbzd/core/ui/view/lce/c$8;->a:Lpl/jbzd/core/ui/view/lce/c;

    iget-object v1, v1, Lpl/jbzd/core/ui/view/lce/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/c;->notifyItemRemoved(I)V

    .line 428
    return-void
.end method
