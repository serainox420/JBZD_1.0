.class Lcom/smartadserver/android/library/ui/a$18$1$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$18$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$18$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$18$1;)V
    .locals 0

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$18$1$1;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 2191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2192
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$18$1$1;->a:Lcom/smartadserver/android/library/ui/a$18$1;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18$1;->e:Lcom/smartadserver/android/library/ui/a$18;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/a$18;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;II)V

    .line 2193
    return-void
.end method
