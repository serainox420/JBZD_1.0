.class Lpl/jbzd/app/ui/view/comment/CommentsView$1;
.super Ljava/lang/Object;
.source "CommentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f02006e

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->popular:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f02006f

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;I)I

    .line 153
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$1;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$b;->onLatestClick(Landroid/view/View;)V

    .line 158
    :cond_0
    return-void
.end method
