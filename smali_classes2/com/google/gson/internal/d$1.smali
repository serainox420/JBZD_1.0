.class Lcom/google/gson/internal/d$1;
.super Lcom/google/gson/o;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/d;->a(Lcom/google/gson/d;Lcom/google/gson/b/a;)Lcom/google/gson/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/gson/d;

.field final synthetic d:Lcom/google/gson/b/a;

.field final synthetic e:Lcom/google/gson/internal/d;

.field private f:Lcom/google/gson/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;ZZLcom/google/gson/d;Lcom/google/gson/b/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/gson/internal/d$1;->e:Lcom/google/gson/internal/d;

    iput-boolean p2, p0, Lcom/google/gson/internal/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/d$1;->b:Z

    iput-object p4, p0, Lcom/google/gson/internal/d$1;->c:Lcom/google/gson/d;

    iput-object p5, p0, Lcom/google/gson/internal/d$1;->d:Lcom/google/gson/b/a;

    invoke-direct {p0}, Lcom/google/gson/o;-><init>()V

    return-void
.end method

.method private b()Lcom/google/gson/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gson/internal/d$1;->f:Lcom/google/gson/o;

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/d$1;->c:Lcom/google/gson/d;

    iget-object v1, p0, Lcom/google/gson/internal/d$1;->e:Lcom/google/gson/internal/d;

    iget-object v2, p0, Lcom/google/gson/internal/d$1;->d:Lcom/google/gson/b/a;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Lcom/google/gson/p;Lcom/google/gson/b/a;)Lcom/google/gson/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/d$1;->f:Lcom/google/gson/o;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/gson/internal/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/gson/stream/b;->f()Lcom/google/gson/stream/b;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$1;->b()Lcom/google/gson/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/o;->a(Lcom/google/gson/stream/b;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/gson/internal/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/gson/stream/a;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/d$1;->b()Lcom/google/gson/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/o;->b(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
