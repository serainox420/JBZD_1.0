.class Lio/realm/a/a$3;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a;->a(Lio/realm/d;Lio/realm/e;)La/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lio/realm/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/p;

.field final synthetic b:Lio/realm/e;

.field final synthetic c:Lio/realm/a/a;


# direct methods
.method constructor <init>(Lio/realm/a/a;Lio/realm/p;Lio/realm/e;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lio/realm/a/a$3;->c:Lio/realm/a/a;

    iput-object p2, p0, Lio/realm/a/a$3;->a:Lio/realm/p;

    iput-object p3, p0, Lio/realm/a/a$3;->b:Lio/realm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
