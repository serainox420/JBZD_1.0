.class Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "EndlessRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;->a:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;->a:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;

    iget-object v1, p0, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter$1;->a:Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;

    iget-object v1, v1, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/adapter/EndlessRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 215
    return-void
.end method
