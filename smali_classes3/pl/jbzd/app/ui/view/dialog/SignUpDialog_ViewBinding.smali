.class public Lpl/jbzd/app/ui/view/dialog/SignUpDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SignUpDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    .line 24
    const v0, 0x7f110152

    const-string v1, "field \'login\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->login:Lpl/jbzd/core/ui/view/EditText;

    .line 25
    const v0, 0x7f110073

    const-string v1, "field \'email\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 26
    const v0, 0x7f110149

    const-string v1, "field \'password\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 27
    const v0, 0x7f110153

    const-string v1, "field \'passwordConfirm\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->passwordConfirm:Lpl/jbzd/core/ui/view/EditText;

    .line 28
    const v0, 0x7f110151

    const-string v1, "field \'btnSignup\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    const v0, 0x7f11014e

    const-string v1, "field \'btnTerm\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    .line 30
    const v0, 0x7f110154

    const-string v1, "field \'btnLogin\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnLogin:Lpl/jbzd/core/ui/view/TextView;

    .line 31
    const v0, 0x7f110155

    const-string v1, "field \'btnSignup2\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup2:Lpl/jbzd/core/ui/view/TextView;

    .line 32
    const v0, 0x7f110141

    const-string v1, "field \'close\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->close:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f110140

    const-string v1, "field \'loader\'"

    const-class v2, Lpl/jbzd/core/ui/view/LoaderLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/LoaderLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    .line 40
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/SignUpDialog;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->login:Lpl/jbzd/core/ui/view/EditText;

    .line 44
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 45
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 46
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->passwordConfirm:Lpl/jbzd/core/ui/view/EditText;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    .line 48
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    .line 49
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnLogin:Lpl/jbzd/core/ui/view/TextView;

    .line 50
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup2:Lpl/jbzd/core/ui/view/TextView;

    .line 51
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->close:Landroid/widget/ImageView;

    .line 52
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 53
    return-void
.end method
