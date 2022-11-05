.class Landroid/support/v7/app/p$12;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->a(Ljava/util/Map;Ljava/util/Map;)V
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
    .line 800
    iput-object p1, p0, Landroid/support/v7/app/p$12;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v7/app/p$12;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->a()V

    .line 804
    iget-object v0, p0, Landroid/support/v7/app/p$12;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    iget-object v1, p0, Landroid/support/v7/app/p$12;->a:Landroid/support/v7/app/p;

    iget-object v1, v1, Landroid/support/v7/app/p;->G:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/support/v7/app/p$12;->a:Landroid/support/v7/app/p;

    iget v2, v2, Landroid/support/v7/app/p;->E:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/app/OverlayListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    return-void
.end method
