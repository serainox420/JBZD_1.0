.class public Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog_ViewBinding;
.super Ljava/lang/Object;
.source "RestorePasswordDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    .line 24
    const v0, 0x7f110147

    const-string v1, "field \'edit\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->edit:Lpl/jbzd/core/ui/view/EditText;

    .line 25
    const v0, 0x7f1100b7

    const-string v1, "field \'button\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    .line 26
    const v0, 0x7f110141

    const-string v1, "field \'close\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->close:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f110140

    const-string v1, "field \'loader\'"

    const-class v2, Lpl/jbzd/core/ui/view/LoaderLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/LoaderLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    .line 34
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;

    .line 37
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->edit:Lpl/jbzd/core/ui/view/EditText;

    .line 38
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    .line 39
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->close:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/RestorePasswordDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 41
    return-void
.end method
