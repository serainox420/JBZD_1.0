.class Lpl/jbzd/app/ui/view/comment/CommentsView$9;
.super Ljava/lang/Object;
.source "CommentsView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$9;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$9;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->d(Lpl/jbzd/app/ui/view/comment/CommentsView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$9;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 221
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$9;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->e(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    .line 223
    :cond_0
    return-void
.end method
