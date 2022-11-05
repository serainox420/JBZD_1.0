.class Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;
.super Ljava/lang/Object;
.source "SignUpDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-interface {v0, v1, p1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;->d(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;->a:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->dismissAllowingStateLoss()V

    .line 153
    :cond_0
    return-void
.end method
