.class Lcom/google/android/exoplayer2/c/e$a$3;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/Format;

.field final synthetic b:Lcom/google/android/exoplayer2/c/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/c/e$a;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e$a$3;->b:Lcom/google/android/exoplayer2/c/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/c/e$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e$a$3;->b:Lcom/google/android/exoplayer2/c/e$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/c/e$a;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e$a$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/e;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 164
    return-void
.end method
