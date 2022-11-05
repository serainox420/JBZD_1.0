.class public Lpl/jbzd/core/ui/view/LoaderLayout_ViewBinding;
.super Ljava/lang/Object;
.source "LoaderLayout_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/core/ui/view/LoaderLayout;


# direct methods
.method public constructor <init>(Lpl/jbzd/core/ui/view/LoaderLayout;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lpl/jbzd/core/ui/view/LoaderLayout_ViewBinding;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 26
    const v0, 0x7f1101ea

    const-string v1, "field \'progressWheel\'"

    const-class v2, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    iput-object v0, p1, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 27
    const v0, 0x7f11011d

    const-string v1, "field \'text\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lpl/jbzd/core/ui/view/LoaderLayout_ViewBinding;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 34
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object v1, p0, Lpl/jbzd/core/ui/view/LoaderLayout_ViewBinding;->b:Lpl/jbzd/core/ui/view/LoaderLayout;

    .line 37
    iput-object v1, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->progressWheel:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    .line 38
    iput-object v1, v0, Lpl/jbzd/core/ui/view/LoaderLayout;->text:Lpl/jbzd/core/ui/view/TextView;

    .line 39
    return-void
.end method
