.class public Lcom/applovin/adview/AppLovinTouchToClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(F)F
    .locals 1

    iget-object v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0
.end method

.method private a(FFFF)F
    .locals 2

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/applovin/adview/AppLovinTouchToClickListener;->a(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->a:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->c:F

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->b:F

    iget v1, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/adview/AppLovinTouchToClickListener;->a(FFFF)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinTouchToClickListener;->e:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
