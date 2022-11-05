.class public Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;
.super Landroid/app/DialogFragment;
.source "ShareMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$a;
    }
.end annotation


# instance fields
.field private a:Lbutterknife/Unbinder;

.field private b:Lpl/jbzd/app/model/Media;

.field btnCancel:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnCopy:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnSave:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field btnShare:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field dialog:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field layout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)Lpl/jbzd/app/model/Media;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->b:Lpl/jbzd/app/model/Media;

    return-object v0
.end method


# virtual methods
.method public a(Lpl/jbzd/app/model/Media;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->b:Lpl/jbzd/app/model/Media;

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;

    iput-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->b:Lpl/jbzd/app/model/Media;

    .line 62
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->b:Lpl/jbzd/app/model/Media;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a(Lpl/jbzd/app/model/Media;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 69
    const v0, 0x7f040041

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a:Lbutterknife/Unbinder;

    .line 74
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 76
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 77
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 150
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    .line 153
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "media"

    iget-object v1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->b:Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    const v1, 0x7f0c00ea

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->setStyle(II)V

    .line 89
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnShare:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$1;-><init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCopy:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$2;-><init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnSave:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$3;-><init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCancel:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$4;-><init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->layout:Landroid/widget/RelativeLayout;

    new-instance v1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$5;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog$5;-><init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method
