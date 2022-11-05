.class Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;
.super Ljava/lang/Object;
.source "SignInDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/SignInDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-interface {v0, v1, p1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;->e(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;->a:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->dismissAllowingStateLoss()V

    .line 162
    :cond_0
    return-void
.end method
