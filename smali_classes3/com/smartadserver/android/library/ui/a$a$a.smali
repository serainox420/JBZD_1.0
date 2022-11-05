.class final Lcom/smartadserver/android/library/ui/a$a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SASNativeVideoLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$a;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/a$a;)V
    .locals 0

    .prologue
    .line 2102
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$a$a;->a:Lcom/smartadserver/android/library/ui/a$a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/a$a;Lcom/smartadserver/android/library/ui/a$1;)V
    .locals 0

    .prologue
    .line 2102
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a$a$a;-><init>(Lcom/smartadserver/android/library/ui/a$a;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    .line 2107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 2109
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$a$a;->a:Lcom/smartadserver/android/library/ui/a$a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$a;->a()V

    .line 2111
    const/4 v0, 0x1

    .line 2113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
