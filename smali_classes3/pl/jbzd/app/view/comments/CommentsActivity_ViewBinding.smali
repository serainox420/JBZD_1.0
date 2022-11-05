.class public Lpl/jbzd/app/view/comments/CommentsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CommentsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/comments/CommentsActivity;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/comments/CommentsActivity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lpl/jbzd/app/view/comments/CommentsActivity_ViewBinding;->b:Lpl/jbzd/app/view/comments/CommentsActivity;

    .line 28
    const v0, 0x7f1100f0

    const-string v1, "field \'toolbar\'"

    const-class v2, Landroid/support/v7/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p1, Lpl/jbzd/app/view/comments/CommentsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 29
    const v0, 0x7f11017d

    const-string v1, "field \'txtToolbarTitle\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/comments/CommentsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    const v0, 0x7f11012b

    const-string v1, "field \'commentView\'"

    const-class v2, Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/comment/CommentsView;

    iput-object v0, p1, Lpl/jbzd/app/view/comments/CommentsActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lpl/jbzd/app/view/comments/CommentsActivity_ViewBinding;->b:Lpl/jbzd/app/view/comments/CommentsActivity;

    .line 37
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/comments/CommentsActivity_ViewBinding;->b:Lpl/jbzd/app/view/comments/CommentsActivity;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/view/comments/CommentsActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/view/comments/CommentsActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/view/comments/CommentsActivity;->commentView:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 43
    return-void
.end method
