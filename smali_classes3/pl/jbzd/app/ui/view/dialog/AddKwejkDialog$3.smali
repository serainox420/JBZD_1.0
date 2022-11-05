.class Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;
.super Ljava/lang/Object;
.source "AddKwejkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-interface {v0, v1, p1}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$3;->a:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->dismissAllowingStateLoss()V

    .line 172
    :cond_0
    return-void
.end method
