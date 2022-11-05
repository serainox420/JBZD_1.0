.class Lcom/mopub/nativeads/l$1;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/l;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/l$b;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/l;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/l;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mopub/nativeads/l$1;->a:Lcom/mopub/nativeads/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mopub/nativeads/l$1;->a:Lcom/mopub/nativeads/l;

    invoke-virtual {v0}, Lcom/mopub/nativeads/l;->c()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
