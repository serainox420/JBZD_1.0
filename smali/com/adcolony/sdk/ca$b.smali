.class Lcom/adcolony/sdk/ca$b;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field private static final b:I = 0x96

.field private static final c:I = 0x1f4


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca;

.field private d:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:J

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/ca;Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 853
    iput-object p1, p0, Lcom/adcolony/sdk/ca$b;->a:Lcom/adcolony/sdk/ca;

    .line 854
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 848
    iput-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    .line 849
    iput-wide v2, p0, Lcom/adcolony/sdk/ca$b;->e:J

    .line 850
    iput-wide v2, p0, Lcom/adcolony/sdk/ca$b;->f:J

    .line 851
    iput-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    .line 856
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ca$b;->setBackgroundColor(I)V

    .line 857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ca$b;->setVerticalScrollBarEnabled(Z)V

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ca$b;->setHorizontalScrollBarEnabled(Z)V

    .line 859
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/ca$b;->setLayerType(ILandroid/graphics/Paint;)V

    .line 860
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 861
    invoke-static {p1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cm;->i()I

    move-result v1

    invoke-static {v1}, Lcom/adcolony/sdk/co;->a(I)I

    move-result v1

    .line 862
    invoke-static {p1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->j()I

    move-result v2

    invoke-static {v2}, Lcom/adcolony/sdk/co;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 860
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ca$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v0

    .line 864
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 865
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 867
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 868
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 869
    invoke-virtual {p0}, Lcom/adcolony/sdk/ca$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    const-string v1, "Webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception during construction: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v11, 0x1

    const-wide/16 v2, 0x0

    const/high16 v10, 0x43160000    # 150.0f

    .line 896
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->G()Z

    move-result v0

    .line 897
    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v4, v1, v0

    .line 900
    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v5, v1, v0

    .line 901
    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v6, v1, v0

    .line 902
    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v7, v1, v0

    .line 903
    iget-wide v0, p0, Lcom/adcolony/sdk/ca$b;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/adcolony/sdk/ca$b;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/adcolony/sdk/ca$b;->f:J

    iget-wide v8, p0, Lcom/adcolony/sdk/ca$b;->e:J

    sub-long/2addr v0, v8

    .line 905
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    cmp-long v2, v0, v12

    if-gtz v2, :cond_6

    .line 906
    cmp-long v0, v0, v12

    if-gtz v0, :cond_0

    .line 907
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->m()Lcom/adcolony/sdk/cm;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    const-string v1, "TEST_SWIPE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xDistRl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", xDistLr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", yDistUpDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", yDistDownUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 910
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    cmpl-float v1, v4, v10

    if-lez v1, :cond_2

    .line 911
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->m:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    .line 928
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 903
    goto :goto_0

    .line 912
    :cond_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    cmpl-float v1, v5, v10

    if-lez v1, :cond_3

    .line 913
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->l:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto :goto_1

    .line 914
    :cond_3
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    cmpl-float v1, v7, v10

    if-lez v1, :cond_4

    .line 915
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->n:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto :goto_1

    .line 916
    :cond_4
    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    cmpl-float v0, v6, v10

    if-lez v0, :cond_5

    .line 917
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->az()Lcom/adcolony/sdk/cn;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$a;->o:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Lcom/adcolony/sdk/cm$a;)V

    goto :goto_1

    .line 919
    :cond_5
    const-string v0, "TEST_SWIPE"

    const-string v1, "direction is not supported or distance was not met."

    invoke-static {v0, v1, v11}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 924
    :cond_6
    const-string v2, "TEST_SWIPE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swipe time was going to slow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms. not swiping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v11}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 877
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->G()Z

    move-result v0

    .line 878
    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 880
    packed-switch v0, :pswitch_data_0

    .line 892
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 882
    :pswitch_0
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca$b;->d:Landroid/util/Pair;

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/ca$b;->e:J

    goto :goto_0

    .line 886
    :pswitch_1
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ca$b;->g:Landroid/util/Pair;

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/ca$b;->f:J

    .line 888
    invoke-direct {p0}, Lcom/adcolony/sdk/ca$b;->a()V

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
