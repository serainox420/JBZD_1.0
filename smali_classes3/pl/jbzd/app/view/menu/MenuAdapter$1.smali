.class Lpl/jbzd/app/view/menu/MenuAdapter$1;
.super Ljava/lang/Object;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/menu/MenuAdapter;->a(Landroid/view/ViewGroup;I)Lpl/jbzd/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

.field final synthetic b:Lpl/jbzd/app/view/menu/MenuAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/menu/MenuAdapter;Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->b:Lpl/jbzd/app/view/menu/MenuAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->a:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->b:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->b:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->a(Lpl/jbzd/app/view/menu/MenuAdapter;)Lpl/jbzd/app/view/menu/MenuAdapter$a;

    move-result-object v1

    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->b:Lpl/jbzd/app/view/menu/MenuAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/menu/MenuAdapter;->b(Lpl/jbzd/app/view/menu/MenuAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->a:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iget-object v2, p0, Lpl/jbzd/app/view/menu/MenuAdapter$1;->a:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lpl/jbzd/app/view/menu/MenuAdapter$a;->a(Landroid/view/View;Lpl/jbzd/app/view/menu/model/Item;I)V

    .line 140
    :cond_0
    return-void
.end method
