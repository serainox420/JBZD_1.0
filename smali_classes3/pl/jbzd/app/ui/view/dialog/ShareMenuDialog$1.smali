.class Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;
.super Ljava/lang/Object;
.source "ShareMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$a;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-static {v2}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)Lpl/jbzd/app/model/Media;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->dismissAllowingStateLoss()V

    .line 98
    :cond_0
    return-void
.end method
