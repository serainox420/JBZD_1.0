.class public Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog_ViewBinding;
.super Ljava/lang/Object;
.source "AddKwejkDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    .line 25
    const v0, 0x7f1100c7

    const-string v1, "field \'title\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->title:Lpl/jbzd/core/ui/view/EditText;

    .line 26
    const v0, 0x7f11013d

    const-string v1, "field \'tags\'"

    const-class v2, Lpl/jbzd/core/ui/view/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    .line 27
    const v0, 0x7f11013e

    const-string v1, "field \'tagList\'"

    const-class v2, Lpl/jbzd/app/ui/view/TagGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/TagGroup;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    .line 28
    const v0, 0x7f1100b7

    const-string v1, "field \'button\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    .line 29
    const v0, 0x7f1100c3

    const-string v1, "field \'image\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f110141

    const-string v1, "field \'close\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->close:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f110140

    const-string v1, "field \'loader\'"

    const-class v2, Lpl/jbzd/core/ui/view/LoaderLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/LoaderLayout;

    iput-object v0, p1, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    .line 38
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog_ViewBinding;->b:Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;

    .line 41
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->title:Lpl/jbzd/core/ui/view/EditText;

    .line 42
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tags:Lpl/jbzd/core/ui/view/EditText;

    .line 43
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->tagList:Lpl/jbzd/app/ui/view/TagGroup;

    .line 44
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->button:Lpl/jbzd/core/ui/view/TextView;

    .line 45
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->image:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->close:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->loader:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 48
    return-void
.end method
