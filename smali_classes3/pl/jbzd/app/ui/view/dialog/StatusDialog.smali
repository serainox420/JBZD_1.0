.class public Lpl/jbzd/app/ui/view/dialog/StatusDialog;
.super Landroid/app/DialogFragment;
.source "StatusDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/StatusDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Ljava/lang/String;

.field button:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field title:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->b:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/StatusDialog;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->d:I

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lpl/jbzd/app/ui/view/dialog/StatusDialog;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "ARG_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "ARG_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "ARG_BUTTON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lpl/jbzd/app/ui/view/dialog/StatusDialog;

    invoke-direct {v1}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;-><init>()V

    .line 49
    invoke-virtual {v1, v0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->d:I

    .line 61
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_TITLE"

    const-string v2, "Sukces"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_BUTTON"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 68
    const v0, 0x7f040042

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a:Lbutterknife/Unbinder;

    .line 71
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->title:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 103
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 106
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/StatusDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/StatusDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/StatusDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
