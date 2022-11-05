.class final Lcom/google/gson/internal/a/n$19;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/gson/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/b/a;)Lcom/google/gson/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/d;",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p2}, Lcom/google/gson/b/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 595
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/gson/d;->a(Ljava/lang/Class;)Lcom/google/gson/o;

    move-result-object v1

    .line 596
    new-instance v0, Lcom/google/gson/internal/a/n$19$1;

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/a/n$19$1;-><init>(Lcom/google/gson/internal/a/n$19;Lcom/google/gson/o;)V

    goto :goto_0
.end method
