.class public Lpl/jbzd/core/ui/view/toggleswitch/a;
.super Ljava/lang/Object;
.source "ToggleSwitchButton.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/a;-><init>(Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->a:Landroid/view/View;

    .line 25
    const v0, 0x7f1101ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->b:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f1101ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->c:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/a;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method
