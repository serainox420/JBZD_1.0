.class Lio/realm/a/a$4;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lio/realm/a/a$a",
        "<",
        "Lio/realm/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/a/a;


# direct methods
.method constructor <init>(Lio/realm/a/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/realm/a/a$4;->a:Lio/realm/a/a;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lio/realm/a/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/a/a$a",
            "<",
            "Lio/realm/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lio/realm/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/a/a$a;-><init>(Lio/realm/a/a$1;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lio/realm/a/a$4;->a()Lio/realm/a/a$a;

    move-result-object v0

    return-object v0
.end method
