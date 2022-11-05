.class Landroid/support/v7/app/p$11;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->b(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Landroid/support/v7/app/p$11;->c:Landroid/support/v7/app/p;

    iput-object p2, p0, Landroid/support/v7/app/p$11;->a:Ljava/util/Map;

    iput-object p3, p0, Landroid/support/v7/app/p$11;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Landroid/support/v7/app/p$11;->c:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->h:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 787
    iget-object v0, p0, Landroid/support/v7/app/p$11;->c:Landroid/support/v7/app/p;

    iget-object v1, p0, Landroid/support/v7/app/p$11;->a:Ljava/util/Map;

    iget-object v2, p0, Landroid/support/v7/app/p$11;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/p;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 788
    return-void
.end method
