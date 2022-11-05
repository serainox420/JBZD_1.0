.class Landroid/support/v7/app/p$2;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/support/v7/app/OverlayListView$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/p;->a(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$g;

.field final synthetic b:Landroid/support/v7/app/p;


# direct methods
.method constructor <init>(Landroid/support/v7/app/p;Landroid/support/v7/media/g$g;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Landroid/support/v7/app/p$2;->b:Landroid/support/v7/app/p;

    iput-object p2, p0, Landroid/support/v7/app/p$2;->a:Landroid/support/v7/media/g$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Landroid/support/v7/app/p$2;->b:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->k:Ljava/util/Set;

    iget-object v1, p0, Landroid/support/v7/app/p$2;->a:Landroid/support/v7/media/g$g;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Landroid/support/v7/app/p$2;->b:Landroid/support/v7/app/p;

    iget-object v0, v0, Landroid/support/v7/app/p;->i:Landroid/support/v7/app/p$f;

    invoke-virtual {v0}, Landroid/support/v7/app/p$f;->notifyDataSetChanged()V

    .line 872
    return-void
.end method
