.class Lcom/mopub/nativeads/h$1;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/h;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mopub/nativeads/h$1;->a:Lcom/mopub/nativeads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mopub/nativeads/h$1;->a:Lcom/mopub/nativeads/h;

    invoke-static {v0}, Lcom/mopub/nativeads/h;->a(Lcom/mopub/nativeads/h;)V

    .line 78
    return-void
.end method
