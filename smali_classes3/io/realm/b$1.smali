.class Lio/realm/b$1;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/internal/SharedRealm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/b;-><init>(Lio/realm/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/b;


# direct methods
.method constructor <init>(Lio/realm/b;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lio/realm/b$1;->a:Lio/realm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/realm/b$1;->a:Lio/realm/b;

    check-cast v0, Lio/realm/l;

    invoke-static {v0}, Lio/realm/n;->a(Lio/realm/l;)V

    .line 86
    return-void
.end method
