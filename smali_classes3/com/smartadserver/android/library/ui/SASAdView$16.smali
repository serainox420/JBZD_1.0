.class Lcom/smartadserver/android/library/ui/SASAdView$16;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 20

    .prologue
    .line 2700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    instance-of v2, v2, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    if-eqz v2, :cond_7

    .line 2702
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 2703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2705
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v10

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentViewMaxSize()[I

    move-result-object v2

    .line 2713
    if-eqz v2, :cond_10

    .line 2714
    const/4 v3, 0x1

    aget v2, v2, v3

    move v4, v2

    .line 2717
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    check-cast v2, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;

    .line 2718
    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->getParallaxMode()I

    move-result v11

    .line 2721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    .line 2726
    const/4 v3, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v12, :cond_b

    .line 2727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2728
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 2730
    const/4 v6, 0x0

    .line 2732
    const/4 v14, 0x1

    aget v14, v8, v14

    const/4 v15, 0x1

    aget v15, v9, v15

    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v15, v15, v16

    sub-int/2addr v14, v15

    .line 2733
    int-to-double v0, v14

    move-wide/from16 v16, v0

    sub-int v15, v4, v5

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    .line 2735
    if-nez v11, :cond_2

    .line 2738
    sub-int v6, v4, v13

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v14

    .line 2766
    :cond_0
    :goto_2
    int-to-float v14, v6

    invoke-virtual {v3, v14}, Landroid/view/View;->setY(F)V

    .line 2768
    instance-of v14, v3, Landroid/webkit/WebView;

    if-eqz v14, :cond_1

    .line 2770
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 2773
    if-lez v13, :cond_1

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASNativeParallaxAdElement;->isJavascriptAPIEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2775
    const/4 v13, 0x0

    .line 2776
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v14}, Lcom/smartadserver/android/library/ui/SASAdView;->y(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v15, v15, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 2786
    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget v15, v15, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    div-float/2addr v6, v15

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    neg-int v6, v6

    .line 2787
    int-to-float v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->p:F

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 2789
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sas.parallax.setParallaxWindowRect("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ","

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ");"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2790
    check-cast v3, Landroid/webkit/WebView;

    const/4 v13, 0x0

    invoke-static {v3, v6, v13}, Lcom/smartadserver/android/library/g/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2726
    :cond_1
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_1

    .line 2739
    :cond_2
    const/4 v15, 0x1

    if-ne v11, v15, :cond_5

    .line 2746
    const-wide/16 v18, 0x0

    cmpg-double v6, v16, v18

    if-gez v6, :cond_3

    .line 2747
    neg-int v6, v14

    goto/16 :goto_2

    .line 2748
    :cond_3
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v16, v18

    if-lez v6, :cond_4

    .line 2749
    sub-int v6, v13, v5

    neg-int v6, v6

    .line 2751
    sub-int v15, v4, v5

    sub-int/2addr v14, v15

    neg-int v14, v14

    add-int/2addr v6, v14

    goto/16 :goto_2

    .line 2754
    :cond_4
    sub-int v6, v13, v5

    int-to-double v14, v6

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v6, v14

    neg-int v6, v6

    goto/16 :goto_2

    .line 2757
    :cond_5
    const/4 v15, 0x2

    if-ne v11, v15, :cond_6

    .line 2760
    const/4 v6, 0x0

    sub-int v15, v4, v5

    sub-int/2addr v14, v15

    neg-int v14, v14

    sub-int v15, v13, v5

    sub-int/2addr v14, v15

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_2

    .line 2761
    :cond_6
    const/4 v15, 0x3

    if-ne v11, v15, :cond_0

    .line 2763
    sub-int v6, v5, v13

    neg-int v14, v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_2

    .line 2794
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->n:Lcom/smartadserver/android/library/model/SASAdElement;

    instance-of v2, v2, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartadserver/android/library/g/c;->i(Landroid/content/Context;)I

    move-result v3

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->A(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->z(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->B(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartadserver/android/library/ui/a;->getLocationOnScreen([I)V

    .line 2801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->C(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->B(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 2805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->B(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 2806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->z(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 2807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v6}, Lcom/smartadserver/android/library/ui/SASAdView;->z(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v7}, Lcom/smartadserver/android/library/ui/SASAdView;->A(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 2808
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v7}, Lcom/smartadserver/android/library/ui/SASAdView;->C(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 2809
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v8}, Lcom/smartadserver/android/library/ui/SASAdView;->C(Lcom/smartadserver/android/library/ui/SASAdView;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v9}, Lcom/smartadserver/android/library/ui/SASAdView;->D(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 2810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v9}, Lcom/smartadserver/android/library/ui/SASAdView;->u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartadserver/android/library/ui/a;->isShown()Z

    move-result v9

    .line 2814
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v9}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2815
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    sub-int/2addr v2, v5

    invoke-static {v9, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    sub-int v4, v6, v4

    invoke-static {v2, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2819
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->E(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v2

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->F(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v2

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->G(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v4, Lcom/smartadserver/android/library/ui/SASAdView;->q:Z

    .line 2821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-boolean v2, v2, Lcom/smartadserver/android/library/ui/SASAdView;->q:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    if-ne v3, v2, :cond_d

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;ZZ)V

    .line 2829
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v2

    if-lez v2, :cond_b

    .line 2831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->A(Lcom/smartadserver/android/library/ui/SASAdView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->u(Lcom/smartadserver/android/library/ui/SASAdView;)Lcom/smartadserver/android/library/ui/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartadserver/android/library/ui/a;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 2833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v4}, Lcom/smartadserver/android/library/ui/SASAdView;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v5}, Lcom/smartadserver/android/library/ui/SASAdView;->k(Lcom/smartadserver/android/library/ui/SASAdView;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->setY(F)V

    .line 2834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v3, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->c(Lcom/smartadserver/android/library/ui/SASAdView;I)I

    .line 2839
    :cond_b
    return-void

    .line 2819
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 2823
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->j(Lcom/smartadserver/android/library/ui/SASAdView;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-le v7, v5, :cond_e

    if-lt v8, v6, :cond_f

    :cond_e
    if-nez v3, :cond_a

    .line 2825
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartadserver/android/library/ui/SASAdView$16;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/ui/SASAdView;ZZ)V

    goto :goto_4

    :cond_10
    move v4, v5

    goto/16 :goto_0
.end method
