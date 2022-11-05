.class public Lpl/jbzd/app/ui/view/comment/CommentsView_ViewBinding;
.super Ljava/lang/Object;
.source "CommentsView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 30
    const v0, 0x7f1100c7

    const-string v1, "field \'title\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->title:Lpl/jbzd/core/ui/view/TextView;

    .line 31
    const v0, 0x7f1101de

    const-string v1, "field \'latest\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    .line 32
    const v0, 0x7f1101df

    const-string v1, "field \'popular\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->popular:Lpl/jbzd/core/ui/view/TextView;

    .line 33
    const v0, 0x7f11015b

    const-string v1, "field \'swipeContainer\'"

    const-class v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 34
    const v0, 0x7f1101e0

    const-string v1, "field \'rvList\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    .line 35
    const v0, 0x7f1101e2

    const-string v1, "field \'editComment\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    .line 36
    const v0, 0x7f1101e3

    const-string v1, "field \'send\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/comment/CommentsView;->send:Landroid/widget/LinearLayout;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 43
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView_ViewBinding;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    .line 46
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->title:Lpl/jbzd/core/ui/view/TextView;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    .line 48
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->popular:Lpl/jbzd/core/ui/view/TextView;

    .line 49
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 50
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    .line 51
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    .line 52
    iput-object v1, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->send:Landroid/widget/LinearLayout;

    .line 53
    return-void
.end method
