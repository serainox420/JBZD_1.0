.class Lcom/mopub/nativeads/c$1;
.super Ljava/lang/Object;
.source "NativeAdSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/c;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/c;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/c;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mopub/nativeads/c$1;->a:Lcom/mopub/nativeads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mopub/nativeads/c$1;->a:Lcom/mopub/nativeads/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativeads/c;->c:Z

    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/c$1;->a:Lcom/mopub/nativeads/c;

    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->g()V

    .line 87
    return-void
.end method
