.class Lcom/smartadserver/android/library/ui/a/b$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SASSphericalVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a/b;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b$4;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$4;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->b(Lcom/smartadserver/android/library/ui/a/b;)Lcom/smartadserver/android/library/ui/a/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/smartadserver/android/library/ui/a/a;->a(FF)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$4;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/b;->b()Z

    move-result v0

    return v0
.end method
