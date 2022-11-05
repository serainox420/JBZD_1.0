.class Lpl/jbzd/app/view/main/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$3;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 802
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$3;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$3;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->onBackPressed()V

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$3;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    goto :goto_0
.end method
