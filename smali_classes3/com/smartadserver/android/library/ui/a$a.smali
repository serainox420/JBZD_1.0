.class abstract Lcom/smartadserver/android/library/ui/a$a;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/ui/a$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$a;->b:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2092
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smartadserver/android/library/ui/a$a$a;-><init>(Lcom/smartadserver/android/library/ui/a$a;Lcom/smartadserver/android/library/ui/a$1;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a$a;->a:Landroid/view/GestureDetector;

    .line 2093
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
