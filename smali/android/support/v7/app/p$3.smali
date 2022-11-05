.class Landroid/support/v7/app/p$3;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->d()V
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
    .line 884
    iput-object p1, p0, Landroid/support/v7/app/p$3;->a:Landroid/support/v7/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/support/v7/app/p$3;->a:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 888
    iget-object v0, p0, Landroid/support/v7/app/p$3;->a:Landroid/support/v7/app/p;

    invoke-virtual {v0}, Landroid/support/v7/app/p;->e()V

    .line 889
    return-void
.end method
