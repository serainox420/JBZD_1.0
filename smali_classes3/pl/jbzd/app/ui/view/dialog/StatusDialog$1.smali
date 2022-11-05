.class Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;
.super Ljava/lang/Object;
.source "StatusDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/StatusDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/StatusDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/StatusDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/StatusDialog$a;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a(Lpl/jbzd/app/ui/view/dialog/StatusDialog;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lpl/jbzd/app/ui/view/dialog/StatusDialog$a;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->dismissAllowingStateLoss()V

    .line 94
    :cond_0
    return-void
.end method
