.class public Lpl/jbzd/app/ui/view/dialog/NotificationDialog;
.super Landroid/app/DialogFragment;
.source "NotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/NotificationDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Z

.field mySwitch:Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field title:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->b:Z

    .line 51
    return-void
.end method

.method public static a(Z)Lpl/jbzd/app/ui/view/dialog/NotificationDialog;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "NOTIFICATIONS_ON"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    new-instance v1, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    invoke-direct {v1}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_ON"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->b:Z

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 63
    const v0, 0x7f040046

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->a:Lbutterknife/Unbinder;

    .line 66
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 67
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 111
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 114
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->mySwitch:Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setCheckedTogglePosition(I)V

    .line 79
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->title:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->mySwitch:Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/NotificationDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setOnToggleSwitchChangeListener(Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch$a;)V

    .line 104
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->mySwitch:Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setCheckedTogglePosition(I)V

    .line 83
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->title:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto :goto_0
.end method
