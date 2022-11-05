.class public Lcom/mopub/common/util/Views;
.super Ljava/lang/Object;
.source "Views.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ai;->H(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    const-string v1, "Attempting to call View#getRootView() on an unattached View."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 72
    const v0, 0x1020002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    invoke-static {p0}, Lcom/mopub/common/util/Views;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-static {p1}, Lcom/mopub/common/util/Views;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 42
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 14
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
