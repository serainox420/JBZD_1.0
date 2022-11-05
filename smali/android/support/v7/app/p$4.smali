.class Landroid/support/v7/app/p$4;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Landroid/support/v7/app/p$4;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Landroid/support/v7/app/p$4;->a:Landroid/support/v7/app/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/p;->d(Z)V

    .line 920
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 915
    return-void
.end method
