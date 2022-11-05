.class final Lio/realm/b$c;
.super Ljava/lang/ThreadLocal;
.source "BaseRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lio/realm/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lio/realm/b$b;
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lio/realm/b$b;

    invoke-direct {v0}, Lio/realm/b$b;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lio/realm/b$c;->a()Lio/realm/b$b;

    move-result-object v0

    return-object v0
.end method
