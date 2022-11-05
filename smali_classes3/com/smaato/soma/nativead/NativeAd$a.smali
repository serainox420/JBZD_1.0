.class Lcom/smaato/soma/nativead/NativeAd$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/nativead/NativeAd;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smaato/soma/nativead/NativeAd;)V
    .locals 1

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->b:Ljava/lang/String;

    .line 1649
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1683
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    .line 1686
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1687
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v0}, Lcom/smaato/soma/nativead/NativeAd;->e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1688
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1699
    :cond_0
    :goto_1
    return v1

    .line 1691
    :cond_1
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    add-int/lit8 v2, v2, 0x1

    .line 1694
    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    move v3, v1

    .line 1686
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    .line 1659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1660
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd$a;->b(Ljava/lang/String;)I

    move-result v0

    .line 1665
    :goto_0
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, v1, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v1}, Lcom/smaato/soma/nativead/NativeAd;->e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1666
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    iget-object v1, v1, Lcom/smaato/soma/nativead/NativeAd;->a:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v2}, Lcom/smaato/soma/nativead/NativeAd;->e(Lcom/smaato/soma/nativead/NativeAd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1667
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    const/4 v2, 0x0

    .line 1666
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1668
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1662
    :cond_1
    sget-object v0, Lcom/smaato/soma/nativead/NativeAd;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smaato/soma/nativead/NativeAd$a;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/nativead/NativeAd$a;->b:Ljava/lang/String;

    .line 1675
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1676
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    iget-object v1, p0, Lcom/smaato/soma/nativead/NativeAd$a;->a:Lcom/smaato/soma/nativead/NativeAd;

    invoke-static {v1}, Lcom/smaato/soma/nativead/NativeAd;->a(Lcom/smaato/soma/nativead/NativeAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1679
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
