.class Lcom/google/android/exoplayer2/source/dash/c$2;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/manifest/c;Lcom/google/android/exoplayer2/source/dash/a$a;IJLandroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/c;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/c;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$2;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$2;->a:Lcom/google/android/exoplayer2/source/dash/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/dash/c;->a(Lcom/google/android/exoplayer2/source/dash/c;Z)V

    .line 243
    return-void
.end method
