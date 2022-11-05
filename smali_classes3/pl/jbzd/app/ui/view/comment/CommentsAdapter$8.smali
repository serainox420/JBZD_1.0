.class Lpl/jbzd/app/ui/view/comment/CommentsAdapter$8;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Landroid/view/ViewGroup;Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$ViewType;I)Landroid/support/v7/widget/RecyclerView$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsAdapter;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$8;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$8;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->c()V

    .line 436
    return-void
.end method
