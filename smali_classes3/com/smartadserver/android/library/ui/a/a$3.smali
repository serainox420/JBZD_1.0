.class Lcom/smartadserver/android/library/ui/a/a$3;
.super Ljava/lang/Object;
.source "SASSphericalVideoRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a/a;->a(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a/a;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a/a$3;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/a$3;->a:Lcom/smartadserver/android/library/ui/a/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/smartadserver/android/library/ui/a/a;->b(Lcom/smartadserver/android/library/ui/a/a;F)F

    .line 150
    return-void
.end method
