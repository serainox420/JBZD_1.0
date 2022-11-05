.class Lpl/jbzd/core/ui/view/lce/c$5;
.super Ljava/lang/Object;
.source "LceRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/view/lce/c;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lpl/jbzd/core/ui/view/lce/c;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/view/lce/c;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c$5;->c:Lpl/jbzd/core/ui/view/lce/c;

    iput p2, p0, Lpl/jbzd/core/ui/view/lce/c$5;->a:I

    iput-object p3, p0, Lpl/jbzd/core/ui/view/lce/c$5;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$5;->c:Lpl/jbzd/core/ui/view/lce/c;

    iget v1, p0, Lpl/jbzd/core/ui/view/lce/c$5;->a:I

    iget-object v2, p0, Lpl/jbzd/core/ui/view/lce/c$5;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/core/ui/view/lce/c;->notifyItemRangeInserted(II)V

    .line 303
    return-void
.end method
