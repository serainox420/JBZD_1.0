.class Lcom/apprupt/sdk/AdView$PlaceholderView;
.super Landroid/view/View;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaceholderView"
.end annotation


# instance fields
.field public a:Lcom/apprupt/sdk/mediation/Size;

.field final synthetic b:Lcom/apprupt/sdk/AdView;


# direct methods
.method public constructor <init>(Lcom/apprupt/sdk/AdView;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 729
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$PlaceholderView;->b:Lcom/apprupt/sdk/AdView;

    .line 730
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 727
    new-instance v0, Lcom/apprupt/sdk/mediation/Size;

    const/4 v1, 0x4

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    iput-object v0, p0, Lcom/apprupt/sdk/AdView$PlaceholderView;->a:Lcom/apprupt/sdk/mediation/Size;

    .line 731
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 737
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$PlaceholderView;->a:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView$PlaceholderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;IIZ)Lcom/apprupt/sdk/mediation/Size$Computed;

    move-result-object v0

    .line 738
    iget v1, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    iget v2, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    invoke-virtual {p0, v1, v2}, Lcom/apprupt/sdk/AdView$PlaceholderView;->setMeasuredDimension(II)V

    .line 739
    invoke-virtual {p0}, Lcom/apprupt/sdk/AdView$PlaceholderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 740
    iget v2, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 741
    iget v0, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 742
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/AdView$PlaceholderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 744
    return-void
.end method
