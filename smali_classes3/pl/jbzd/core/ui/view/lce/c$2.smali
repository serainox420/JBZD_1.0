.class Lpl/jbzd/core/ui/view/lce/c$2;
.super Ljava/lang/Object;
.source "LceRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/view/lce/c;->a(Ljava/util/List;)V
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
    .line 252
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/c$2;->a:Lpl/jbzd/core/ui/view/lce/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/c$2;->a:Lpl/jbzd/core/ui/view/lce/c;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/c;->notifyDataSetChanged()V

    .line 256
    return-void
.end method
