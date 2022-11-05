.class public Lcom/mopub/mobileads/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAlertGestureListener$1;,
        Lcom/mopub/mobileads/AdAlertGestureListener$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/common/AdReport;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Lcom/mopub/mobileads/AdAlertReporter;

.field private g:I

.field private h:F

.field private i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field private j:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 30
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 16
    iput v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    .line 25
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->j:Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:Lcom/mopub/common/AdReport;

    .line 36
    return-void
.end method

.method private a(F)V
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 92
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 94
    :cond_0
    return-void
.end method

.method private a(FF)Z
    .locals 2

    .prologue
    .line 87
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->d(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 99
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    .line 101
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:I

    .line 112
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 113
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 115
    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertGestureListener;->f(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 106
    iput p1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    .line 108
    :cond_0
    return-void
.end method

.method private d(F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 118
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->e:Z

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    add-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 121
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    .line 122
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->e:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method private e(F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 130
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    if-eqz v2, :cond_0

    .line 138
    :goto_0
    return v0

    .line 132
    :cond_0
    iget v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    iget v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->b:F

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 133
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->e:Z

    .line 134
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->d:Z

    .line 135
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->c()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method private f(F)Z
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(F)Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lcom/mopub/mobileads/AdAlertReporter;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->a:Lcom/mopub/common/AdReport;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/AdAlertReporter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:Lcom/mopub/mobileads/AdAlertReporter;

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->f:Lcom/mopub/mobileads/AdAlertReporter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAlertReporter;->send()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAlertGestureListener;->b()V

    .line 79
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->g:I

    .line 83
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 84
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    if-ne v0, v1, :cond_0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/AdAlertGestureListener;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$1;->a:[I

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->i:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdAlertGestureListener$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->c:F

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdAlertGestureListener;->h:F

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->a(F)V

    goto :goto_1

    .line 57
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->b(F)V

    goto :goto_1

    .line 60
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdAlertGestureListener;->c(F)V

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
