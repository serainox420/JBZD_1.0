.class Landroid/support/v7/widget/v$5;
.super Landroid/support/v7/widget/v$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/v;->c(Landroid/support/v7/widget/RecyclerView$u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$u;

.field final synthetic b:Landroid/support/v4/view/az;

.field final synthetic c:Landroid/support/v7/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v4/view/az;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iput-object p2, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    iput-object p3, p0, Landroid/support/v7/widget/v$5;->b:Landroid/support/v4/view/az;

    invoke-direct {p0}, Landroid/support/v7/widget/v$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->n(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 233
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->b:Landroid/support/v4/view/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->k(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iget-object v0, v0, Landroid/support/v7/widget/v;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->c()V

    .line 245
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 237
    return-void
.end method
