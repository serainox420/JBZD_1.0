.class Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;
.super Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;
.source "NotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/dialog/NotificationDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    invoke-direct {p0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 89
    if-eqz p2, :cond_1

    .line 90
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$a;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    iget-object v3, v1, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->mySwitch:Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v0, v3, v1}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$a;->b(Landroid/view/View;Z)Z

    .line 95
    :cond_0
    if-ne p1, v2, :cond_3

    .line 96
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->title:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 102
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;->a:Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->title:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto :goto_1
.end method
