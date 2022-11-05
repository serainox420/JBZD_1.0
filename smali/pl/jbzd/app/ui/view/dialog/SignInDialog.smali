.class public Lpl/jbzd/app/ui/view/dialog/SignInDialog;
.super Lpl/jbzd/app/ui/view/dialog/a;
.source "SignInDialog.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Lcom/mobsandgeeks/saripaar/Validator;

.field btnRestorePassword:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSiginWithFacebook:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSignin:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSignup:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnTerm:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field close:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field email:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;
        message = "Wprowd\u017a adres email lub login"
    .end annotation
.end field

.field loader:Lpl/jbzd/core/ui/view/LoaderLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field password:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Password;
        message = "Has\u0142o powinno mie\u0107 min. 6 znak\u00f3w"
        min = 0x6
        scheme = .enum Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ANY:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/dialog/a;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)Lcom/mobsandgeeks/saripaar/Validator;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->setVisibility(I)V

    .line 181
    :cond_0
    return-void

    .line 179
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lpl/jbzd/app/ui/view/dialog/a;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    const v1, 0x7f0c0194

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->setStyle(II)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 76
    const v0, 0x7f040044

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a:Lbutterknife/Unbinder;

    .line 80
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 81
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 83
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 84
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lpl/jbzd/app/ui/view/dialog/a;->onDestroyView()V

    .line 171
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 174
    :cond_0
    return-void
.end method

.method public onValidationFailed(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/ValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/ValidationError;

    .line 204
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationError;->getView()Landroid/view/View;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mobsandgeeks/saripaar/ValidationError;->getCollatedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 208
    instance-of v0, v1, Lpl/jbzd/core/ui/view/EditText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 209
    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method

.method public onValidationSucceeded()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignin:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 190
    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 191
    invoke-virtual {v3}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-interface {v0, p0, v1, v2, v3}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/SignInDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->dismissAllowingStateLoss()V

    .line 195
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/ui/view/dialog/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    .line 96
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 98
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignin:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSiginWithFacebook:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$2;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$3;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnRestorePassword:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$4;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$5;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$5;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->close:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog$6;-><init>(Lpl/jbzd/app/ui/view/dialog/SignInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method
