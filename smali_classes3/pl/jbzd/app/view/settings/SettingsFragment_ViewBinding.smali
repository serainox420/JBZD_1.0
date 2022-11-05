.class public Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SettingsFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/settings/SettingsFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/settings/SettingsFragment;Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f1101c9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->b:Lpl/jbzd/app/view/settings/SettingsFragment;

    .line 37
    const-string v0, "field \'btnLoginLogout\' and method \'login\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-string v0, "field \'btnLoginLogout\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/b;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    .line 39
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->c:Landroid/view/View;

    .line 40
    new-instance v0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$1;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f1101c3

    const-string v1, "method \'connectWithFacebok\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->d:Landroid/view/View;

    .line 48
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$2;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f1101c4

    const-string v1, "method \'gotoFanpage\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->e:Landroid/view/View;

    .line 56
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$3;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f1101c5

    const-string v1, "method \'inviteYourFriends\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->f:Landroid/view/View;

    .line 64
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$4;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f1101c6

    const-string v1, "method \'gotoGooglePlay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->g:Landroid/view/View;

    .line 72
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$5;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f1101c7

    const-string v1, "method \'setNotificationsy\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->h:Landroid/view/View;

    .line 80
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$6;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f1101c8

    const-string v1, "method \'clearMemory\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/b;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->i:Landroid/view/View;

    .line 88
    new-instance v1, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding$7;-><init>(Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;Lpl/jbzd/app/view/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->b:Lpl/jbzd/app/view/settings/SettingsFragment;

    .line 100
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->b:Lpl/jbzd/app/view/settings/SettingsFragment;

    .line 103
    iput-object v1, v0, Lpl/jbzd/app/view/settings/SettingsFragment;->btnLoginLogout:Lpl/jbzd/core/ui/view/TextView;

    .line 105
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->c:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->d:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->e:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->f:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->g:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->h:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lpl/jbzd/app/view/settings/SettingsFragment_ViewBinding;->i:Landroid/view/View;

    .line 119
    return-void
.end method
