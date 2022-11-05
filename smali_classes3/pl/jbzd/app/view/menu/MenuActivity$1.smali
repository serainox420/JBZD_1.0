.class Lpl/jbzd/app/view/menu/MenuActivity$1;
.super Landroid/support/v7/app/a;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/menu/MenuActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lpl/jbzd/app/view/menu/MenuActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/menu/MenuActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6

    .prologue
    .line 38
    iput-object p1, p0, Lpl/jbzd/app/view/menu/MenuActivity$1;->c:Lpl/jbzd/app/view/menu/MenuActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity$1;->c:Lpl/jbzd/app/view/menu/MenuActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/menu/MenuActivity;->invalidateOptionsMenu()V

    .line 43
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/a;->a(Landroid/view/View;F)V

    .line 54
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->b(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lpl/jbzd/app/view/menu/MenuActivity$1;->c:Lpl/jbzd/app/view/menu/MenuActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/menu/MenuActivity;->invalidateOptionsMenu()V

    .line 49
    return-void
.end method
