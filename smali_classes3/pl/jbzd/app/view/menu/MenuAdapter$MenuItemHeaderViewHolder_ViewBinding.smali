.class public Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MenuAdapter$MenuItemHeaderViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;

    .line 22
    const v0, 0x7f110189

    const-string v1, "field \'item\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;

    .line 29
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder_ViewBinding;->b:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;

    .line 32
    iput-object v1, v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemHeaderViewHolder;->item:Lpl/jbzd/core/ui/view/TextView;

    .line 33
    return-void
.end method