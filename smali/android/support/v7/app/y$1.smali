.class Landroid/support/v7/app/y$1;
.super Landroid/support/v4/view/be;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/y;


# direct methods
.method constructor <init>(Landroid/support/v7/app/y;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-boolean v0, v0, Landroid/support/v7/app/y;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->f:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/y;->n:Landroid/support/v7/view/h;

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    invoke-virtual {v0}, Landroid/support/v7/app/y;->i()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/y$1;->a:Landroid/support/v7/app/y;

    iget-object v0, v0, Landroid/support/v7/app/y;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ai;->w(Landroid/view/View;)V

    .line 152
    :cond_1
    return-void
.end method
