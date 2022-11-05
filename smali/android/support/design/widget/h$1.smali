.class Landroid/support/design/widget/h$1;
.super Landroid/support/design/widget/a$a;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/h;->a(Landroid/support/design/widget/j$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/support/design/widget/j$a;

.field final synthetic c:Landroid/support/design/widget/h;


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/j$a;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroid/support/design/widget/h$1;->c:Landroid/support/design/widget/h;

    iput-boolean p2, p0, Landroid/support/design/widget/h$1;->a:Z

    iput-object p3, p0, Landroid/support/design/widget/h$1;->b:Landroid/support/design/widget/j$a;

    invoke-direct {p0}, Landroid/support/design/widget/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/design/widget/h$1;->c:Landroid/support/design/widget/h;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/h;->c:I

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/h$1;->c:Landroid/support/design/widget/h;

    iget-object v1, v0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget-boolean v0, p0, Landroid/support/design/widget/h$1;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/h$1;->a:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/h$1;->b:Landroid/support/design/widget/j$a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/design/widget/h$1;->b:Landroid/support/design/widget/j$a;

    invoke-interface {v0}, Landroid/support/design/widget/j$a;->b()V

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
