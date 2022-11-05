.class Lio/realm/a/a$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a;->a(Lio/realm/l;Lio/realm/t;)La/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/p;

.field final synthetic b:Lio/realm/t;

.field final synthetic c:Lio/realm/a/a;


# direct methods
.method constructor <init>(Lio/realm/a/a;Lio/realm/p;Lio/realm/t;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lio/realm/a/a$2;->c:Lio/realm/a/a;

    iput-object p2, p0, Lio/realm/a/a$2;->a:Lio/realm/p;

    iput-object p3, p0, Lio/realm/a/a$2;->b:Lio/realm/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
