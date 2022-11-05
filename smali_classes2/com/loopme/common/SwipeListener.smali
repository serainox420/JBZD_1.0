.class public Lcom/loopme/common/SwipeListener;
.super Ljava/lang/Object;
.source "SwipeListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/SwipeListener$Listener;
    }
.end annotation


# instance fields
.field private initialX:F

.field private mListener:Lcom/loopme/common/SwipeListener$Listener;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(ILcom/loopme/common/SwipeListener$Listener;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/loopme/common/SwipeListener;->mViewWidth:I

    .line 16
    iput-object p2, p0, Lcom/loopme/common/SwipeListener;->mListener:Lcom/loopme/common/SwipeListener$Listener;

    .line 17
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 51
    :pswitch_0
    return v0

    .line 27
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/loopme/common/SwipeListener;->initialX:F

    goto :goto_0

    .line 34
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 36
    iget v3, p0, Lcom/loopme/common/SwipeListener;->initialX:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    .line 37
    iget v3, p0, Lcom/loopme/common/SwipeListener;->initialX:F

    sub-float v3, v2, v3

    .line 38
    iget-object v4, p0, Lcom/loopme/common/SwipeListener;->mListener:Lcom/loopme/common/SwipeListener$Listener;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/loopme/common/SwipeListener;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/loopme/common/SwipeListener;->mListener:Lcom/loopme/common/SwipeListener$Listener;

    invoke-interface {v3, v0}, Lcom/loopme/common/SwipeListener$Listener;->onSwipe(Z)V

    .line 43
    :cond_1
    iget v0, p0, Lcom/loopme/common/SwipeListener;->initialX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/loopme/common/SwipeListener;->initialX:F

    sub-float/2addr v0, v2

    .line 45
    iget-object v2, p0, Lcom/loopme/common/SwipeListener;->mListener:Lcom/loopme/common/SwipeListener$Listener;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/loopme/common/SwipeListener;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/loopme/common/SwipeListener;->mListener:Lcom/loopme/common/SwipeListener$Listener;

    invoke-interface {v0, v1}, Lcom/loopme/common/SwipeListener$Listener;->onSwipe(Z)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
