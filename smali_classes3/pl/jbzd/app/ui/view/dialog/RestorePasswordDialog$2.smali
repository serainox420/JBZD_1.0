.class Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;
.super Ljava/lang/Object;
.source "RestorePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-interface {v0, v1, p1}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;->a:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->dismissAllowingStateLoss()V

    .line 96
    :cond_0
    return-void
.end method
