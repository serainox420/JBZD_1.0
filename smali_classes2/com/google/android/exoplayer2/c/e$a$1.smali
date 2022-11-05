.class Lcom/google/android/exoplayer2/c/e$a$1;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/a/d;

.field final synthetic b:Lcom/google/android/exoplayer2/c/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/c/e$a;Lcom/google/android/exoplayer2/a/d;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e$a$1;->b:Lcom/google/android/exoplayer2/c/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/c/e$a$1;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e$a$1;->b:Lcom/google/android/exoplayer2/c/e$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/c/e$a;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e$a$1;->a:Lcom/google/android/exoplayer2/a/d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/e;->a(Lcom/google/android/exoplayer2/a/d;)V

    .line 134
    return-void
.end method
