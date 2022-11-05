.class public Lpl/jbzd/app/view/settings/SettingsFragment;
.super Lpl/jbzd/app/view/a;
.source "SettingsFragment.java"


# instance fields
.field private b:Lbutterknife/Unbinder;

.field btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Lpl/jbzd/app/view/menu/model/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lpl/jbzd/app/view/a;-><init>()V

    return-void
.end method

.method public static a(Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/settings/SettingsFragment;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lpl/jbzd/app/view/settings/SettingsFragment;

    invoke-direct {v0}, Lpl/jbzd/app/view/settings/SettingsFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "ARG_MENU_ITEM"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/settings/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public a()Lpl/jbzd/app/view/main/MainActivity$FragmentType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    return-object v0
.end method

.method public b()Lpl/jbzd/app/view/menu/model/Item;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->c:Lpl/jbzd/app/view/menu/model/Item;

    return-object v0
.end method

.method public clearMemory(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lpl/jbzd/app/view/main/MainActivity;->d:Z

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f0a0100

    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0104

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a(ILjava/lang/String;Ljava/lang/String;)Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public connectWithFacebok(Landroid/view/View;)V
    .locals 5
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0119

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "public_profile"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "email"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "user_birthday"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 134
    :cond_0
    return-void
.end method

.method public gotoFanpage(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "polubienie fanpage"

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "ustawienia"

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "136504313116407"

    const-string v2, "jebzdzidy"

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_1
    return-void
.end method

.method public gotoGooglePlay(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/c;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    :cond_0
    return-void
.end method

.method public inviteYourFriends(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "podziel si\u0119 appk\u0105"

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a010c

    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lpl/jbzd/app/view/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 165
    :cond_1
    return-void
.end method

.method public login(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 205
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 206
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 210
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/api/ApiClient;->setToken(Landroid/content/Context;Lpl/jbzd/app/model/User;)V

    .line 211
    const/4 v0, 0x1

    const v1, 0x7f0a00ff

    invoke-virtual {p0, v1}, Lpl/jbzd/app/view/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0104

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a(ILjava/lang/String;Ljava/lang/String;)Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    :cond_4
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/AuthActivity;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->d()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lpl/jbzd/app/view/a;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MENU_ITEM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->c:Lpl/jbzd/app/view/menu/model/Item;

    .line 76
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/settings/SettingsFragment$1;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/api/ApiClient;->addLoginCallback(Lpl/jbzd/api/auth/LoginCallback;)V

    .line 85
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/settings/SettingsFragment$2;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/api/ApiClient;->addLogoutCallback(Lpl/jbzd/api/auth/LogoutCallback;)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f040091

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->b:Lbutterknife/Unbinder;

    .line 100
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->b:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->b:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 111
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/view/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setNotificationsy(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    const-string v1, "NOTIFICATIONS_ON"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->a(Z)Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/NotificationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method
