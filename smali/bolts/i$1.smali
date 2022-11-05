.class Lbolts/i$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/i;->a(Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/e;)Lbolts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/h",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/j;

.field final synthetic b:Lbolts/h;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/e;

.field final synthetic e:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/i;Lbolts/j;Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/e;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lbolts/i$1;->e:Lbolts/i;

    iput-object p2, p0, Lbolts/i$1;->a:Lbolts/j;

    iput-object p3, p0, Lbolts/i$1;->b:Lbolts/h;

    iput-object p4, p0, Lbolts/i$1;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/i$1;->d:Lbolts/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/i;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lbolts/i$1;->a:Lbolts/j;

    iget-object v1, p0, Lbolts/i$1;->b:Lbolts/h;

    iget-object v2, p0, Lbolts/i$1;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lbolts/i$1;->d:Lbolts/e;

    invoke-static {v0, v1, p1, v2, v3}, Lbolts/i;->a(Lbolts/j;Lbolts/h;Lbolts/i;Ljava/util/concurrent/Executor;Lbolts/e;)V

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(Lbolts/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lbolts/i$1;->a(Lbolts/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
