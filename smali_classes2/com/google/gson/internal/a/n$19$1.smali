.class Lcom/google/gson/internal/a/n$19$1;
.super Lcom/google/gson/o;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/a/n$19;->a(Lcom/google/gson/d;Lcom/google/gson/b/a;)Lcom/google/gson/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/o",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/o;

.field final synthetic b:Lcom/google/gson/internal/a/n$19;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/a/n$19;Lcom/google/gson/o;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/gson/internal/a/n$19$1;->b:Lcom/google/gson/internal/a/n$19;

    iput-object p2, p0, Lcom/google/gson/internal/a/n$19$1;->a:Lcom/google/gson/o;

    invoke-direct {p0}, Lcom/google/gson/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/a;)Ljava/sql/Timestamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/gson/internal/a/n$19$1;->a:Lcom/google/gson/o;

    invoke-virtual {v0, p1}, Lcom/google/gson/o;->b(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 599
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/a/n$19$1;->a(Lcom/google/gson/stream/b;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/google/gson/stream/b;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/gson/internal/a/n$19$1;->a:Lcom/google/gson/o;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/o;->a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method public synthetic b(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/a/n$19$1;->a(Lcom/google/gson/stream/a;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method
