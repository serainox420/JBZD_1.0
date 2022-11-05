.class Lcom/google/android/exoplayer2/source/b/j$1;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/b/j;-><init>(ILcom/google/android/exoplayer2/source/b/j$a;Lcom/google/android/exoplayer2/source/b/c;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/b/j;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/b/j;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/j$1;->a:Lcom/google/android/exoplayer2/source/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/j$1;->a:Lcom/google/android/exoplayer2/source/b/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/b/j;->a(Lcom/google/android/exoplayer2/source/b/j;)V

    .line 137
    return-void
.end method
