.class Lcom/google/android/exoplayer2/c/e$a$2;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/c/e$a;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer2/c/e$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/c/e$a;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e$a$2;->d:Lcom/google/android/exoplayer2/c/e$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/c/e$a$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/c/e$a$2;->b:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/c/e$a$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e$a$2;->d:Lcom/google/android/exoplayer2/c/e$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/c/e$a;->a(Lcom/google/android/exoplayer2/c/e$a;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e$a$2;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e$a$2;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e$a$2;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/e;->a(Ljava/lang/String;JJ)V

    .line 150
    return-void
.end method
