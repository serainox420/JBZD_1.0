.class public Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;
.super Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;
.source "ToggleSwitch.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method private setSeparatorVisibility(I)V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 40
    new-instance v1, Lpl/jbzd/core/ui/view/toggleswitch/a;

    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/jbzd/core/ui/view/toggleswitch/a;-><init>(Landroid/view/View;)V

    .line 41
    if-eq v0, p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_1

    .line 42
    :cond_0
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->e()V

    .line 39
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/toggleswitch/a;->d()V

    goto :goto_1

    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lpl/jbzd/core/ui/view/toggleswitch/BaseToggleSwitch;->a()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setCheckedTogglePosition(I)V

    .line 52
    return-void
.end method

.method protected c(I)Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->a:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(I)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setCheckedTogglePosition(I)V

    .line 28
    return-void
.end method

.method public getCheckedTogglePosition()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->a:I

    return v0
.end method

.method public setCheckedTogglePosition(I)V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->b()V

    .line 32
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->a(I)V

    .line 33
    invoke-direct {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->setSeparatorVisibility(I)V

    .line 34
    iput p1, p0, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->a:I

    .line 35
    invoke-virtual {p0, p1}, Lpl/jbzd/core/ui/view/toggleswitch/ToggleSwitch;->f(I)V

    .line 36
    return-void
.end method
