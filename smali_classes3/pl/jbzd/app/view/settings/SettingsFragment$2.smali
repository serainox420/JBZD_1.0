.class Lpl/jbzd/app/view/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lpl/jbzd/api/auth/LogoutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/settings/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lpl/jbzd/app/view/settings/SettingsFragment$2;->a:Lpl/jbzd/app/view/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment$2;->a:Lpl/jbzd/app/view/settings/SettingsFragment;

    iget-object v0, v0, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment$2;->a:Lpl/jbzd/app/view/settings/SettingsFragment;

    iget-object v0, v0, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 91
    :cond_0
    return-void
.end method
