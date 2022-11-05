.class Lcom/smartadserver/android/library/ui/a/b$2;
.super Ljava/lang/Object;
.source "SASSphericalVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a/b;->b(Landroid/content/Context;)V
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
    .line 81
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/b$2;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b$2;->a:Lcom/smartadserver/android/library/ui/a/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a/b;->a(Lcom/smartadserver/android/library/ui/a/b;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
