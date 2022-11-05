.class public Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;
.super Landroid/app/DialogFragment;
.source "RestorePasswordDialog.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Lcom/mobsandgeeks/saripaar/Validator;

.field button:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field close:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field edit:Lpl/jbzd/core/ui/view/EditText;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)Lcom/mobsandgeeks/saripaar/Validator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lpl/jbzd/core/ui/view/LoaderLayout;->setVisibility(I)V

    .line 115
    :cond_0
    return-void

    .line 113
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    const v1, 0x7f0c0194

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->setStyle(II)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f040043

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a:Lbutterknife/Unbinder;

    .line 63
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 105
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 108
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
    .line 131
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/ValidationError;

    .line 135
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationError;->getView()Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mobsandgeeks/saripaar/ValidationError;->getCollatedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 139
    instance-of v0, v1, Lpl/jbzd/core/ui/view/EditText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 140
    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method public onValidationSucceeded()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->edit:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v2}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$a;->a(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->dismissAllowingStateLoss()V

    .line 126
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    .line 72
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->b:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 76
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->close:Landroid/widget/ImageView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog$2;-><init>(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method
