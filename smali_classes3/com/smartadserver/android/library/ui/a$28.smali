.class Lcom/smartadserver/android/library/ui/a$28;
.super Landroid/widget/RelativeLayout;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1055
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->E(Lcom/smartadserver/android/library/ui/a;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->F(Lcom/smartadserver/android/library/ui/a;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1057
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1058
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1060
    int-to-float v2, v1

    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/a;->E(Lcom/smartadserver/android/library/ui/a;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1061
    int-to-float v3, v0

    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/a;->F(Lcom/smartadserver/android/library/ui/a;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1062
    iget-object v4, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/a;->E(Lcom/smartadserver/android/library/ui/a;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/smartadserver/android/library/ui/a$28;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/a;->F(Lcom/smartadserver/android/library/ui/a;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1065
    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1066
    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1073
    :goto_0
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1074
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1079
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1080
    return-void

    .line 1070
    :cond_1
    int-to-float v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0
.end method
