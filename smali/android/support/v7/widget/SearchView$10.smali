.class Landroid/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1033
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->f()V

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->e()V

    goto :goto_0

    .line 1036
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 1037
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->h()V

    goto :goto_0

    .line 1038
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->l()V

    goto :goto_0
.end method
