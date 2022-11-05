.class public Lpl/jbzd/app/ui/view/dialog/SignUpDialog;
.super Lpl/jbzd/app/ui/view/dialog/a;
.source "SignUpDialog.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Lcom/mobsandgeeks/saripaar/Validator;

.field btnLogin:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSignup:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSignup2:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnTerm:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private c:I

.field close:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field email:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Email;
        message = "Wprowd\u017a poprawny adres email"
    .end annotation
.end field

.field loader:Lpl/jbzd/core/ui/view/LoaderLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field login:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Length;
        message = "Wprowd\u017a poprawny login"
        min = 0x6
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

.field passwordConfirm:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;
        message = "Wprowadzone has\u0142a nie s\u0105 takie same"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/dialog/a;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->c:I

    .line 67
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->c:I

    return p1
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)Lcom/mobsandgeeks/saripaar/Validator;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->setVisibility(I)V

    .line 162
    :cond_0
    return-void

    .line 160
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lpl/jbzd/app/ui/view/dialog/a;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    const v1, 0x7f0c0194

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->setStyle(II)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const v0, 0x7f040045

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a:Lbutterknife/Unbinder;

    .line 84
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 86
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lpl/jbzd/app/ui/view/dialog/a;->onDestroyView()V

    .line 169
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 172
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
    .line 195
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/ValidationError;

    .line 199
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationError;->getView()Landroid/view/View;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mobsandgeeks/saripaar/ValidationError;->getCollatedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 203
    instance-of v0, v1, Lpl/jbzd/core/ui/view/EditText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 204
    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public onValidationSucceeded()V
    .locals 7

    .prologue
    .line 177
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iget v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->c:I

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup2:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup2:Lpl/jbzd/core/ui/view/TextView;

    :goto_0
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->login:Lpl/jbzd/core/ui/view/EditText;

    .line 181
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->email:Lpl/jbzd/core/ui/view/EditText;

    .line 182
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->password:Lpl/jbzd/core/ui/view/EditText;

    .line 183
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->passwordConfirm:Lpl/jbzd/core/ui/view/EditText;

    .line 184
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 180
    invoke-interface/range {v0 .. v6}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->dismissAllowingStateLoss()V

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->c:I

    .line 190
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/ui/view/dialog/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    .line 98
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 100
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnSignup2:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$2;-><init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnTerm:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$3;-><init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->btnLogin:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$4;-><init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/SignUpDialog;->close:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/SignUpDialog$5;-><init>(Lpl/jbzd/app/ui/view/dialog/SignUpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method
