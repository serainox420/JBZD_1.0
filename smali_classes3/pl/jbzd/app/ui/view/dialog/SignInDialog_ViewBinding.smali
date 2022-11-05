.class public Lpl/jbzd/app/ui/view/dialog/SignInDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SignInDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/dialog/SignInDialog;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 24
    const v0, 0x7f110073

    const-string v1, "field \'email\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 25
    const v0, 0x7f110149

    const-string v1, "field \'password\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 26
    const v0, 0x7f11014a

    const-string v1, "field \'btnSignin\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignin:Lpl/jbzd/core/ui/view/TextView;

    .line 27
    const v0, 0x7f11014c

    const-string v1, "field \'btnSiginWithFacebook\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSiginWithFacebook:Lpl/jbzd/core/ui/view/TextView;

    .line 28
    const v0, 0x7f11014e

    const-string v1, "field \'btnTerm\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    const v0, 0x7f110150

    const-string v1, "field \'btnRestorePassword\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnRestorePassword:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    const v0, 0x7f110151

    const-string v1, "field \'btnSignup\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    .line 31
    const v0, 0x7f110141

    const-string v1, "field \'close\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->close:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f110140

    const-string v1, "field \'loader\'"

    const-class v2, Lpl/jbzd/core/ui/view/LoaderLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/LoaderLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 39
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 44
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignin:Lpl/jbzd/core/ui/view/TextView;

    .line 45
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSiginWithFacebook:Lpl/jbzd/core/ui/view/TextView;

    .line 46
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnRestorePassword:Lpl/jbzd/core/ui/view/TextView;

    .line 48
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    .line 49
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->close:Landroid/widget/ImageView;

    .line 50
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 51
    return-void
.end method
