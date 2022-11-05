.class Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CvInlineAdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDRelativeLayout"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper;

.field private b:Lcom/apprupt/sdk/mediation/Size;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:I

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    .line 35
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/apprupt/sdk/mediation/Size;

    const/4 v1, 0x1

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->b:Lcom/apprupt/sdk/mediation/Size;

    .line 30
    iput-boolean v4, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->c:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->d:Ljava/util/Timer;

    .line 32
    iput v4, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->e:I

    .line 86
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->f:Ljava/lang/Runnable;

    .line 36
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->setDescendantFocusability(I)V

    .line 37
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->setFocusableInTouchMode(Z)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Lcom/apprupt/sdk/mediation/Size;)Lcom/apprupt/sdk/mediation/Size;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->b:Lcom/apprupt/sdk/mediation/Size;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->d:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->c:Z

    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->b:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;IIZ)Lcom/apprupt/sdk/mediation/Size$Computed;

    move-result-object v3

    .line 56
    iget v0, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    iget v4, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    invoke-virtual {p0, v0, v4}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->setMeasuredDimension(II)V

    .line 57
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->b:Lcom/apprupt/sdk/mediation/Size;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    :goto_0
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    iget v0, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    :cond_1
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->a()Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-result-object v0

    sget-object v4, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 66
    :goto_1
    if-eqz v0, :cond_2

    .line 67
    iget-object v4, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v4}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v4

    iput-boolean v1, v4, Lcom/apprupt/sdk/MRAIDView;->a:Z

    .line 68
    iget-object v1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v1}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/MRAIDView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    iget v4, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget v3, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v3, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->a:Lcom/apprupt/sdk/CvInlineAdWrapper;

    invoke-static {v3}, Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/CvInlineAdWrapper;)Lcom/apprupt/sdk/MRAIDView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/apprupt/sdk/MRAIDView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 79
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 80
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->c:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/apprupt/sdk/AdView;

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 83
    :cond_3
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout;->c:Z

    .line 84
    return-void

    .line 59
    :cond_4
    iget v0, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    goto :goto_0

    :cond_5
    move v0, v2

    .line 64
    goto :goto_1
.end method
