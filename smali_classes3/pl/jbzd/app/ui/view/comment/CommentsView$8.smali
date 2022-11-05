.class Lpl/jbzd/app/ui/view/comment/CommentsView$8;
.super Ljava/lang/Object;
.source "CommentsView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 191
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$8;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$8;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$8;->a:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lpl/jbzd/app/ui/view/comment/CommentsView$b;->a(Landroid/view/View;Z)V

    .line 198
    :cond_0
    return-void
.end method
