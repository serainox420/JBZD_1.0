.class public Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MenuAdapter$MenuHeaderViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;

    .line 25
    const v0, 0x7f110185

    const-string v1, "field \'btnSettings\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSettings:Lpl/jbzd/core/ui/view/TextView;

    .line 26
    const v0, 0x7f110186

    const-string v1, "field \'btnSignIn\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSignIn:Landroid/widget/RelativeLayout;

    .line 27
    const v0, 0x7f110187

    const-string v1, "field \'username\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    .line 28
    const v0, 0x7f110172

    const-string v1, "field \'avatar\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f110188

    const-string v1, "field \'avatarUrl\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;

    .line 36
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSettings:Lpl/jbzd/core/ui/view/TextView;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->btnSignIn:Landroid/widget/RelativeLayout;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->username:Lpl/jbzd/core/ui/view/TextView;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatar:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuHeaderViewHolder;->avatarUrl:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    return-void
.end method
