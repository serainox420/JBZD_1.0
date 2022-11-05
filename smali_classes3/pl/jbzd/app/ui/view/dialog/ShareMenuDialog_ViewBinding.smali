.class public Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog_ViewBinding;
.super Ljava/lang/Object;
.source "ShareMenuDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 23
    const v0, 0x7f110142

    const-string v1, "field \'layout\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->layout:Landroid/widget/RelativeLayout;

    .line 24
    const v0, 0x7f11013b

    const-string v1, "field \'dialog\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->dialog:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f110143

    const-string v1, "field \'btnShare\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnShare:Lpl/jbzd/core/ui/view/TextView;

    .line 26
    const v0, 0x7f110144

    const-string v1, "field \'btnCopy\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCopy:Lpl/jbzd/core/ui/view/TextView;

    .line 27
    const v0, 0x7f110145

    const-string v1, "field \'btnSave\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnSave:Lpl/jbzd/core/ui/view/TextView;

    .line 28
    const v0, 0x7f110146

    const-string v1, "field \'btnCancel\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCancel:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 35
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->layout:Landroid/widget/RelativeLayout;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->dialog:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnShare:Lpl/jbzd/core/ui/view/TextView;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCopy:Lpl/jbzd/core/ui/view/TextView;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnSave:Lpl/jbzd/core/ui/view/TextView;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;->btnCancel:Lpl/jbzd/core/ui/view/TextView;

    .line 44
    return-void
.end method
